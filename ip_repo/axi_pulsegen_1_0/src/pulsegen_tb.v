`timescale 1ns/1ps

module pulsegen_tb;

    // Parameters
    localparam CLK_FREQ_HZ = 10_000_000;   // 10 MHz clock for simulation (period = 100 ns)
    localparam CLK_PERIOD  = 100;          // Clock period in ns

    // Testbench signals
    reg clk;
    reg aresetn;
    reg start;
    reg config_valid;
    reg [31:0] period_in;
    reg [31:0] width_in;
    wire pulse_out;

    // Instantiate the DUT (Device Under Test)
    pulsegen #(
        .CLK_FREQ_HZ(CLK_FREQ_HZ),
        .PERIOD_DEF (100),   // Reduced default values for fast simulation
        .WIDTH_DEF  (50)
    ) dut (
        .clk         (clk),
        .aresetn     (aresetn),
        .start       (start),
        .config_valid(config_valid),
        .period_in   (period_in),
        .width_in    (width_in),
        .pulse_out   (pulse_out)
    );

    // Clock generation: 10 MHz (100 ns period)
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    // Stimulus
    initial begin
        // Initialize signals
        aresetn      = 0;
        start        = 0;
        config_valid = 0;
        period_in    = 0;
        width_in     = 0;

        // Apply reset
        #(10*CLK_PERIOD);
        aresetn = 1;

        // Wait some cycles with defaults (PERIOD_DEF=100, WIDTH_DEF=50)
        #(50*CLK_PERIOD);

        // Enable pulse generation with default values
        start = 1;
        $display(">> Using default values: period=100 cycles, width=50 cycles");

        #(500*CLK_PERIOD);

        // Request new configuration (period=40, width=10)
        period_in    = 40;
        width_in     = 10;
        config_valid = 1;
        #(1*CLK_PERIOD);
        config_valid = 0;  // Deassert after one cycle
        $display(">> Loaded new configuration: period=40 cycles, width=10 cycles");

        #(500*CLK_PERIOD);

        // Disable output
        start = 0;
        $display(">> start=0, forcing output to 0");

        #(200*CLK_PERIOD);

        // Apply reset again to restore defaults
        aresetn = 0;
        #(10*CLK_PERIOD);
        aresetn = 1;
        start   = 1;
        $display(">> After reset: back to default values (period=100, width=50)");

        #(500*CLK_PERIOD);

        // Request another configuration (period=60, width=30)
        period_in    = 60;
        width_in     = 30;
        config_valid = 1;
        #(1*CLK_PERIOD);
        config_valid = 0;
        $display(">> Loaded new configuration: period=60 cycles, width=30 cycles");

        #(500*CLK_PERIOD);

        $stop;
    end

endmodule
