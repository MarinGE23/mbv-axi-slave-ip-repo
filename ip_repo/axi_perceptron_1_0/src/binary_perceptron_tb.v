`timescale 1ns/1ps

module binary_perceptron_tb;

    // ---------------------------------------------------------------------------
    // Parameters and constants
    // ---------------------------------------------------------------------------
    localparam integer W = 8;
    // targets = {t11, t10, t01, t00}
    localparam [3:0] T_AND  = 4'b1000;
    localparam [3:0] T_OR   = 4'b1110;
    localparam [3:0] T_NAND = 4'b0111;
    localparam [3:0] T_NOR  = 4'b0001;
    localparam [3:0] T_XOR  = 4'b0110;

    localparam signed [W-1:0] ETA_1_0 = 8'sd16;   // 1.0 in Q4.4
    localparam [15:0] MAX_EPOCHS_DFLT = 16;

    // ---------------------------------------------------------------------------
    // TB <-> DUT signals
    // ---------------------------------------------------------------------------
    reg                    clk   = 1'b0;
    reg                    aresetn = 1'b0;

    // Predict
    reg                    x1 = 1'b0;
    reg                    x2 = 1'b0;
    wire                   y;
    wire signed [W+1:0]    sum_dbg;

    // Fit control
    reg                    train_start = 1'b0;
    reg       [3:0]        targets_tb  = 4'b0000;
    reg       [15:0]       max_epochs  = MAX_EPOCHS_DFLT;
    reg signed [W-1:0]     eta         = ETA_1_0;

    // Init/weights I/O
    reg                    load_init = 1'b0;
    reg signed [W-1:0]     w1_init   = 0;
    reg signed [W-1:0]     w2_init   = 0;
    reg signed [W-1:0]     b_init    = 0;
    wire signed [W-1:0]    w1_o;
    wire signed [W-1:0]    w2_o;
    wire signed [W-1:0]    b_o;

    // Status
    wire                   busy;
    wire                   done;
    wire                   converged;
    wire [15:0]            epoch_count;

    integer                errs = 0;

    // ---------------------------------------------------------------------------
    // DUT
    // ---------------------------------------------------------------------------
    binary_perceptron #(
        .W(W)
    ) dut (
        .clk(clk),
        .aresetn(aresetn),
        .x1(x1),
        .x2(x2),
        .y(y),
        .sum_dbg(sum_dbg),
        .train_start(train_start),
        .targets(targets_tb),
        .max_epochs(max_epochs),
        .eta(eta),
        .load_init(load_init),
        .w1_init(w1_init),
        .w2_init(w2_init),
        .b_init(b_init),
        .w1_o(w1_o),
        .w2_o(w2_o),
        .b_o(b_o),
        .busy(busy),
        .done(done),
        .converged(converged),
        .epoch_count(epoch_count)
    );

    // ---------------------------------------------------------------------------
    // Clock and reset
    // ---------------------------------------------------------------------------
    always #5 clk = ~clk; // 100 MHz (10 ns period)

    task automatic do_reset;
        begin
            aresetn = 1'b0;
            x1 = 0;
            x2 = 0;
            train_start = 0;
            load_init   = 0;
            #(50);
            aresetn = 1'b1;
            @(posedge clk);
        end
    endtask

    // ---------------------------------------------------------------------------
    // Utilities
    // ---------------------------------------------------------------------------
    // Wait for 'done' with timeout in clock cycles
    task automatic wait_done_with_timeout(input integer max_cycles, input [127:0] tag);
        integer c;
        begin
            c = 0;
            while (!done && c < max_cycles)
            begin
                @(posedge clk);
                c = c + 1;
            end
            if (!done)
            begin
                $display("%0t [TIMEOUT] Training did not finish: %0s", $time, tag);
                errs = errs + 1;
            end
        end
    endtask

    // Start training from given initial weights
    task automatic start_train(input [3:0] T, input signed [W-1:0] wi1, input signed [W-1:0] wi2, input signed [W-1:0] bi);
        begin
            // Load initial weights (1 cycle)
            w1_init = wi1;
            w2_init = wi2;
            b_init = bi;
            load_init = 1'b1;
            @(posedge clk);
            load_init = 1'b0;

            // Configure targets, eta and epochs
            targets_tb = T;
            eta        = ETA_1_0;
            max_epochs = MAX_EPOCHS_DFLT;

            // Start pulse (1 cycle)
            train_start = 1'b1;
            @(posedge clk);
            train_start = 1'b0;
        end
    endtask

    // Returns expected bit for (x1,x2) with encoding {t11,t10,t01,t00}
    function [0:0] expected_bit;
        input [3:0] T;
        input [0:0] ix1;
        input [0:0] ix2;
        begin
            case ({ix1,ix2})
                2'b00:
                    expected_bit = T[0];
                2'b01:
                    expected_bit = T[1];
                2'b10:
                    expected_bit = T[2];
                2'b11:
                    expected_bit = T[3];
                default:
                    expected_bit = 1'b0;
            endcase
        end
    endfunction

    // Check a specific combination after training
    task automatic check_combo(input [3:0] T, input integer ix1, input integer ix2, input [127:0] tag);
        reg exp;
        begin
            x1 = ix1[0];
            x2 = ix2[0];
            @(posedge clk);
            #1; // 1 cycle for register and y
            exp = expected_bit(T, x1, x2);
            if (y !== exp)
            begin
                $display("%0t [%0s] MISMATCH x1=%0d x2=%0d  exp=%0d got=%0d  (w1=%0d w2=%0d b=%0d sum=%0d)",
                         $time, tag, x1, x2, exp, y, $signed(w1_o), $signed(w2_o), $signed(b_o), $signed(sum_dbg));
                errs = errs + 1;
            end
            else
            begin
                $display("%0t [%0s] OK      x1=%0d x2=%0d  y=%0d (sum=%0d)",
                         $time, tag, x1, x2, y, $signed(sum_dbg));
            end
        end
    endtask

    // Train and verify a gate
    task automatic train_and_verify(input [3:0] T, input [127:0] tag, input integer expect_converged);
        begin
            // Re-initialize weights to 0 for a clean test
            start_train(T, 8'sd0, 8'sd0, 8'sd0);
            wait_done_with_timeout(2000, tag);
            $display("%0t [%0s] done=%0d converged=%0d epochs=%0d  w={%0d,%0d} b=%0d",
                     $time, tag, done, converged, epoch_count, $signed(w1_o), $signed(w2_o), $signed(b_o));

            if (expect_converged && !converged)
            begin
                $display("[%0s] ERROR: expected convergence but it didn't occur.", tag);
                errs = errs + 1;
            end
            if (!expect_converged && converged)
            begin
                $display("[%0s] ERROR: did NOT expect convergence but it occurred.", tag);
                errs = errs + 1;
            end

            // Truth table verification (prediction)
            check_combo(T, 0,0, tag);
            check_combo(T, 0,1, tag);
            check_combo(T, 1,0, tag);
            check_combo(T, 1,1, tag);
            $display("");
        end
    endtask

    // ---------------------------------------------------------------------------
    // Main stimulus
    // ---------------------------------------------------------------------------
    initial
    begin
        do_reset();

        // Linearly separable cases (should converge)
        train_and_verify(T_AND , "AND" , 1);
        train_and_verify(T_OR  , "OR"  , 1);
        train_and_verify(T_NAND, "NAND", 1);
        train_and_verify(T_NOR , "NOR" , 1);

        // Non-linearly separable case (should NOT converge)
        train_and_verify(T_XOR , "XOR" , 0);

        // Summary
        if (errs == 0)
            $display("=== ALL TESTS PASSED ===");
        else
            $display("=== FAILURES: %0d ===", errs);

        #50;
        $finish;
    end

endmodule
