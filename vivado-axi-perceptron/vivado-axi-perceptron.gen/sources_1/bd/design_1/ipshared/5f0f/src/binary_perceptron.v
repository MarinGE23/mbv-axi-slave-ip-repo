module binary_perceptron #(
        parameter integer W = 8,          // Q4.4 signed
        parameter TIE_IS_ONE = 1'b0       // 0: y=1 if s>0 ; 1: y=1 if s>=0
    )(
        input  wire                     clk,
        input  wire                     aresetn,

        // PREDICT
        input  wire                     x1,
        input  wire                     x2,
        output reg                      y,
        output reg   signed [W+1:0]     sum_dbg,

        // FIT control
        input  wire                     train_start,
        input  wire [3:0]               targets,      // {t11,t10,t01,t00}
        input  wire [15:0]              max_epochs,
        input  wire signed [W-1:0]      eta,          // Q4.4

        // Init / readback
        input  wire                     load_init,
        input  wire signed [W-1:0]      w1_init,
        input  wire signed [W-1:0]      w2_init,
        input  wire signed [W-1:0]      b_init,
        output reg  signed [W-1:0]      w1_o,
        output reg  signed [W-1:0]      w2_o,
        output reg  signed [W-1:0]      b_o,

        // Status
        output reg                      busy,
        output reg                      done,         // 1-cycle pulse when finished
        output reg                      converged,
        output reg        [15:0]        epoch_count
    );

    // Weight bank
    reg signed [W-1:0] w1, w2, b;

    // Parameterizable step function
    function [0:0] step_fn;
        input signed [W+1:0] s;
        begin
            step_fn = (TIE_IS_ONE) ? (s >= 0) : (s > 0);
        end
    endfunction

    // Prediction (external inputs)
    wire signed [W:0] t1_pred = x1 ? {{1{w1[W-1]}}, w1} : 0;
    wire signed [W:0] t2_pred = x2 ? {{1{w2[W-1]}}, w2} : 0;
    wire signed [W+1:0] s_pred = $signed({{2{t1_pred[W]}}, t1_pred}) +
         $signed({{2{t2_pred[W]}}, t2_pred}) +
         $signed({{2{b[W-1]}}, b});

    // Training FSM
    localparam [2:0] S_IDLE=0, S_EPOCH=1, S_SAMPLE=2, S_UPDATE=3, S_CHECK=4, S_DONE=5;
    reg [2:0] st;

    reg [1:0]  pat_idx;
    reg        any_error_in_ep;

    // Current pattern signals (combinational)
    reg        sx1, sx2;
    reg        t_cur;
    always @(*)
    begin
        case (pat_idx)
            2'd0:
            begin
                sx1=1'b0;
                sx2=1'b0;
                t_cur=targets[0];
            end // 00
            2'd1:
            begin
                sx1=1'b0;
                sx2=1'b1;
                t_cur=targets[1];
            end // 01
            2'd2:
            begin
                sx1=1'b1;
                sx2=1'b0;
                t_cur=targets[2];
            end // 10
            default:
            begin
                sx1=1'b1;
                sx2=1'b1;
                t_cur=targets[3];
            end // 11
        endcase
    end

    // Sum for training (combinational, using current weights)
    wire signed [W+1:0] s_train =
         (sx1 ? $signed({{2{w1[W-1]}}, w1}) : 0)
         + (sx2 ? $signed({{2{w2[W-1]}}, w2}) : 0)
         +  $signed({{2{b[W-1]}}, b});

    wire y_hat_c = step_fn(s_train);

    // e = t - y_hat ∈ {-1,0,1}
    wire signed [1:0] err_c = $signed({1'b0, t_cur}) - $signed({1'b0, y_hat_c});

    // Δ = sign(e) * eta
    wire signed [W-1:0] delta_c =
         (err_c ==  2'sd1) ?  eta  :
         (err_c == -2'sd1) ? -eta  : {W{1'b0}};

    // Registers to use Δ in S_UPDATE
    reg signed [W-1:0] delta_r;
    reg                 sx1_r, sx2_r;

    // Sequence
    always @(posedge clk or negedge aresetn)
    begin
        if (!aresetn)
        begin
            w1 <= 0;
            w2 <= 0;
            b <= 0;
            w1_o <= 0;
            w2_o <= 0;
            b_o <= 0;
            y <= 1'b0;
            sum_dbg <= 0;

            st <= S_IDLE;
            busy <= 1'b0;
            done <= 1'b0;
            converged <= 1'b0;
            epoch_count <= 16'd0;
            pat_idx <= 2'd0;
            any_error_in_ep <= 1'b0;

            delta_r <= 0;
            sx1_r <= 1'b0;
            sx2_r <= 1'b0;
        end
        else
        begin
            // Prediction output
            sum_dbg <= s_pred;
            y       <= step_fn(s_pred);

            // 'done' pulse
            if (done)
                done <= 1'b0;

            // External weight load (idle)
            if (load_init && !busy)
            begin
                w1 <= w1_init;
                w2 <= w2_init;
                b <= b_init;
                w1_o <= w1_init;
                w2_o <= w2_init;
                b_o <= b_init;
            end

            case (st)
                S_IDLE:
                begin
                    busy <= 1'b0;
                    if (train_start)
                    begin
                        busy <= 1'b1;
                        converged <= 1'b0;
                        epoch_count <= 16'd0;
                        pat_idx <= 2'd0;
                        any_error_in_ep <= 1'b0;
                        st <= S_EPOCH;
                    end
                end

                S_EPOCH:
                begin
                    pat_idx <= 2'd0;
                    any_error_in_ep <= 1'b0;
                    st <= S_SAMPLE;
                end

                S_SAMPLE:
                begin
                    // Latch current pattern signals and their delta
                    delta_r <= delta_c;
                    sx1_r   <= sx1;
                    sx2_r   <= sx2;

                    // If there's an error (delta≠0), mark it
                    if (delta_c != {W{1'b0}})
                        any_error_in_ep <= 1'b1;

                    st <= S_UPDATE;
                end

                S_UPDATE:
                begin
                    // Update weights (x in {0,1})
                    if (delta_r != {W{1'b0}})
                    begin
                        if (sx1_r)
                            w1 <= w1 + delta_r;
                        if (sx2_r)
                            w2 <= w2 + delta_r;
                        b <= b + delta_r;
                    end

                    // Next pattern or end of epoch
                    if (pat_idx == 2'd3)
                    begin
                        st <= S_CHECK;
                    end
                    else
                    begin
                        pat_idx <= pat_idx + 2'd1;
                        st <= S_SAMPLE;
                    end
                end

                S_CHECK:
                begin
                    epoch_count <= epoch_count + 16'd1;
                    if (!any_error_in_ep)
                    begin
                        converged <= 1'b1;
                        st <= S_DONE;
                    end
                    else if (epoch_count + 16'd1 >= max_epochs)
                    begin
                        converged <= 1'b0;
                        st <= S_DONE;
                    end
                    else
                    begin
                        st <= S_EPOCH;
                    end
                end

                S_DONE:
                begin
                    w1_o <= w1;
                    w2_o <= w2;
                    b_o <= b;
                    busy <= 1'b0;
                    done <= 1'b1;
                    st <= S_IDLE;
                end

                default:
                    st <= S_IDLE;
            endcase
        end
    end

endmodule
