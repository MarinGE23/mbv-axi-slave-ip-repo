//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Sun Sep 28 22:54:45 2025
//Host        : Emanuel running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    x1_0,
    x2_0,
    y_0);
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  input x1_0;
  input x2_0;
  output y_0;

  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire x1_0;
  wire x2_0;
  wire y_0;

  design_1 design_1_i
       (.reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .x1_0(x1_0),
        .x2_0(x2_0),
        .y_0(y_0));
endmodule
