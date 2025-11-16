// Simple LUT/inverter-chain Ring Oscillator

// NOTE: Synthesis tools may optimize this away.
// Use the following XDC constraints to preserve the design:

// 1) Allow the intentional combinational loop in RO nodes:
// set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -hier -filter {NAME =~ *u_ro/n*}]

// 2) Preserve RO hierarchy and cells:
// set_property DONT_TOUCH true [get_cells -hier -filter {NAME =~ *u_ro*}]

// Optional: Keep internal RO nets
// Some Vivado versions require KEEP property to prevent net trimming
// set_property KEEP true [get_nets -hier -filter {NAME =~ *u_ro/n*}]

// 3) Disable timing analysis through the RO loop
// This prevents false timing paths in free-running oscillators
// set_false_path -through [get_nets -hier -filter {NAME =~ *u_ro/n*}]

// This ring oscillator is gated by 'enable' to reduce power when inactive.

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
