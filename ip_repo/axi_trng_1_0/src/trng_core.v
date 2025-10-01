// -----------------------------------------------------------------------------
// TRNG Core
// - Bank of ring oscillators (ROs)
// - XOR mix + synchronized sampling (with programmable divider)
// - Optional Von Neumann debias
// - Health tests: Repetition Count Test (RCT) and Adaptive Proportion Test (APT)
// - Bit accumulator to 32-bit word + data_valid strobe
//
// WARNING: This is a *reference* design for educational purposes.
// For production/cryptographic use, you must verify entropy, tune tests,
// and validate per NIST SP 800-90B / AIS-31. No guarantees provided.
// -----------------------------------------------------------------------------
module trng_core #(
    parameter integer NUM_RO           = 8,      // number of ring oscillators
    parameter integer RO_STAGES        = 5,      // odd
    parameter integer SAMPLE_DIV_WIDTH = 16,     // sampler divider width
    // Health tests (defaults are conservative and easy to meet)
    parameter integer RCT_MAX_RUN      = 64,     // max allowed run length
    parameter integer APT_WIN_SIZE     = 512,    // window size
    parameter integer APT_LOW_THRESH   = 192,    // lower bound of ones in window
    parameter integer APT_HIGH_THRESH  = 320,    // upper bound of ones in window
    // Range parameters
    parameter [31:0] DEFAULT_LOW       = 32'd0,
    parameter [31:0] DEFAULT_HIGH      = 32'd100
)(
    input  wire clk,          
    input  wire aresetn,      // active-low reset
    input  wire enable,       // gate the TRNG
    input  wire clr_alarms,   // clear health alarms
    input  wire vn_enable,    // enable Von Neumann (1) or bypass (0)
    input  wire [SAMPLE_DIV_WIDTH-1:0] sample_div, // sampling divider

    // Range control
    input  wire        update_range,  // Flag to update range
    input  wire [31:0] new_low,       // New lower bound (inclusive)
    input  wire [31:0] new_high,      // New upper bound (exclusive)
    
    output reg         valid,             // 1 when outputs contain fresh random numbers
    output reg  [31:0] random_raw,        // Raw random number
    output reg  [31:0] random_in_range,   // Random number mapped to [low_reg, high_reg]
    
    output wire        busy,        // internal pipeline active
    output reg         health_ok,   // 1 when no alarms active
    output reg         rct_fail,    // repetition count test alarm
    output reg         apt_fail     // adaptive proportion test alarm
);
    // -------------------------------
    // Ring oscillator bank + XOR mix
    // -------------------------------
    wire [NUM_RO-1:0] ro_bits;
    genvar i;
    generate
        for (i = 0; i < NUM_RO; i = i + 1) begin : ros
            ring_oscillator #(
                .STAGES(RO_STAGES)
            ) u_ro (
                .enable (enable),
                .ro_out (ro_bits[i])
            );
        end
    endgenerate

    wire ro_mix = ^ro_bits; // XOR reduce

    // ----------------------------------------
    // Sample divider to decorrelate/fold jitter
    // ----------------------------------------
    reg [SAMPLE_DIV_WIDTH-1:0] divcnt;
    reg                        sample_stb;

    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            divcnt     <= {SAMPLE_DIV_WIDTH{1'b0}};
            sample_stb <= 1'b0;
        end else if (!enable) begin
            divcnt     <= {SAMPLE_DIV_WIDTH{1'b0}};
            sample_stb <= 1'b0;
        end else begin
            if (divcnt == sample_div) begin
                divcnt     <= {SAMPLE_DIV_WIDTH{1'b0}};
                sample_stb <= 1'b1;
            end else begin
                divcnt     <= divcnt + 1'b1;
                sample_stb <= 1'b0;
            end
        end
    end

    // ------------------------------------------------
    // Synchronize RO domain to clk & produce raw bits
    // ------------------------------------------------
    reg ro_sync_0, ro_sync_1;
    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            ro_sync_0 <= 1'b0;
            ro_sync_1 <= 1'b0;
        end else begin
            ro_sync_0 <= ro_mix;
            ro_sync_1 <= ro_sync_0;
        end
    end

    wire raw_bit   = ro_sync_1;
    wire raw_valid = sample_stb;

    // -----------------------
    // Optional Von Neumann
    // -----------------------
    wire vn_bit, vn_valid;
    von_neumann u_vn (
        .clk(clk),
        .aresetn(aresetn & enable),
        .in_bit(raw_bit),
        .in_valid(raw_valid),
        .out_bit(vn_bit),
        .out_valid(vn_valid)
    );

    wire stream_bit   = vn_enable ? vn_bit   : raw_bit;
    wire stream_valid = vn_enable ? vn_valid : raw_valid;

    // ---------------------------
    // Health tests: RCT and APT
    // ---------------------------
    reg last_bit;
    reg [15:0] run_len;

    reg [15:0] apt_count;  // number of samples consumed in current window
    reg [15:0] apt_ones;   // ones counted in current window

    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            last_bit  <= 1'b0;
            run_len   <= 16'd0;
            apt_count <= 16'd0;
            apt_ones  <= 16'd0;
            rct_fail  <= 1'b0;
            apt_fail  <= 1'b0;
        end else begin
            if (clr_alarms) begin
                rct_fail <= 1'b0;
                apt_fail <= 1'b0;
            end
            if (enable && stream_valid) begin
                // RCT (repetition count test)
                if (stream_bit == last_bit) begin
                    if (run_len != 16'hFFFF) run_len <= run_len + 1'b1;
                else
                    run_len <= 16'd1;
                end else begin
                    run_len  <= 16'd1;
                    last_bit <= stream_bit;
                end
                if (run_len > RCT_MAX_RUN) rct_fail <= 1'b1;

                // APT (non-overlapping window)
                apt_count <= apt_count + 1'b1;
                if (stream_bit) apt_ones <= apt_ones + 1'b1;
                if (apt_count == (APT_WIN_SIZE - 1)) begin
                    // End of window
                    if ((apt_ones < APT_LOW_THRESH) || (apt_ones > APT_HIGH_THRESH))
                        apt_fail <= 1'b1;
                    apt_count <= 16'd0;
                    apt_ones  <= 16'd0;
                end
            end
        end
    end

    // health_ok
    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            health_ok <= 1'b1;
        end else begin
            health_ok <= !(rct_fail | apt_fail);
        end
    end

    // ---------------------------
    // Accumulate to 32-bit words
    // ---------------------------
    reg [5:0]  acc_cnt;
    reg [31:0] acc_reg;
    
    // Range control registers
    reg [31:0] low_reg, high_reg;

    assign busy = enable;

    // --- Range mapping without division ---
    wire [31:0] span = high_reg - low_reg;           // assumes high_reg >= low_reg
    wire [63:0] prod = acc_reg * span;               // 32x32 mult -> 64
    wire [31:0] scaled = (span == 32'd0) ? low_reg   // avoid division by zero
                                         : (low_reg + prod[63:32]); // "multiply-high"

    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            acc_cnt          <= 6'd0;
            acc_reg          <= 32'd0;
            random_raw       <= 32'd0;
            random_in_range  <= 32'd0;
            valid            <= 1'b0;
            low_reg          <= DEFAULT_LOW;
            high_reg         <= DEFAULT_HIGH;
        end else begin
            valid <= 1'b0;
            
            // Range configuration update
            if (update_range) begin
                if (new_high <= new_low) begin
                    low_reg  <= new_low;
                    high_reg <= new_low + 1;  // force span >= 1
                end else begin
                    low_reg  <= new_low;
                    high_reg <= new_high;
                end
            end
            
            if (enable && stream_valid && health_ok) begin
                acc_reg <= {acc_reg[30:0], stream_bit};
                acc_cnt <= acc_cnt + 1'b1;
                if (acc_cnt == 6'd31) begin
                    random_raw      <= {acc_reg[30:0], stream_bit};
                    random_in_range <= scaled;
                    valid           <= 1'b1;
                    acc_cnt         <= 6'd0;
                end
            end
            if (!enable) begin
                acc_cnt <= 6'd0;
            end
        end
    end

endmodule
