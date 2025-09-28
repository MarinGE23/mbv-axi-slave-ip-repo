//===========================================================
// XorShift32 PRNG
//===========================================================
// - Generates 32-bit pseudo-random numbers using XorShift32
// - Supports seed update
// - Supports range update [LOW, HIGH]
// - Outputs 'valid' signal to indicate fresh random numbers
//===========================================================

module xorshift32_rng #(
    parameter [31:0] DEFAULT_SEED = 32'h24635342,
    parameter [31:0] DEFAULT_LOW  = 32'd0,
    parameter [31:0] DEFAULT_HIGH = 32'd100
)(
    input  wire        clk,
    input  wire        aresetn,       // Asynchronous reset, active low
    input  wire        prng_reset,    // Specific reset of the prng
    input  wire        enable,        // Generate next random value

    // Seed control
    input  wire        update_seed,   // Flag to update seed
    input  wire [31:0] new_seed,      // New seed value (0 is not recommended)

    // Range control
    input  wire        update_range,  // Flag to update range
    input  wire [31:0] new_low,       // New lower bound (inclusive)
    input  wire [31:0] new_high,      // New upper bound (exclusive)
    
    output reg         valid,             // 1 when outputs contain fresh random numbers
    output reg  [31:0] random_raw,        // Raw random number
    output reg  [31:0] random_in_range    // Random number mapped to [low_reg, high_reg]
);

    // State and configuration
    reg [31:0] state;
    reg [31:0] low_reg, high_reg;

    // --- Combinational XorShift32 (next_state) ---
    wire [31:0] x1 = state ^ (state << 13);
    wire [31:0] x2 = x1    ^ (x1    >> 17);
    wire [31:0] x3 = x2    ^ (x2    << 5 );
    wire [31:0] next_state = (x3 == 32'd0) ? DEFAULT_SEED : x3; // never 0

    // --- Range mapping without division ---
    wire [31:0] span = high_reg - low_reg;           // assumes high_reg >= low_reg
    wire [63:0] prod = next_state * span;            // 32x32 mult -> 64
    wire [31:0] scaled = (span == 32'd0) ? low_reg   // avoid division by zero
                                         : (low_reg + prod[63:32]); // "multiply-high"
    
    // Combined logical reset: global reset OR specific reset
    wire combined_reset;
    assign combined_reset = !aresetn || prng_reset;
    always @(posedge clk or posedge combined_reset) begin
        if (combined_reset) begin
            state            <= DEFAULT_SEED;
            low_reg          <= DEFAULT_LOW;
            high_reg         <= DEFAULT_HIGH;
            random_raw       <= 32'd0;
            random_in_range  <= 32'd0;
            valid            <= 1'b0;
        end else begin
            // Default: outputs are not valid
            valid <= 1'b0;
            
            // Configuration updates (priority over enable)
            if (update_range) begin
                if (new_high <= new_low) begin
                    low_reg  <= new_low;
                    high_reg <= new_low + 1;  // force span >= 1
                end else begin
                    low_reg  <= new_low;
                    high_reg <= new_high;
                end
            end

            if (update_seed) begin
                state <= (new_seed == 32'd0) ? DEFAULT_SEED : new_seed;
            end else if (enable) begin
                state <= next_state;
            end

            // Output updates when advancing
            if (enable) begin
                random_raw      <= next_state;
                random_in_range <= scaled;
                valid           <= 1'b1;  // Signal that outputs contain fresh numbers
            end
        end
    end
endmodule
