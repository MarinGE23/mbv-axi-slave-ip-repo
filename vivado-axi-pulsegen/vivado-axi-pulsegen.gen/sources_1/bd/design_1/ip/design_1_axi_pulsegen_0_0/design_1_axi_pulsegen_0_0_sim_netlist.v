// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Sep 27 03:54:54 2025
// Host        : Emanuel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/emari/Desktop/mbv-axi-slave-ip-repo/vivado-axi-pulsegen/vivado-axi-pulsegen.gen/sources_1/bd/design_1/ip/design_1_axi_pulsegen_0_0/design_1_axi_pulsegen_0_0_sim_netlist.v
// Design      : design_1_axi_pulsegen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_pulsegen_0_0,axi_pulsegen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_pulsegen,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_axi_pulsegen_0_0
   (pulse_out,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output pulse_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire pulse_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_pulsegen_0_0_axi_pulsegen inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .pulse_out(pulse_out),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_pulsegen" *) 
module design_1_axi_pulsegen_0_0_axi_pulsegen
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    pulse_out,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output pulse_out;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire pulse_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_axi_pulsegen_0_0_axi_pulsegen_slave_lite_v1_0_S00_AXI axi_pulsegen_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .pulse_out(pulse_out),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_pulsegen_slave_lite_v1_0_S00_AXI" *) 
module design_1_axi_pulsegen_0_0_axi_pulsegen_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    pulse_out,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output pulse_out;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire [31:7]p_1_in;
  wire pulse_out;
  wire pulsegen_inst_n_1;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [0:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [0:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;

  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(pulsegen_inst_n_1));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(pulsegen_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(pulsegen_inst_n_1));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(pulsegen_inst_n_1));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[3]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(pulsegen_inst_n_1));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(pulsegen_inst_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(pulsegen_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hCCC4FFCF)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(pulsegen_inst_n_1));
  LUT6 #(
    .INIT(64'hFBFF3838C3FF0000)) 
    axi_bvalid_i_1
       (.I0(axi_awready0__0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(pulsegen_inst_n_1));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(pulsegen_inst_n_1));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(pulsegen_inst_n_1));
  design_1_axi_pulsegen_0_0_pulsegen pulsegen_inst
       (.Q(slv_reg0),
        .SR(pulsegen_inst_n_1),
        .\period_reg_reg[31]_0 (slv_reg2),
        .pulse_out(pulse_out),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\width_reg_reg[0]_0 (slv_reg1),
        .\width_reg_reg[31]_0 (slv_reg3));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(slv_reg2[0]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1),
        .I4(slv_reg3[0]),
        .I5(slv_reg0),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg2[10]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[10] ),
        .I4(slv_reg3[10]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg2[11]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .I4(slv_reg3[11]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg2[12]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[12] ),
        .I4(slv_reg3[12]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg2[13]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[13] ),
        .I4(slv_reg3[13]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg2[14]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[14] ),
        .I4(slv_reg3[14]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg2[15]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[15] ),
        .I4(slv_reg3[15]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg2[16]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[16] ),
        .I4(slv_reg3[16]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg2[17]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .I4(slv_reg3[17]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg2[18]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[18] ),
        .I4(slv_reg3[18]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg2[19]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[19] ),
        .I4(slv_reg3[19]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(slv_reg2[1]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(slv_reg3[1]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg2[20]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[20] ),
        .I4(slv_reg3[20]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg2[21]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[21] ),
        .I4(slv_reg3[21]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg2[22]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[22] ),
        .I4(slv_reg3[22]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg2[23]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[23] ),
        .I4(slv_reg3[23]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg2[24]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[24] ),
        .I4(slv_reg3[24]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg2[25]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .I4(slv_reg3[25]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg2[26]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[26] ),
        .I4(slv_reg3[26]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg2[27]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[27] ),
        .I4(slv_reg3[27]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg2[28]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[28] ),
        .I4(slv_reg3[28]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg2[29]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[29] ),
        .I4(slv_reg3[29]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(slv_reg2[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[2] ),
        .I4(slv_reg3[2]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg2[30]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[30] ),
        .I4(slv_reg3[30]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg2[31]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[31] ),
        .I4(slv_reg3[31]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(slv_reg2[3]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .I4(slv_reg3[3]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(slv_reg2[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[4] ),
        .I4(slv_reg3[4]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(slv_reg2[5]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .I4(slv_reg3[5]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(slv_reg2[6]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[6] ),
        .I4(slv_reg3[6]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(slv_reg2[7]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .I4(slv_reg3[7]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg2[8]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[8] ),
        .I4(slv_reg3[8]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hFBCB3B0BF8C83808)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg2[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(slv_reg3[9]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(pulsegen_inst_n_1));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(pulsegen_inst_n_1));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(pulsegen_inst_n_1));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(p_1_in[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(pulsegen_inst_n_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(pulsegen_inst_n_1));
endmodule

(* ORIG_REF_NAME = "pulsegen" *) 
module design_1_axi_pulsegen_0_0_pulsegen
   (pulse_out,
    SR,
    s00_axi_aclk,
    Q,
    \width_reg_reg[31]_0 ,
    \width_reg_reg[0]_0 ,
    \period_reg_reg[31]_0 ,
    s00_axi_aresetn);
  output pulse_out;
  output [0:0]SR;
  input s00_axi_aclk;
  input [0:0]Q;
  input [31:0]\width_reg_reg[31]_0 ;
  input [0:0]\width_reg_reg[0]_0 ;
  input [31:0]\period_reg_reg[31]_0 ;
  input s00_axi_aresetn;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [31:0]counter;
  wire [31:1]counter0;
  wire counter1;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_i_5_n_0;
  wire counter1_carry__0_i_6_n_0;
  wire counter1_carry__0_i_7_n_0;
  wire counter1_carry__0_i_8_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_i_4_n_0;
  wire counter1_carry__1_i_5_n_0;
  wire counter1_carry__1_i_6_n_0;
  wire counter1_carry__1_i_7_n_0;
  wire counter1_carry__1_i_8_n_0;
  wire counter1_carry__1_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry__1_n_2;
  wire counter1_carry__1_n_3;
  wire counter1_carry__2_i_1_n_0;
  wire counter1_carry__2_i_2_n_0;
  wire counter1_carry__2_i_3_n_0;
  wire counter1_carry__2_i_4_n_0;
  wire counter1_carry__2_i_5_n_0;
  wire counter1_carry__2_i_6_n_0;
  wire counter1_carry__2_i_7_n_0;
  wire counter1_carry__2_i_8_n_0;
  wire counter1_carry__2_n_1;
  wire counter1_carry__2_n_2;
  wire counter1_carry__2_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_i_5_n_0;
  wire counter1_carry_i_6_n_0;
  wire counter1_carry_i_7_n_0;
  wire counter1_carry_i_8_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire [31:1]counter2;
  wire counter2_carry__0_i_1_n_0;
  wire counter2_carry__0_i_2_n_0;
  wire counter2_carry__0_i_3_n_0;
  wire counter2_carry__0_i_4_n_0;
  wire counter2_carry__0_n_0;
  wire counter2_carry__0_n_1;
  wire counter2_carry__0_n_2;
  wire counter2_carry__0_n_3;
  wire counter2_carry__1_i_1_n_0;
  wire counter2_carry__1_i_2_n_0;
  wire counter2_carry__1_i_3_n_0;
  wire counter2_carry__1_i_4_n_0;
  wire counter2_carry__1_n_0;
  wire counter2_carry__1_n_1;
  wire counter2_carry__1_n_2;
  wire counter2_carry__1_n_3;
  wire counter2_carry__2_i_1_n_0;
  wire counter2_carry__2_i_2_n_0;
  wire counter2_carry__2_i_3_n_0;
  wire counter2_carry__2_i_4_n_0;
  wire counter2_carry__2_n_0;
  wire counter2_carry__2_n_1;
  wire counter2_carry__2_n_2;
  wire counter2_carry__2_n_3;
  wire counter2_carry__3_i_1_n_0;
  wire counter2_carry__3_i_2_n_0;
  wire counter2_carry__3_i_3_n_0;
  wire counter2_carry__3_i_4_n_0;
  wire counter2_carry__3_n_0;
  wire counter2_carry__3_n_1;
  wire counter2_carry__3_n_2;
  wire counter2_carry__3_n_3;
  wire counter2_carry__4_i_1_n_0;
  wire counter2_carry__4_i_2_n_0;
  wire counter2_carry__4_i_3_n_0;
  wire counter2_carry__4_i_4_n_0;
  wire counter2_carry__4_n_0;
  wire counter2_carry__4_n_1;
  wire counter2_carry__4_n_2;
  wire counter2_carry__4_n_3;
  wire counter2_carry__5_i_1_n_0;
  wire counter2_carry__5_i_2_n_0;
  wire counter2_carry__5_i_3_n_0;
  wire counter2_carry__5_i_4_n_0;
  wire counter2_carry__5_n_0;
  wire counter2_carry__5_n_1;
  wire counter2_carry__5_n_2;
  wire counter2_carry__5_n_3;
  wire counter2_carry__6_i_1_n_0;
  wire counter2_carry__6_i_2_n_0;
  wire counter2_carry__6_i_3_n_0;
  wire counter2_carry__6_n_2;
  wire counter2_carry__6_n_3;
  wire counter2_carry_i_1_n_0;
  wire counter2_carry_i_2_n_0;
  wire counter2_carry_i_3_n_0;
  wire counter2_carry_i_4_n_0;
  wire counter2_carry_n_0;
  wire counter2_carry_n_1;
  wire counter2_carry_n_2;
  wire counter2_carry_n_3;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_2_n_1 ;
  wire \counter_reg[12]_i_2_n_2 ;
  wire \counter_reg[12]_i_2_n_3 ;
  wire \counter_reg[16]_i_2_n_0 ;
  wire \counter_reg[16]_i_2_n_1 ;
  wire \counter_reg[16]_i_2_n_2 ;
  wire \counter_reg[16]_i_2_n_3 ;
  wire \counter_reg[20]_i_2_n_0 ;
  wire \counter_reg[20]_i_2_n_1 ;
  wire \counter_reg[20]_i_2_n_2 ;
  wire \counter_reg[20]_i_2_n_3 ;
  wire \counter_reg[24]_i_2_n_0 ;
  wire \counter_reg[24]_i_2_n_1 ;
  wire \counter_reg[24]_i_2_n_2 ;
  wire \counter_reg[24]_i_2_n_3 ;
  wire \counter_reg[28]_i_2_n_0 ;
  wire \counter_reg[28]_i_2_n_1 ;
  wire \counter_reg[28]_i_2_n_2 ;
  wire \counter_reg[28]_i_2_n_3 ;
  wire \counter_reg[31]_i_2_n_2 ;
  wire \counter_reg[31]_i_2_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire [31:0]p_0_in;
  wire [31:0]period_reg;
  wire \period_reg[31]_i_2_n_0 ;
  wire \period_reg[31]_i_3_n_0 ;
  wire \period_reg[31]_i_4_n_0 ;
  wire \period_reg[31]_i_5_n_0 ;
  wire \period_reg[31]_i_6_n_0 ;
  wire \period_reg[31]_i_7_n_0 ;
  wire \period_reg[31]_i_8_n_0 ;
  wire period_reg_1;
  wire [31:0]\period_reg_reg[31]_0 ;
  wire pulse_out;
  wire pulse_out0_carry__0_i_1_n_0;
  wire pulse_out0_carry__0_i_2_n_0;
  wire pulse_out0_carry__0_i_3_n_0;
  wire pulse_out0_carry__0_i_4_n_0;
  wire pulse_out0_carry__0_i_5_n_0;
  wire pulse_out0_carry__0_i_6_n_0;
  wire pulse_out0_carry__0_i_7_n_0;
  wire pulse_out0_carry__0_i_8_n_0;
  wire pulse_out0_carry__0_n_0;
  wire pulse_out0_carry__0_n_1;
  wire pulse_out0_carry__0_n_2;
  wire pulse_out0_carry__0_n_3;
  wire pulse_out0_carry__1_i_1_n_0;
  wire pulse_out0_carry__1_i_2_n_0;
  wire pulse_out0_carry__1_i_3_n_0;
  wire pulse_out0_carry__1_i_4_n_0;
  wire pulse_out0_carry__1_i_5_n_0;
  wire pulse_out0_carry__1_i_6_n_0;
  wire pulse_out0_carry__1_i_7_n_0;
  wire pulse_out0_carry__1_i_8_n_0;
  wire pulse_out0_carry__1_n_0;
  wire pulse_out0_carry__1_n_1;
  wire pulse_out0_carry__1_n_2;
  wire pulse_out0_carry__1_n_3;
  wire pulse_out0_carry__2_i_1_n_0;
  wire pulse_out0_carry__2_i_2_n_0;
  wire pulse_out0_carry__2_i_3_n_0;
  wire pulse_out0_carry__2_i_4_n_0;
  wire pulse_out0_carry__2_i_5_n_0;
  wire pulse_out0_carry__2_i_6_n_0;
  wire pulse_out0_carry__2_i_7_n_0;
  wire pulse_out0_carry__2_i_8_n_0;
  wire pulse_out0_carry__2_n_0;
  wire pulse_out0_carry__2_n_1;
  wire pulse_out0_carry__2_n_2;
  wire pulse_out0_carry__2_n_3;
  wire pulse_out0_carry_i_1_n_0;
  wire pulse_out0_carry_i_2_n_0;
  wire pulse_out0_carry_i_3_n_0;
  wire pulse_out0_carry_i_4_n_0;
  wire pulse_out0_carry_i_5_n_0;
  wire pulse_out0_carry_i_6_n_0;
  wire pulse_out0_carry_i_7_n_0;
  wire pulse_out0_carry_i_8_n_0;
  wire pulse_out0_carry_n_0;
  wire pulse_out0_carry_n_1;
  wire pulse_out0_carry_n_2;
  wire pulse_out0_carry_n_3;
  wire pulse_out_i_1_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]width_reg;
  wire \width_reg[31]_i_2_n_0 ;
  wire \width_reg[31]_i_3_n_0 ;
  wire \width_reg[31]_i_4_n_0 ;
  wire \width_reg[31]_i_5_n_0 ;
  wire \width_reg[31]_i_6_n_0 ;
  wire \width_reg[31]_i_7_n_0 ;
  wire \width_reg[31]_i_8_n_0 ;
  wire width_reg_0;
  wire [0:0]\width_reg_reg[0]_0 ;
  wire [31:0]\width_reg_reg[31]_0 ;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_counter2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter2_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_pulse_out0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pulse_out0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pulse_out0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_pulse_out0_carry__2_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_5_n_0,counter1_carry_i_6_n_0,counter1_carry_i_7_n_0,counter1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_5_n_0,counter1_carry__0_i_6_n_0,counter1_carry__0_i_7_n_0,counter1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__0_i_1
       (.I0(counter2[15]),
        .I1(counter[15]),
        .I2(counter2[14]),
        .I3(counter[14]),
        .O(counter1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__0_i_2
       (.I0(counter2[13]),
        .I1(counter[13]),
        .I2(counter2[12]),
        .I3(counter[12]),
        .O(counter1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__0_i_3
       (.I0(counter2[11]),
        .I1(counter[11]),
        .I2(counter2[10]),
        .I3(counter[10]),
        .O(counter1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__0_i_4
       (.I0(counter2[9]),
        .I1(counter[9]),
        .I2(counter2[8]),
        .I3(counter[8]),
        .O(counter1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__0_i_5
       (.I0(counter2[15]),
        .I1(counter[15]),
        .I2(counter2[14]),
        .I3(counter[14]),
        .O(counter1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__0_i_6
       (.I0(counter2[13]),
        .I1(counter[13]),
        .I2(counter2[12]),
        .I3(counter[12]),
        .O(counter1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__0_i_7
       (.I0(counter2[11]),
        .I1(counter[11]),
        .I2(counter2[10]),
        .I3(counter[10]),
        .O(counter1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__0_i_8
       (.I0(counter2[9]),
        .I1(counter[9]),
        .I2(counter2[8]),
        .I3(counter[8]),
        .O(counter1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({counter1_carry__1_n_0,counter1_carry__1_n_1,counter1_carry__1_n_2,counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__1_i_1_n_0,counter1_carry__1_i_2_n_0,counter1_carry__1_i_3_n_0,counter1_carry__1_i_4_n_0}),
        .O(NLW_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({counter1_carry__1_i_5_n_0,counter1_carry__1_i_6_n_0,counter1_carry__1_i_7_n_0,counter1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__1_i_1
       (.I0(counter2[23]),
        .I1(counter[23]),
        .I2(counter2[22]),
        .I3(counter[22]),
        .O(counter1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__1_i_2
       (.I0(counter2[21]),
        .I1(counter[21]),
        .I2(counter2[20]),
        .I3(counter[20]),
        .O(counter1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__1_i_3
       (.I0(counter2[19]),
        .I1(counter[19]),
        .I2(counter2[18]),
        .I3(counter[18]),
        .O(counter1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__1_i_4
       (.I0(counter2[17]),
        .I1(counter[17]),
        .I2(counter2[16]),
        .I3(counter[16]),
        .O(counter1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__1_i_5
       (.I0(counter2[23]),
        .I1(counter[23]),
        .I2(counter2[22]),
        .I3(counter[22]),
        .O(counter1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__1_i_6
       (.I0(counter2[21]),
        .I1(counter[21]),
        .I2(counter2[20]),
        .I3(counter[20]),
        .O(counter1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__1_i_7
       (.I0(counter2[19]),
        .I1(counter[19]),
        .I2(counter2[18]),
        .I3(counter[18]),
        .O(counter1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__1_i_8
       (.I0(counter2[17]),
        .I1(counter[17]),
        .I2(counter2[16]),
        .I3(counter[16]),
        .O(counter1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__2
       (.CI(counter1_carry__1_n_0),
        .CO({counter1,counter1_carry__2_n_1,counter1_carry__2_n_2,counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__2_i_1_n_0,counter1_carry__2_i_2_n_0,counter1_carry__2_i_3_n_0,counter1_carry__2_i_4_n_0}),
        .O(NLW_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({counter1_carry__2_i_5_n_0,counter1_carry__2_i_6_n_0,counter1_carry__2_i_7_n_0,counter1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__2_i_1
       (.I0(counter2[31]),
        .I1(counter[31]),
        .I2(counter2[30]),
        .I3(counter[30]),
        .O(counter1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__2_i_2
       (.I0(counter2[29]),
        .I1(counter[29]),
        .I2(counter2[28]),
        .I3(counter[28]),
        .O(counter1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__2_i_3
       (.I0(counter2[27]),
        .I1(counter[27]),
        .I2(counter2[26]),
        .I3(counter[26]),
        .O(counter1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry__2_i_4
       (.I0(counter2[25]),
        .I1(counter[25]),
        .I2(counter2[24]),
        .I3(counter[24]),
        .O(counter1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__2_i_5
       (.I0(counter2[31]),
        .I1(counter[31]),
        .I2(counter2[30]),
        .I3(counter[30]),
        .O(counter1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__2_i_6
       (.I0(counter2[29]),
        .I1(counter[29]),
        .I2(counter2[28]),
        .I3(counter[28]),
        .O(counter1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__2_i_7
       (.I0(counter2[27]),
        .I1(counter[27]),
        .I2(counter2[26]),
        .I3(counter[26]),
        .O(counter1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry__2_i_8
       (.I0(counter2[25]),
        .I1(counter[25]),
        .I2(counter2[24]),
        .I3(counter[24]),
        .O(counter1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry_i_1
       (.I0(counter2[7]),
        .I1(counter[7]),
        .I2(counter2[6]),
        .I3(counter[6]),
        .O(counter1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry_i_2
       (.I0(counter2[5]),
        .I1(counter[5]),
        .I2(counter2[4]),
        .I3(counter[4]),
        .O(counter1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter1_carry_i_3
       (.I0(counter2[3]),
        .I1(counter[3]),
        .I2(counter2[2]),
        .I3(counter[2]),
        .O(counter1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h222B)) 
    counter1_carry_i_4
       (.I0(counter2[1]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(period_reg[0]),
        .O(counter1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry_i_5
       (.I0(counter2[7]),
        .I1(counter[7]),
        .I2(counter2[6]),
        .I3(counter[6]),
        .O(counter1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry_i_6
       (.I0(counter2[5]),
        .I1(counter[5]),
        .I2(counter2[4]),
        .I3(counter[4]),
        .O(counter1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter1_carry_i_7
       (.I0(counter2[3]),
        .I1(counter[3]),
        .I2(counter2[2]),
        .I3(counter[2]),
        .O(counter1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    counter1_carry_i_8
       (.I0(counter[0]),
        .I1(period_reg[0]),
        .I2(counter2[1]),
        .I3(counter[1]),
        .O(counter1_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry
       (.CI(1'b0),
        .CO({counter2_carry_n_0,counter2_carry_n_1,counter2_carry_n_2,counter2_carry_n_3}),
        .CYINIT(period_reg[0]),
        .DI(period_reg[4:1]),
        .O(counter2[4:1]),
        .S({counter2_carry_i_1_n_0,counter2_carry_i_2_n_0,counter2_carry_i_3_n_0,counter2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__0
       (.CI(counter2_carry_n_0),
        .CO({counter2_carry__0_n_0,counter2_carry__0_n_1,counter2_carry__0_n_2,counter2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(period_reg[8:5]),
        .O(counter2[8:5]),
        .S({counter2_carry__0_i_1_n_0,counter2_carry__0_i_2_n_0,counter2_carry__0_i_3_n_0,counter2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_1
       (.I0(period_reg[8]),
        .O(counter2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_2
       (.I0(period_reg[7]),
        .O(counter2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_3
       (.I0(period_reg[6]),
        .O(counter2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_4
       (.I0(period_reg[5]),
        .O(counter2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__1
       (.CI(counter2_carry__0_n_0),
        .CO({counter2_carry__1_n_0,counter2_carry__1_n_1,counter2_carry__1_n_2,counter2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(period_reg[12:9]),
        .O(counter2[12:9]),
        .S({counter2_carry__1_i_1_n_0,counter2_carry__1_i_2_n_0,counter2_carry__1_i_3_n_0,counter2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_1
       (.I0(period_reg[12]),
        .O(counter2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_2
       (.I0(period_reg[11]),
        .O(counter2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_3
       (.I0(period_reg[10]),
        .O(counter2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_4
       (.I0(period_reg[9]),
        .O(counter2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__2
       (.CI(counter2_carry__1_n_0),
        .CO({counter2_carry__2_n_0,counter2_carry__2_n_1,counter2_carry__2_n_2,counter2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(period_reg[16:13]),
        .O(counter2[16:13]),
        .S({counter2_carry__2_i_1_n_0,counter2_carry__2_i_2_n_0,counter2_carry__2_i_3_n_0,counter2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__2_i_1
       (.I0(period_reg[16]),
        .O(counter2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__2_i_2
       (.I0(period_reg[15]),
        .O(counter2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__2_i_3
       (.I0(period_reg[14]),
        .O(counter2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__2_i_4
       (.I0(period_reg[13]),
        .O(counter2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__3
       (.CI(counter2_carry__2_n_0),
        .CO({counter2_carry__3_n_0,counter2_carry__3_n_1,counter2_carry__3_n_2,counter2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(period_reg[20:17]),
        .O(counter2[20:17]),
        .S({counter2_carry__3_i_1_n_0,counter2_carry__3_i_2_n_0,counter2_carry__3_i_3_n_0,counter2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__3_i_1
       (.I0(period_reg[20]),
        .O(counter2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__3_i_2
       (.I0(period_reg[19]),
        .O(counter2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__3_i_3
       (.I0(period_reg[18]),
        .O(counter2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__3_i_4
       (.I0(period_reg[17]),
        .O(counter2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__4
       (.CI(counter2_carry__3_n_0),
        .CO({counter2_carry__4_n_0,counter2_carry__4_n_1,counter2_carry__4_n_2,counter2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(period_reg[24:21]),
        .O(counter2[24:21]),
        .S({counter2_carry__4_i_1_n_0,counter2_carry__4_i_2_n_0,counter2_carry__4_i_3_n_0,counter2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__4_i_1
       (.I0(period_reg[24]),
        .O(counter2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__4_i_2
       (.I0(period_reg[23]),
        .O(counter2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__4_i_3
       (.I0(period_reg[22]),
        .O(counter2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__4_i_4
       (.I0(period_reg[21]),
        .O(counter2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__5
       (.CI(counter2_carry__4_n_0),
        .CO({counter2_carry__5_n_0,counter2_carry__5_n_1,counter2_carry__5_n_2,counter2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(period_reg[28:25]),
        .O(counter2[28:25]),
        .S({counter2_carry__5_i_1_n_0,counter2_carry__5_i_2_n_0,counter2_carry__5_i_3_n_0,counter2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__5_i_1
       (.I0(period_reg[28]),
        .O(counter2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__5_i_2
       (.I0(period_reg[27]),
        .O(counter2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__5_i_3
       (.I0(period_reg[26]),
        .O(counter2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__5_i_4
       (.I0(period_reg[25]),
        .O(counter2_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__6
       (.CI(counter2_carry__5_n_0),
        .CO({NLW_counter2_carry__6_CO_UNCONNECTED[3:2],counter2_carry__6_n_2,counter2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,period_reg[30:29]}),
        .O({NLW_counter2_carry__6_O_UNCONNECTED[3],counter2[31:29]}),
        .S({1'b0,counter2_carry__6_i_1_n_0,counter2_carry__6_i_2_n_0,counter2_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__6_i_1
       (.I0(period_reg[31]),
        .O(counter2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__6_i_2
       (.I0(period_reg[30]),
        .O(counter2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__6_i_3
       (.I0(period_reg[29]),
        .O(counter2_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_1
       (.I0(period_reg[4]),
        .O(counter2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_2
       (.I0(period_reg[3]),
        .O(counter2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_3
       (.I0(period_reg[2]),
        .O(counter2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_4
       (.I0(period_reg[1]),
        .O(counter2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[0]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[10]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[11]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[12]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[13]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[14]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[15]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[16]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[16]),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[17]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[17]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[18]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[18]),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[19]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[19]),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[1]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[20]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[20]),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[21]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[21]),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[22]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[22]),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[23]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[23]),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[24]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[24]),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[25]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[25]),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[26]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[26]),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[27]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[27]),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[28]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[28]),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[29]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[29]),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[2]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[30]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[30]),
        .O(p_0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[31]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[31]),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[3]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[4]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[5]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[6]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[7]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[8]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[9]_i_1 
       (.I0(Q),
        .I1(counter1),
        .I2(counter0[9]),
        .O(p_0_in[9]));
  FDCE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[12]),
        .Q(counter[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[12:9]),
        .S(counter[12:9]));
  FDCE \counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[14]),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[15]),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[16]),
        .Q(counter[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_2 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\counter_reg[16]_i_2_n_0 ,\counter_reg[16]_i_2_n_1 ,\counter_reg[16]_i_2_n_2 ,\counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[16:13]),
        .S(counter[16:13]));
  FDCE \counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[17]),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[18]),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[19]),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[20]),
        .Q(counter[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_2 
       (.CI(\counter_reg[16]_i_2_n_0 ),
        .CO({\counter_reg[20]_i_2_n_0 ,\counter_reg[20]_i_2_n_1 ,\counter_reg[20]_i_2_n_2 ,\counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[20:17]),
        .S(counter[20:17]));
  FDCE \counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[21]),
        .Q(counter[21]));
  FDCE \counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[22]),
        .Q(counter[22]));
  FDCE \counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[23]),
        .Q(counter[23]));
  FDCE \counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[24]),
        .Q(counter[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[24]_i_2 
       (.CI(\counter_reg[20]_i_2_n_0 ),
        .CO({\counter_reg[24]_i_2_n_0 ,\counter_reg[24]_i_2_n_1 ,\counter_reg[24]_i_2_n_2 ,\counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[24:21]),
        .S(counter[24:21]));
  FDCE \counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[25]),
        .Q(counter[25]));
  FDCE \counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[26]),
        .Q(counter[26]));
  FDCE \counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[27]),
        .Q(counter[27]));
  FDCE \counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[28]),
        .Q(counter[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[28]_i_2 
       (.CI(\counter_reg[24]_i_2_n_0 ),
        .CO({\counter_reg[28]_i_2_n_0 ,\counter_reg[28]_i_2_n_1 ,\counter_reg[28]_i_2_n_2 ,\counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[28:25]),
        .S(counter[28:25]));
  FDCE \counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[29]),
        .Q(counter[29]));
  FDCE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE \counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[30]),
        .Q(counter[30]));
  FDCE \counter_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[31]),
        .Q(counter[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[31]_i_2 
       (.CI(\counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter_reg[31]_i_2_CO_UNCONNECTED [3:2],\counter_reg[31]_i_2_n_2 ,\counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_2_O_UNCONNECTED [3],counter0[31:29]}),
        .S({1'b0,counter[31:29]}));
  FDCE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[4]),
        .Q(counter[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[4:1]),
        .S(counter[4:1]));
  FDCE \counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[8]),
        .Q(counter[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[8:5]),
        .S(counter[8:5]));
  FDCE \counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(p_0_in[9]),
        .Q(counter[9]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \period_reg[31]_i_1 
       (.I0(\period_reg[31]_i_2_n_0 ),
        .I1(\period_reg[31]_i_3_n_0 ),
        .I2(\period_reg[31]_i_4_n_0 ),
        .I3(\period_reg[31]_i_5_n_0 ),
        .O(period_reg_1));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \period_reg[31]_i_2 
       (.I0(\period_reg_reg[31]_0 [2]),
        .I1(\period_reg_reg[31]_0 [5]),
        .I2(\period_reg_reg[31]_0 [6]),
        .I3(\period_reg_reg[31]_0 [4]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\period_reg_reg[31]_0 [3]),
        .O(\period_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \period_reg[31]_i_3 
       (.I0(\period_reg_reg[31]_0 [7]),
        .I1(\period_reg_reg[31]_0 [10]),
        .I2(\period_reg_reg[31]_0 [11]),
        .I3(\period_reg_reg[31]_0 [9]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\period_reg_reg[31]_0 [8]),
        .O(\period_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \period_reg[31]_i_4 
       (.I0(\period_reg_reg[31]_0 [12]),
        .I1(\period_reg_reg[31]_0 [15]),
        .I2(\period_reg_reg[31]_0 [16]),
        .I3(\period_reg_reg[31]_0 [14]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\period_reg_reg[31]_0 [13]),
        .O(\period_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFCFFFC)) 
    \period_reg[31]_i_5 
       (.I0(\period_reg_reg[31]_0 [0]),
        .I1(\period_reg[31]_i_6_n_0 ),
        .I2(\period_reg[31]_i_7_n_0 ),
        .I3(\period_reg[31]_i_8_n_0 ),
        .I4(\period_reg_reg[31]_0 [1]),
        .I5(\width_reg_reg[0]_0 ),
        .O(\period_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \period_reg[31]_i_6 
       (.I0(\period_reg_reg[31]_0 [22]),
        .I1(\period_reg_reg[31]_0 [25]),
        .I2(\period_reg_reg[31]_0 [26]),
        .I3(\period_reg_reg[31]_0 [24]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\period_reg_reg[31]_0 [23]),
        .O(\period_reg[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \period_reg[31]_i_7 
       (.I0(\period_reg_reg[31]_0 [27]),
        .I1(\period_reg_reg[31]_0 [30]),
        .I2(\period_reg_reg[31]_0 [31]),
        .I3(\period_reg_reg[31]_0 [29]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\period_reg_reg[31]_0 [28]),
        .O(\period_reg[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \period_reg[31]_i_8 
       (.I0(\period_reg_reg[31]_0 [17]),
        .I1(\period_reg_reg[31]_0 [20]),
        .I2(\period_reg_reg[31]_0 [21]),
        .I3(\period_reg_reg[31]_0 [19]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\period_reg_reg[31]_0 [18]),
        .O(\period_reg[31]_i_8_n_0 ));
  FDCE \period_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [0]),
        .Q(period_reg[0]));
  FDCE \period_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [10]),
        .Q(period_reg[10]));
  FDCE \period_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [11]),
        .Q(period_reg[11]));
  FDCE \period_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [12]),
        .Q(period_reg[12]));
  FDPE \period_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [13]),
        .PRE(SR),
        .Q(period_reg[13]));
  FDPE \period_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [14]),
        .PRE(SR),
        .Q(period_reg[14]));
  FDPE \period_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [15]),
        .PRE(SR),
        .Q(period_reg[15]));
  FDPE \period_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [16]),
        .PRE(SR),
        .Q(period_reg[16]));
  FDCE \period_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [17]),
        .Q(period_reg[17]));
  FDPE \period_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [18]),
        .PRE(SR),
        .Q(period_reg[18]));
  FDCE \period_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [19]),
        .Q(period_reg[19]));
  FDCE \period_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [1]),
        .Q(period_reg[1]));
  FDPE \period_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [20]),
        .PRE(SR),
        .Q(period_reg[20]));
  FDPE \period_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [21]),
        .PRE(SR),
        .Q(period_reg[21]));
  FDPE \period_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [22]),
        .PRE(SR),
        .Q(period_reg[22]));
  FDPE \period_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [23]),
        .PRE(SR),
        .Q(period_reg[23]));
  FDPE \period_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [24]),
        .PRE(SR),
        .Q(period_reg[24]));
  FDCE \period_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [25]),
        .Q(period_reg[25]));
  FDPE \period_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [26]),
        .PRE(SR),
        .Q(period_reg[26]));
  FDCE \period_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [27]),
        .Q(period_reg[27]));
  FDCE \period_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [28]),
        .Q(period_reg[28]));
  FDCE \period_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [29]),
        .Q(period_reg[29]));
  FDCE \period_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [2]),
        .Q(period_reg[2]));
  FDCE \period_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [30]),
        .Q(period_reg[30]));
  FDCE \period_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [31]),
        .Q(period_reg[31]));
  FDCE \period_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [3]),
        .Q(period_reg[3]));
  FDCE \period_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [4]),
        .Q(period_reg[4]));
  FDCE \period_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [5]),
        .Q(period_reg[5]));
  FDCE \period_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [6]),
        .Q(period_reg[6]));
  FDCE \period_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [7]),
        .Q(period_reg[7]));
  FDPE \period_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .D(\period_reg_reg[31]_0 [8]),
        .PRE(SR),
        .Q(period_reg[8]));
  FDCE \period_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(period_reg_1),
        .CLR(SR),
        .D(\period_reg_reg[31]_0 [9]),
        .Q(period_reg[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_out0_carry
       (.CI(1'b0),
        .CO({pulse_out0_carry_n_0,pulse_out0_carry_n_1,pulse_out0_carry_n_2,pulse_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_out0_carry_i_1_n_0,pulse_out0_carry_i_2_n_0,pulse_out0_carry_i_3_n_0,pulse_out0_carry_i_4_n_0}),
        .O(NLW_pulse_out0_carry_O_UNCONNECTED[3:0]),
        .S({pulse_out0_carry_i_5_n_0,pulse_out0_carry_i_6_n_0,pulse_out0_carry_i_7_n_0,pulse_out0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_out0_carry__0
       (.CI(pulse_out0_carry_n_0),
        .CO({pulse_out0_carry__0_n_0,pulse_out0_carry__0_n_1,pulse_out0_carry__0_n_2,pulse_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_out0_carry__0_i_1_n_0,pulse_out0_carry__0_i_2_n_0,pulse_out0_carry__0_i_3_n_0,pulse_out0_carry__0_i_4_n_0}),
        .O(NLW_pulse_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({pulse_out0_carry__0_i_5_n_0,pulse_out0_carry__0_i_6_n_0,pulse_out0_carry__0_i_7_n_0,pulse_out0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__0_i_1
       (.I0(width_reg[15]),
        .I1(counter[15]),
        .I2(width_reg[14]),
        .I3(counter[14]),
        .O(pulse_out0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__0_i_2
       (.I0(width_reg[13]),
        .I1(counter[13]),
        .I2(width_reg[12]),
        .I3(counter[12]),
        .O(pulse_out0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__0_i_3
       (.I0(width_reg[11]),
        .I1(counter[11]),
        .I2(width_reg[10]),
        .I3(counter[10]),
        .O(pulse_out0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__0_i_4
       (.I0(width_reg[9]),
        .I1(counter[9]),
        .I2(width_reg[8]),
        .I3(counter[8]),
        .O(pulse_out0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__0_i_5
       (.I0(width_reg[15]),
        .I1(counter[15]),
        .I2(width_reg[14]),
        .I3(counter[14]),
        .O(pulse_out0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__0_i_6
       (.I0(width_reg[13]),
        .I1(counter[13]),
        .I2(width_reg[12]),
        .I3(counter[12]),
        .O(pulse_out0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__0_i_7
       (.I0(width_reg[11]),
        .I1(counter[11]),
        .I2(width_reg[10]),
        .I3(counter[10]),
        .O(pulse_out0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__0_i_8
       (.I0(width_reg[9]),
        .I1(counter[9]),
        .I2(width_reg[8]),
        .I3(counter[8]),
        .O(pulse_out0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_out0_carry__1
       (.CI(pulse_out0_carry__0_n_0),
        .CO({pulse_out0_carry__1_n_0,pulse_out0_carry__1_n_1,pulse_out0_carry__1_n_2,pulse_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_out0_carry__1_i_1_n_0,pulse_out0_carry__1_i_2_n_0,pulse_out0_carry__1_i_3_n_0,pulse_out0_carry__1_i_4_n_0}),
        .O(NLW_pulse_out0_carry__1_O_UNCONNECTED[3:0]),
        .S({pulse_out0_carry__1_i_5_n_0,pulse_out0_carry__1_i_6_n_0,pulse_out0_carry__1_i_7_n_0,pulse_out0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__1_i_1
       (.I0(width_reg[23]),
        .I1(counter[23]),
        .I2(width_reg[22]),
        .I3(counter[22]),
        .O(pulse_out0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__1_i_2
       (.I0(width_reg[21]),
        .I1(counter[21]),
        .I2(width_reg[20]),
        .I3(counter[20]),
        .O(pulse_out0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__1_i_3
       (.I0(width_reg[19]),
        .I1(counter[19]),
        .I2(width_reg[18]),
        .I3(counter[18]),
        .O(pulse_out0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__1_i_4
       (.I0(width_reg[17]),
        .I1(counter[17]),
        .I2(width_reg[16]),
        .I3(counter[16]),
        .O(pulse_out0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__1_i_5
       (.I0(width_reg[23]),
        .I1(counter[23]),
        .I2(width_reg[22]),
        .I3(counter[22]),
        .O(pulse_out0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__1_i_6
       (.I0(width_reg[21]),
        .I1(counter[21]),
        .I2(width_reg[20]),
        .I3(counter[20]),
        .O(pulse_out0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__1_i_7
       (.I0(width_reg[19]),
        .I1(counter[19]),
        .I2(width_reg[18]),
        .I3(counter[18]),
        .O(pulse_out0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__1_i_8
       (.I0(width_reg[17]),
        .I1(counter[17]),
        .I2(width_reg[16]),
        .I3(counter[16]),
        .O(pulse_out0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pulse_out0_carry__2
       (.CI(pulse_out0_carry__1_n_0),
        .CO({pulse_out0_carry__2_n_0,pulse_out0_carry__2_n_1,pulse_out0_carry__2_n_2,pulse_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({pulse_out0_carry__2_i_1_n_0,pulse_out0_carry__2_i_2_n_0,pulse_out0_carry__2_i_3_n_0,pulse_out0_carry__2_i_4_n_0}),
        .O(NLW_pulse_out0_carry__2_O_UNCONNECTED[3:0]),
        .S({pulse_out0_carry__2_i_5_n_0,pulse_out0_carry__2_i_6_n_0,pulse_out0_carry__2_i_7_n_0,pulse_out0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__2_i_1
       (.I0(width_reg[31]),
        .I1(counter[31]),
        .I2(width_reg[30]),
        .I3(counter[30]),
        .O(pulse_out0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__2_i_2
       (.I0(width_reg[29]),
        .I1(counter[29]),
        .I2(width_reg[28]),
        .I3(counter[28]),
        .O(pulse_out0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__2_i_3
       (.I0(width_reg[27]),
        .I1(counter[27]),
        .I2(width_reg[26]),
        .I3(counter[26]),
        .O(pulse_out0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry__2_i_4
       (.I0(width_reg[25]),
        .I1(counter[25]),
        .I2(width_reg[24]),
        .I3(counter[24]),
        .O(pulse_out0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__2_i_5
       (.I0(width_reg[31]),
        .I1(counter[31]),
        .I2(width_reg[30]),
        .I3(counter[30]),
        .O(pulse_out0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__2_i_6
       (.I0(width_reg[29]),
        .I1(counter[29]),
        .I2(width_reg[28]),
        .I3(counter[28]),
        .O(pulse_out0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__2_i_7
       (.I0(width_reg[27]),
        .I1(counter[27]),
        .I2(width_reg[26]),
        .I3(counter[26]),
        .O(pulse_out0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry__2_i_8
       (.I0(width_reg[25]),
        .I1(counter[25]),
        .I2(width_reg[24]),
        .I3(counter[24]),
        .O(pulse_out0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry_i_1
       (.I0(width_reg[7]),
        .I1(counter[7]),
        .I2(width_reg[6]),
        .I3(counter[6]),
        .O(pulse_out0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry_i_2
       (.I0(width_reg[5]),
        .I1(counter[5]),
        .I2(width_reg[4]),
        .I3(counter[4]),
        .O(pulse_out0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry_i_3
       (.I0(width_reg[3]),
        .I1(counter[3]),
        .I2(width_reg[2]),
        .I3(counter[2]),
        .O(pulse_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pulse_out0_carry_i_4
       (.I0(width_reg[1]),
        .I1(counter[1]),
        .I2(width_reg[0]),
        .I3(counter[0]),
        .O(pulse_out0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry_i_5
       (.I0(width_reg[7]),
        .I1(counter[7]),
        .I2(width_reg[6]),
        .I3(counter[6]),
        .O(pulse_out0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry_i_6
       (.I0(width_reg[5]),
        .I1(counter[5]),
        .I2(width_reg[4]),
        .I3(counter[4]),
        .O(pulse_out0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry_i_7
       (.I0(width_reg[3]),
        .I1(counter[3]),
        .I2(width_reg[2]),
        .I3(counter[2]),
        .O(pulse_out0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse_out0_carry_i_8
       (.I0(width_reg[1]),
        .I1(counter[1]),
        .I2(width_reg[0]),
        .I3(counter[0]),
        .O(pulse_out0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pulse_out_i_1
       (.I0(Q),
        .I1(pulse_out0_carry__2_n_0),
        .O(pulse_out_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_out_i_2
       (.I0(s00_axi_aresetn),
        .O(SR));
  FDCE pulse_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pulse_out_i_1_n_0),
        .Q(pulse_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \width_reg[31]_i_1 
       (.I0(\width_reg[31]_i_2_n_0 ),
        .I1(\width_reg[31]_i_3_n_0 ),
        .I2(\width_reg[31]_i_4_n_0 ),
        .I3(\width_reg[31]_i_5_n_0 ),
        .O(width_reg_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \width_reg[31]_i_2 
       (.I0(\width_reg_reg[31]_0 [2]),
        .I1(\width_reg_reg[31]_0 [5]),
        .I2(\width_reg_reg[31]_0 [6]),
        .I3(\width_reg_reg[31]_0 [4]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\width_reg_reg[31]_0 [3]),
        .O(\width_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \width_reg[31]_i_3 
       (.I0(\width_reg_reg[31]_0 [7]),
        .I1(\width_reg_reg[31]_0 [10]),
        .I2(\width_reg_reg[31]_0 [11]),
        .I3(\width_reg_reg[31]_0 [9]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\width_reg_reg[31]_0 [8]),
        .O(\width_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \width_reg[31]_i_4 
       (.I0(\width_reg_reg[31]_0 [12]),
        .I1(\width_reg_reg[31]_0 [15]),
        .I2(\width_reg_reg[31]_0 [16]),
        .I3(\width_reg_reg[31]_0 [14]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\width_reg_reg[31]_0 [13]),
        .O(\width_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCFFFEFFFC)) 
    \width_reg[31]_i_5 
       (.I0(\width_reg_reg[31]_0 [0]),
        .I1(\width_reg[31]_i_6_n_0 ),
        .I2(\width_reg[31]_i_7_n_0 ),
        .I3(\width_reg[31]_i_8_n_0 ),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\width_reg_reg[31]_0 [1]),
        .O(\width_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \width_reg[31]_i_6 
       (.I0(\width_reg_reg[31]_0 [22]),
        .I1(\width_reg_reg[31]_0 [25]),
        .I2(\width_reg_reg[31]_0 [26]),
        .I3(\width_reg_reg[31]_0 [24]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\width_reg_reg[31]_0 [23]),
        .O(\width_reg[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \width_reg[31]_i_7 
       (.I0(\width_reg_reg[31]_0 [27]),
        .I1(\width_reg_reg[31]_0 [30]),
        .I2(\width_reg_reg[31]_0 [31]),
        .I3(\width_reg_reg[31]_0 [29]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\width_reg_reg[31]_0 [28]),
        .O(\width_reg[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \width_reg[31]_i_8 
       (.I0(\width_reg_reg[31]_0 [17]),
        .I1(\width_reg_reg[31]_0 [20]),
        .I2(\width_reg_reg[31]_0 [21]),
        .I3(\width_reg_reg[31]_0 [19]),
        .I4(\width_reg_reg[0]_0 ),
        .I5(\width_reg_reg[31]_0 [18]),
        .O(\width_reg[31]_i_8_n_0 ));
  FDCE \width_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [0]),
        .Q(width_reg[0]));
  FDCE \width_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [10]),
        .Q(width_reg[10]));
  FDCE \width_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [11]),
        .Q(width_reg[11]));
  FDPE \width_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [12]),
        .PRE(SR),
        .Q(width_reg[12]));
  FDPE \width_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [13]),
        .PRE(SR),
        .Q(width_reg[13]));
  FDPE \width_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [14]),
        .PRE(SR),
        .Q(width_reg[14]));
  FDPE \width_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [15]),
        .PRE(SR),
        .Q(width_reg[15]));
  FDCE \width_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [16]),
        .Q(width_reg[16]));
  FDPE \width_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [17]),
        .PRE(SR),
        .Q(width_reg[17]));
  FDCE \width_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [18]),
        .Q(width_reg[18]));
  FDPE \width_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [19]),
        .PRE(SR),
        .Q(width_reg[19]));
  FDCE \width_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [1]),
        .Q(width_reg[1]));
  FDPE \width_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [20]),
        .PRE(SR),
        .Q(width_reg[20]));
  FDPE \width_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [21]),
        .PRE(SR),
        .Q(width_reg[21]));
  FDPE \width_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [22]),
        .PRE(SR),
        .Q(width_reg[22]));
  FDPE \width_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [23]),
        .PRE(SR),
        .Q(width_reg[23]));
  FDCE \width_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [24]),
        .Q(width_reg[24]));
  FDPE \width_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [25]),
        .PRE(SR),
        .Q(width_reg[25]));
  FDCE \width_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [26]),
        .Q(width_reg[26]));
  FDCE \width_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [27]),
        .Q(width_reg[27]));
  FDCE \width_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [28]),
        .Q(width_reg[28]));
  FDCE \width_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [29]),
        .Q(width_reg[29]));
  FDCE \width_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [2]),
        .Q(width_reg[2]));
  FDCE \width_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [30]),
        .Q(width_reg[30]));
  FDCE \width_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [31]),
        .Q(width_reg[31]));
  FDCE \width_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [3]),
        .Q(width_reg[3]));
  FDCE \width_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [4]),
        .Q(width_reg[4]));
  FDCE \width_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [5]),
        .Q(width_reg[5]));
  FDCE \width_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [6]),
        .Q(width_reg[6]));
  FDPE \width_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .D(\width_reg_reg[31]_0 [7]),
        .PRE(SR),
        .Q(width_reg[7]));
  FDCE \width_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [8]),
        .Q(width_reg[8]));
  FDCE \width_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(width_reg_0),
        .CLR(SR),
        .D(\width_reg_reg[31]_0 [9]),
        .Q(width_reg[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
