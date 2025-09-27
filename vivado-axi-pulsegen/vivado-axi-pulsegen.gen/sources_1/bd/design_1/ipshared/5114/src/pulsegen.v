module pulsegen #(
    parameter CLK_FREQ_HZ = 100_000_000,          // Clock frequency
    parameter PERIOD_DEF  = 100_000_000,          // Default: 1s
    parameter WIDTH_DEF   = 50_000_000            // Default: 0.5s
)(
    input  wire clk,          // Clock
    input  wire aresetn,      // Asynchronous reset, active low
    input  wire start,        // Enable signal
    input  wire config_valid, // Signal to load new configuration
    input  wire [31:0] period_in, // New period (in clk cycles)
    input  wire [31:0] width_in,  // New width  (in clk cycles)
    output reg  pulse_out     // Pulse output
);

    // Internal configuration registers
    reg [31:0] period_reg;
    reg [31:0] width_reg;

    // Counter
    reg [31:0] counter;

    // Reset and configuration logic
    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            period_reg <= PERIOD_DEF;
            width_reg  <= WIDTH_DEF;
            counter    <= 32'd0;
            pulse_out  <= 1'b0;
        end else begin
            // Update period and width only when config_valid is asserted
            if (config_valid) begin
                if (period_in != 0)
                    period_reg <= period_in;
                if (width_in != 0)
                    width_reg <= width_in;
            end

            if (start) begin
                // Pulse generation
                if (counter < period_reg - 1)
                    counter <= counter + 1'b1;
                else
                    counter <= 32'd0;

                if (counter < width_reg)
                    pulse_out <= 1'b1;
                else
                    pulse_out <= 1'b0;
            end else begin
                // start=0 forces output low
                counter   <= 32'd0;
                pulse_out <= 1'b0;
            end
        end
    end

endmodule
