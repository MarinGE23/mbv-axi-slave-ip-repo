// -----------------------------------------------------------------------------
// Display Decoder
// - 4-digit 7-segment display controller with multiplexing
// - Converts 4 input digits (0-9) to 7-segment patterns
// - Implements time-division multiplexing for anode control
// - Active-low reset and segment outputs
// -----------------------------------------------------------------------------
module display_decoder(
        input clk,               
        input aresetn,           // Active-low asynchronous reset
        input [3:0] an_in,       // Anode enable inputs (active low)
        input [7:0] dig_0_in,    // Digit 0 input value (0-9)
        input [7:0] dig_1_in,    // Digit 1 input value (0-9)
        input [7:0] dig_2_in,    // Digit 2 input value (0-9)
        input [7:0] dig_3_in,    // Digit 3 input value (0-9)
        output reg [3:0] an_out, // Anode outputs (active low)
        output reg [7:0] seg_out // Segment outputs (active low) - format: DP G F E D C B A
    );

    // 7-Segment display patterns (active low)
    // Format: DP G F E D C B A (DP is decimal point, always off in this implementation)
    parameter N0 = 7'b100_0000;  // 0 GFE_DCBA
    parameter N1 = 7'b111_1001;  // 1 
    parameter N2 = 7'b010_0100;  // 2 
    parameter N3 = 7'b011_0000;  // 3 
    parameter N4 = 7'b001_1001;  // 4 
    parameter N5 = 7'b001_0010;  // 5 
    parameter N6 = 7'b000_0010;  // 6 
    parameter N7 = 7'b111_1000;  // 7 
    parameter N8 = 7'b000_0000;  // 8 
    parameter N9 = 7'b001_0000;  // 9 

    // Decoded digit outputs (8-bit: DP + 7 segments)
    reg [7:0] dig_0_dec;
    reg [7:0] dig_1_dec;
    reg [7:0] dig_2_dec;
    reg [7:0] dig_3_dec;

    // ===============================================
    // Digits Decoder
    // Converts binary inputs (0-9) to 7-segment patterns
    // ===============================================

    // Digit 0 decoder
    always@*
    begin
        case(dig_0_in)
            8'd0:
                dig_0_dec = {1'd1, N0};  // DP off + segment pattern
            8'd1:
                dig_0_dec = {1'd1, N1};
            8'd2:
                dig_0_dec = {1'd1, N2};
            8'd3:
                dig_0_dec = {1'd1, N3};
            8'd4:
                dig_0_dec = {1'd1, N4};
            8'd5:
                dig_0_dec = {1'd1, N5};
            8'd6:
                dig_0_dec = {1'd1, N6};
            8'd7:
                dig_0_dec = {1'd1, N7};
            8'd8:
                dig_0_dec = {1'd1, N8};
            8'd9:
                dig_0_dec = {1'd1, N9};
            default:
                dig_0_dec = 8'b1111_1111; // All segments off for invalid input
        endcase
    end

    // Digit 1 decoder
    always@*
    begin
        case(dig_1_in)
            8'd0:
                dig_1_dec = {1'd1, N0};
            8'd1:
                dig_1_dec = {1'd1, N1};
            8'd2:
                dig_1_dec = {1'd1, N2};
            8'd3:
                dig_1_dec = {1'd1, N3};
            8'd4:
                dig_1_dec = {1'd1, N4};
            8'd5:
                dig_1_dec = {1'd1, N5};
            8'd6:
                dig_1_dec = {1'd1, N6};
            8'd7:
                dig_1_dec = {1'd1, N7};
            8'd8:
                dig_1_dec = {1'd1, N8};
            8'd9:
                dig_1_dec = {1'd1, N9};
            default:
                dig_1_dec = 8'b1111_1111;
        endcase
    end

    // Digit 2 decoder
    always@*
    begin
        case(dig_2_in)
            8'd0:
                dig_2_dec = {1'd1, N0};
            8'd1:
                dig_2_dec = {1'd1, N1};
            8'd2:
                dig_2_dec = {1'd1, N2};
            8'd3:
                dig_2_dec = {1'd1, N3};
            8'd4:
                dig_2_dec = {1'd1, N4};
            8'd5:
                dig_2_dec = {1'd1, N5};
            8'd6:
                dig_2_dec = {1'd1, N6};
            8'd7:
                dig_2_dec = {1'd1, N7};
            8'd8:
                dig_2_dec = {1'd1, N8};
            8'd9:
                dig_2_dec = {1'd1, N9};
            default:
                dig_2_dec = 8'b1111_1111;
        endcase
    end

    // Digit 3 decoder
    always@*
    begin
        case(dig_3_in)
            8'd0:
                dig_3_dec = {1'd1, N0};
            8'd1:
                dig_3_dec = {1'd1, N1};
            8'd2:
                dig_3_dec = {1'd1, N2};
            8'd3:
                dig_3_dec = {1'd1, N3};
            8'd4:
                dig_3_dec = {1'd1, N4};
            8'd5:
                dig_3_dec = {1'd1, N5};
            8'd6:
                dig_3_dec = {1'd1, N6};
            8'd7:
                dig_3_dec = {1'd1, N7};
            8'd8:
                dig_3_dec = {1'd1, N8};
            8'd9:
                dig_3_dec = {1'd1, N9};
            default:
                dig_3_dec = 8'b1111_1111;
        endcase
    end

    // ===============================================
    // Anodes Control
    // Time-division multiplexing for 4-digit display
    // ===============================================

    // Counter for display refresh (100K division)
    reg [10:0] cnt100K; // 11-bit counter for ~100KHz refresh rate

    always@(posedge clk)
        if (aresetn == 1'b0)
            cnt100K <= 11'd0;
        else
            cnt100K <= cnt100K + 1'd1;

    // Alternate Anodes - activates one digit at a time
    always@(posedge clk)
    begin
        if (aresetn == 1'b0)
        begin
            an_out <= 4'b1111; // All digits off during reset
        end
        else
        begin
            case(cnt100K[10:9]) // Use 2 MSB for digit selection
                0:
                    an_out <= an_in & 4'b1110; // Activate digit 0
                1:
                    an_out <= an_in & 4'b1101; // Activate digit 1
                2:
                    an_out <= an_in & 4'b1011; // Activate digit 2
                3:
                    an_out <= an_in & 4'b0111; // Activate digit 3
                default:
                    an_out <= an_in & 4'b1110; // Default to digit 0
            endcase
        end
    end

    // Alternate Digits - output corresponding segment pattern
    always@(posedge clk)
    begin
        if (aresetn == 1'b0)
        begin
            seg_out <= 8'b1111_1111; // All segments off during reset
        end
        else
        begin
            case(cnt100K[10:9])
                0:
                    seg_out <= dig_0_dec; // Display digit 0
                1:
                    seg_out <= dig_1_dec; // Display digit 1
                2:
                    seg_out <= dig_2_dec; // Display digit 2
                3:
                    seg_out <= dig_3_dec; // Display digit 3
                default:
                    seg_out <= dig_0_dec; // Default to digit 0
            endcase
        end
    end

endmodule
