// Simple LUT/inverter-chain Ring Oscillator
// NOTE: Synthesis tools may try to optimize this away.
// If required, add XDC constraints to preserve:
//      set_property DONT_TOUCH true [get_cells -hier -filter {NAME =~ *ro_chain*}]
//      set_property ALLOW_COMBINATORIAL_LOOPS true [current_design]
// This RO is gated by 'enable' to reduce power when not used.
module ring_oscillator #(
    parameter integer STAGES = 5  // must be odd
)(
    input  wire enable,
    output wire ro_out
);
    // Internal combinational loop
    (* KEEP = "TRUE", DONT_TOUCH = "TRUE" *) wire [STAGES-1:0] n;

    // Generate odd-length inverter chain
    genvar i;
    generate
        for (i = 0; i < STAGES; i = i + 1) begin : ro_chain
            if (i == 0) begin
                // First stage: feedback from last
                assign n[i] = enable ? ~n[STAGES-1] : 1'b0;
            end else begin
                assign n[i] = ~n[i-1];
            end
        end
    endgenerate

    assign ro_out = n[STAGES-1];
endmodule