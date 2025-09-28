//===========================================================
// Testbench for XorShift32 PRNG
//===========================================================

`timescale 1ns/1ps

module xorshift32_rng_tb;
    // Clock and reset
    reg         clk;
    reg         aresetn;
    reg         prng_reset;
    reg         enable;
    
    // Seed control
    reg         update_seed;
    reg  [31:0] new_seed;
    
    // Range control
    reg         update_range;
    reg  [31:0] new_low;
    reg  [31:0] new_high;
    
    // Outputs
    wire        valid;
    wire [31:0] random_raw;
    wire [31:0] random_in_range;
    
    // Test parameters
    parameter CLK_PERIOD = 10; // 10ns = 100MHz
    parameter NUM_TESTS = 10;
    
    // Instantiate DUT
    xorshift32_rng #(
        .DEFAULT_SEED(32'h24635342),
        .DEFAULT_LOW(32'd0),
        .DEFAULT_HIGH(32'd100)
    ) dut (
        .clk(clk),
        .aresetn(aresetn),
        .prng_reset(prng_reset),
        .enable(enable),
        .update_seed(update_seed),
        .new_seed(new_seed),
        .update_range(update_range),
        .new_low(new_low),
        .new_high(new_high),
        .random_raw(random_raw),
        .random_in_range(random_in_range),
        .valid(valid)
    );
    
    // Clock generation
    always #(CLK_PERIOD/2) clk = ~clk;
    
    // Test sequence
    initial begin
        // Initialize signals
        initialize();
        
        // Test 1: Basic functionality with default parameters
        $display("=== Test 1: Basic functionality ===");
        test_basic_functionality();
        
        // Test 2: Seed update
        $display("\n=== Test 2: Seed update ===");
        test_seed_update();
        
        // Test 3: Range update
        $display("\n=== Test 3: Range update ===");
        test_range_update();
        
        // Test 4: Edge cases
        $display("\n=== Test 4: Edge cases ===");
        test_edge_cases();
        
        // Test 5: Reset behavior
        $display("\n=== Test 5: Reset behavior ===");
        test_reset_behavior();
        
        $display("\n=== All tests completed successfully! ===");
        #100 $finish;
    end
    
    // Initialize all signals
    task initialize;
        begin
            clk = 0;
            aresetn = 1;
            prng_reset = 1;
            enable = 0;
            update_seed = 0;
            new_seed = 0;
            update_range = 0;
            new_low = 0;
            new_high = 0;
            #(CLK_PERIOD*2);
            prng_reset = 0;
            #(CLK_PERIOD);
        end
    endtask
    
    // Test 1: Basic functionality with default parameters
    task test_basic_functionality;
        integer i;
        reg [31:0] prev_raw;
        begin
            $display("Generating %0d random numbers with default parameters:", NUM_TESTS);
            
            for (i = 0; i < NUM_TESTS; i = i + 1) begin
                enable = 1;
                @(posedge clk);  // Wait for clock edge
                enable = 0;
                
                // Wait for valid signal before reading
                wait(valid === 1'b1);
                #1;  // Small delay for stability
                
                // Check that numbers are within range [0, 100]
                if (random_in_range >= 100) begin
                    $display("ERROR: random_in_range = %0d is out of range [0, 100]", random_in_range);
                    $finish;
                end
                
                // Check that raw numbers change
                if (i > 0 && random_raw == prev_raw) begin
                    $display("ERROR: Random number didn't change: %h", random_raw);
                    $finish;
                end
                
                $display("Cycle %0d: raw = %h, in_range = %0d, valid = %b", i, random_raw, random_in_range, valid);
                prev_raw = random_raw;
                
                @(posedge clk);  // Wait for next cycle
            end
            
            $display("Basic functionality test PASSED");
        end
    endtask
    
    // Test 2: Seed update functionality
    task test_seed_update;
        reg [31:0] first_sequence [0:4];
        reg [31:0] second_sequence [0:4];
        integer i;
        begin
            // Generate first sequence with default seed
            $display("First sequence with default seed:");
            for (i = 0; i < 5; i = i + 1) begin
                enable = 1;
                @(posedge clk);
                enable = 0;
                
                wait(valid === 1'b1);
                #1;
                first_sequence[i] = random_raw;
                $display("  Cycle %0d: %h, valid = %b", i, random_raw, valid);
                
                @(posedge clk);
            end
            
            // Update seed
            $display("Updating seed to 32'hDEADBEEF");
            update_seed = 1;
            new_seed = 32'hDEADBEEF;
            @(posedge clk);
            update_seed = 0;
            @(posedge clk);
            
            // Generate second sequence with new seed
            $display("Second sequence with new seed:");
            for (i = 0; i < 5; i = i + 1) begin
                enable = 1;
                @(posedge clk);
                enable = 0;
                
                wait(valid === 1'b1);
                #1;
                second_sequence[i] = random_raw;
                $display("  Cycle %0d: %h, valid = %b", i, random_raw, valid);
                
                @(posedge clk);
            end
            
            // Verify sequences are different
            for (i = 0; i < 5; i = i + 1) begin
                if (first_sequence[i] == second_sequence[i]) begin
                    $display("ERROR: Sequences are identical at position %0d", i);
                    $finish;
                end
            end
            
            // Test seed = 0 (should use DEFAULT_SEED)
            $display("Testing seed = 0 (should use DEFAULT_SEED)");
            update_seed = 1;
            new_seed = 32'd0;
            @(posedge clk);
            update_seed = 0;
            @(posedge clk);
            
            enable = 1;
            @(posedge clk);
            enable = 0;
            
            wait(valid === 1'b1);
            #1;
            $display("After seed=0 update: %h, valid = %b", random_raw, valid);
            
            $display("Seed update test PASSED");
        end
    endtask
    
    // Test 3: Range update functionality
    task test_range_update;
        integer i;
        begin
            // Test 1: Normal range update
            $display("Testing range update to [50, 150]:");
            update_range = 1;
            new_low = 32'd50;
            new_high = 32'd150;
            @(posedge clk);
            update_range = 0;
            @(posedge clk);
            
            for (i = 0; i < 10; i = i + 1) begin
                enable = 1;
                @(posedge clk);
                enable = 0;
                
                wait(valid === 1'b1);
                #1;
                
                if (random_in_range < 50 || random_in_range >= 150) begin
                    $display("ERROR: random_in_range = %0d is out of range [50, 150]", random_in_range);
                    $finish;
                end
                
                $display("  Cycle %0d: in_range = %0d, valid = %b", i, random_in_range, valid);
                
                @(posedge clk);
            end
            
            // Test 2: Invalid range (high <= low)
            $display("Testing invalid range [100, 50] (should become [100, 101]):");
            update_range = 1;
            new_low = 32'd100;
            new_high = 32'd50; // Invalid: high <= low
            @(posedge clk);
            update_range = 0;
            @(posedge clk);
            
            enable = 1;
            @(posedge clk);
            enable = 0;
            
            wait(valid === 1'b1);
            #1;
            
            if (random_in_range != 100) begin
                $display("ERROR: Expected 100, got %0d", random_in_range);
                $finish;
            end
            
            $display("Range update test PASSED");
        end
    endtask
    
    // Test 4: Edge cases
    task test_edge_cases;
        begin
            // Test single value range
            $display("Testing single value range [42, 43]:");
            update_range = 1;
            new_low = 32'd42;
            new_high = 32'd43;
            @(posedge clk);
            update_range = 0;
            @(posedge clk);
            
            enable = 1;
            @(posedge clk);
            enable = 0;
            
            wait(valid === 1'b1);
            #1;
            
            if (random_in_range != 42) begin
                $display("ERROR: Expected 42, got %0d", random_in_range);
                $finish;
            end
            $display("  Single value test: %0d, valid = %b (PASS)", random_in_range, valid);
            
            // Test large range
            $display("Testing large range [0, 1000000]:");
            update_range = 1;
            new_low = 32'd0;
            new_high = 32'd1000000;
            @(posedge clk);
            update_range = 0;
            @(posedge clk);
            
            enable = 1;
            @(posedge clk);
            enable = 0;
            
            wait(valid === 1'b1);
            #1;
            
            if (random_in_range >= 1000000) begin
                $display("ERROR: Value %0d out of range [0, 1000000]", random_in_range);
                $finish;
            end
            $display("  Large range test: %0d, valid = %b (PASS)", random_in_range, valid);
            
            $display("Edge cases test PASSED");
        end
    endtask
    
    // Test 5: Reset behavior
    task test_reset_behavior;
        reg [31:0] pre_reset_raw, pre_reset_range;
        begin
            // Generate a few numbers
            enable = 1;
            @(posedge clk);
            enable = 0;
            wait(valid === 1'b1);
            #1;
            
            pre_reset_raw = random_raw;
            pre_reset_range = random_in_range;
            $display("Before reset: raw = %h, in_range = %0d", pre_reset_raw, pre_reset_range);
            
            // Apply reset
            $display("Applying reset...");
            prng_reset = 1;
            @(posedge clk);
            prng_reset = 0;
            @(posedge clk);
            
            // Check outputs are reset to 0 and valid is 0
            if (random_raw != 0 || random_in_range != 0 || valid != 0) begin
                $display("ERROR: Outputs not reset properly");
                $finish;
            end
            
            // Generate new number and verify it starts from default seed
            enable = 1;
            @(posedge clk);
            enable = 0;
            
            wait(valid === 1'b1);
            #1;
            
            $display("After reset + 1 cycle: raw = %h, in_range = %0d, valid = %b", random_raw, random_in_range, valid);
            
            // Should be different from pre-reset values
            if (random_raw == pre_reset_raw) begin
                $display("ERROR: Random sequence not reset properly");
                $finish;
            end
            
            $display("Reset behavior test PASSED");
        end
    endtask
    
    // Monitor for debugging
    initial begin
        $monitor("Time %0t: enable=%b, raw=%h, in_range=%0d, valid=%b", 
                 $time, enable, random_raw, random_in_range, valid);
    end
    
endmodule
