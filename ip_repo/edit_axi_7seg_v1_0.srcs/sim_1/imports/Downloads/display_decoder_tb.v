`timescale 1ns / 1ps

module display_decoder_tb;

    // Inputs
    reg clk;
    reg aresetn;
    reg [3:0] an_in;
    reg [7:0] dig_0_in;
    reg [7:0] dig_1_in;
    reg [7:0] dig_2_in;
    reg [7:0] dig_3_in;
    
    // Outputs
    wire [3:0] an_out;
    wire [7:0] seg_out;
    
    // Instantiate the DUT (Device Under Test)
    display_decoder dut (
        .clk(clk),
        .aresetn(aresetn),
        .an_in(an_in),
        .dig_0_in(dig_0_in),
        .dig_1_in(dig_1_in),
        .dig_2_in(dig_2_in),
        .dig_3_in(dig_3_in),
        .an_out(an_out),
        .seg_out(seg_out)
    );
    
    // Clock generation
    always #5 clk = ~clk; // 100MHz clock (10ns period)
    
    initial begin
        // Initialize Inputs
        clk = 0;
        aresetn = 0;
        an_in = 4'b0000; // All anodes enabled initially
        dig_0_in = 8'd0;
        dig_1_in = 8'd1;
        dig_2_in = 8'd2;
        dig_3_in = 8'd3;
        
        // Wait 100 ns for global reset to finish
        #100;
        
        // Release reset
        aresetn = 1;
        
        // Test Case 1: Normal operation with digits 0-3
        $display("Test Case 1: Normal operation with digits 0,1,2,3");
        #1000;
        
        // Test Case 2: Change to digits 4-7
        $display("Test Case 2: Changing to digits 4,5,6,7");
        dig_0_in = 8'd4;
        dig_1_in = 8'd5;
        dig_2_in = 8'd6;
        dig_3_in = 8'd7;
        #1000;
        
        // Test Case 3: Test digits 8-9 and invalid inputs
        $display("Test Case 3: Testing digits 8,9 and invalid inputs");
        dig_0_in = 8'd8;
        dig_1_in = 8'd9;
        dig_2_in = 8'd10; // Invalid input
        dig_3_in = 8'd15; // Invalid input
        #1000;
        
        // Test Case 4: Reset test
        $display("Test Case 4: Testing reset functionality");
        aresetn = 0;
        #100;
        aresetn = 1;
        #500;
        
        // Test Case 5: All digits same (testing multiplexing)
        $display("Test Case 5: All digits set to 5");
        dig_0_in = 8'd5;
        dig_1_in = 8'd5;
        dig_2_in = 8'd5;
        dig_3_in = 8'd5;
        #1000;
        
        // Complete simulation
        $display("Simulation completed successfully");
        $finish;
    end
    
    // Monitor to display signals during simulation
    initial begin
        $monitor("Time = %0t ns | an_out = %b | seg_out = %b | cnt100K[10:9] = %b", 
                 $time, an_out, seg_out, dut.cnt100K[10:9]);
    end

endmodule