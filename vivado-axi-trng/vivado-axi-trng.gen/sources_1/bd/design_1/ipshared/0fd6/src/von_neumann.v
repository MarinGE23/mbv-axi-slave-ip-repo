// Von Neumann debiaser: consumes input bit stream and outputs unbiased bits.
// Pairs of bits are examined: 01 -> 0, 10 -> 1, 00/11 -> discard.
module von_neumann (
    input  wire clk,
    input  wire aresetn,
    input  wire in_bit,
    input  wire in_valid,
    output reg  out_bit,
    output reg  out_valid
);
    reg have_first;
    reg first_bit;

    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            have_first <= 1'b0;
            first_bit  <= 1'b0;
            out_bit    <= 1'b0;
            out_valid  <= 1'b0;
        end else begin
            out_valid <= 1'b0;
            if (in_valid) begin
                if (!have_first) begin
                    first_bit  <= in_bit;
                    have_first <= 1'b1;
                end else begin
                    // We have a pair
                    if (first_bit != in_bit) begin
                        // 01 -> 0, 10 -> 1
                        out_bit   <= first_bit ? 1'b1 : 1'b0; // (10 -> first_bit=1 -> 1), (01 -> first_bit=0 -> 0)
                        out_valid <= 1'b1;
                    end
                    have_first <= 1'b0;
                end
            end
        end
    end

endmodule
