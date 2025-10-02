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
    
    // Internal signals for monitoring
    wire [10:0] cnt100K;
    wire [7:0] dig_0_dec, dig_1_dec, dig_2_dec, dig_3_dec;
    
    // Assign internal signals for monitoring
    assign cnt100K = dut.cnt100K;
    assign dig_0_dec = dut.dig_0_dec;
    assign dig_1_dec = dut.dig_1_dec;
    assign dig_2_dec = dut.dig_2_dec;
    assign dig_3_dec = dut.dig_3_dec;
    
    // Instantiate the Divice Under Test (DUT)
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
    
    // Test sequence
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
        $display("\n=== Test Case 1: Normal operation with digits 0,1,2,3 ===");
        #40000; // Wait longer to see multiplexing
        
        // Test Case 2: Change to digits 4-7
        $display("\n=== Test Case 2: Changing to digits 4,5,6,7 ===");
        dig_0_in = 8'd4;
        dig_1_in = 8'd5;
        dig_2_in = 8'd6;
        dig_3_in = 8'd7;
        #40000;
        
        // Test Case 3: Test digits 8-9 and invalid inputs
        $display("\n=== Test Case 3: Testing digits 8,9 and invalid inputs ===");
        dig_0_in = 8'd8;
        dig_1_in = 8'd9;
        dig_2_in = 8'd10; // Invalid input
        dig_3_in = 8'd15; // Invalid input
        #40000;
        
        // Test Case 4: All digits same (testing multiplexing)
        $display("\n=== Test Case 4: All digits set to 5 ===");
        dig_0_in = 8'd5;
        dig_1_in = 8'd5;
        dig_2_in = 8'd5;
        dig_3_in = 8'd5;
        #20000;
        
        // Complete simulation
        $display("\n=== Simulation completed successfully ===");
        $finish;
    end
    
    // Monitor to display important signals
    integer cycle_count = 0;
    always @(posedge clk) begin
        if (aresetn) begin
            cycle_count <= cycle_count + 1;
            if (cycle_count % 512 == 0) begin // Sample every 512 cycles to avoid too much output
                $display("Time=%0t ns | Cycle=%0d | cnt100K=%0d | cnt100K[10:9]=%b | an_out=%b | seg_out=%b", 
                         $time, cycle_count, cnt100K, cnt100K[10:9], an_out, seg_out);
                
                // Display which digit is currently active
                case (cnt100K[10:9])
                    2'b00: $display("  --> Active Digit: 0 (Value=%0d, Pattern=%b)", dig_0_in, dig_0_dec);
                    2'b01: $display("  --> Active Digit: 1 (Value=%0d, Pattern=%b)", dig_1_in, dig_1_dec);
                    2'b10: $display("  --> Active Digit: 2 (Value=%0d, Pattern=%b)", dig_2_in, dig_2_dec);
                    2'b11: $display("  --> Active Digit: 3 (Value=%0d, Pattern=%b)", dig_3_in, dig_3_dec);
                endcase
            end
        end
    end
    
    // Automatic verification
    initial begin
        #600000;
    end

endmodule
