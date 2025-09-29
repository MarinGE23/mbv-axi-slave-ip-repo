// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Sep 28 22:57:08 2025
// Host        : Emanuel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_perceptron_0_0_sim_netlist.v
// Design      : design_1_axi_perceptron_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    y,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_araddr,
    x1,
    x2,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output y;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input [2:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input x1;
  input x2;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire x1;
  wire x2;
  wire y;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron_slave_lite_v1_0_S00_AXI axi_perceptron_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .x1(x1),
        .x2(x2),
        .y(y));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    y,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_araddr,
    x1,
    x2,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output y;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input [2:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input x1;
  input x2;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire [7:0]in12;
  wire [7:0]in5;
  wire [7:0]in9;
  wire perceptron_inst_n_0;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [0:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
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
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [0:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire [1:0]targets;
  wire x1;
  wire x2;
  wire y;

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
        .R(perceptron_inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(perceptron_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
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
        .R(perceptron_inst_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(perceptron_inst_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[4]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[4]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
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
        .R(perceptron_inst_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(state_write[1]),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(perceptron_inst_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(perceptron_inst_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(perceptron_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFDFF4545)) 
    axi_awready_i_1
       (.I0(state_write[0]),
        .I1(s00_axi_wvalid),
        .I2(state_write[1]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(perceptron_inst_n_0));
  LUT6 #(
    .INIT(64'hAAF2AA22F2AAF2AA)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(s00_axi_wvalid),
        .I3(state_write[1]),
        .I4(axi_awready0__0),
        .I5(state_write[0]),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
        .R(perceptron_inst_n_0));
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
        .R(perceptron_inst_n_0));
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
        .R(perceptron_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_binary_perceptron perceptron_inst
       (.Q({in12,in9,in5,slv_reg3}),
        .\delta_r_reg[6]_0 ({\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,targets,slv_reg0}),
        .\delta_r_reg[7]_0 (slv_reg2[7:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(perceptron_inst_n_0),
        .s00_axi_rdata(s00_axi_rdata[18:0]),
        .s00_axi_rdata_0_sp_1(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_10_sp_1(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_11_sp_1(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_12_sp_1(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_13_sp_1(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_14_sp_1(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_15_sp_1(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_16_sp_1(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_17_sp_1(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_18_sp_1(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_1_sp_1(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_2_sp_1(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_3_sp_1(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_4_sp_1(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_5_sp_1(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_6_sp_1(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_7_sp_1(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_8_sp_1(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_9_sp_1(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .sel0(sel0),
        .st1_carry__0_0(slv_reg1[15:0]),
        .x1(x1),
        .x2(x2),
        .y(y));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg3),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0),
        .I5(slv_reg2[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg1[10]),
        .I1(in5[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[10] ),
        .I5(slv_reg2[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg1[11]),
        .I1(in5[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[11] ),
        .I5(slv_reg2[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg1[12]),
        .I1(in5[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[12] ),
        .I5(slv_reg2[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg1[13]),
        .I1(in5[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[13] ),
        .I5(slv_reg2[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg1[14]),
        .I1(in5[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .I5(slv_reg2[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg1[15]),
        .I1(in5[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[15] ),
        .I5(slv_reg2[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg1[16]),
        .I1(in9[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[16] ),
        .I5(slv_reg2[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg1[17]),
        .I1(in9[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[17] ),
        .I5(slv_reg2[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg1[18]),
        .I1(in9[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[18] ),
        .I5(slv_reg2[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg1[19]),
        .I1(in9[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[19] ),
        .I5(slv_reg2[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(slv_reg1[1]),
        .I1(\slv_reg3_reg_n_0_[1] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[1] ),
        .I5(slv_reg2[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg1[20]),
        .I1(in9[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .I5(slv_reg2[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg1[21]),
        .I1(in9[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .I5(slv_reg2[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg1[22]),
        .I1(in9[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .I5(slv_reg2[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg1[23]),
        .I1(in9[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .I5(slv_reg2[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg1[24]),
        .I1(in12[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[24] ),
        .I5(slv_reg2[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg1[25]),
        .I1(in12[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .I5(slv_reg2[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg1[26]),
        .I1(in12[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .I5(slv_reg2[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg1[27]),
        .I1(in12[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .I5(slv_reg2[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg1[28]),
        .I1(in12[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .I5(slv_reg2[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg1[29]),
        .I1(in12[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .I5(slv_reg2[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(slv_reg1[2]),
        .I1(\slv_reg3_reg_n_0_[2] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[2] ),
        .I5(slv_reg2[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg1[30]),
        .I1(in12[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .I5(slv_reg2[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(sel0[2]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg1[31]),
        .I1(in12[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .I5(slv_reg2[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(slv_reg1[3]),
        .I1(\slv_reg3_reg_n_0_[3] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[3] ),
        .I5(slv_reg2[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(slv_reg1[4]),
        .I1(\slv_reg3_reg_n_0_[4] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(targets[0]),
        .I5(slv_reg2[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(slv_reg1[5]),
        .I1(\slv_reg3_reg_n_0_[5] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(targets[1]),
        .I5(slv_reg2[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(slv_reg1[6]),
        .I1(\slv_reg3_reg_n_0_[6] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[6] ),
        .I5(slv_reg2[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg1[7]),
        .I1(\slv_reg3_reg_n_0_[7] ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[7] ),
        .I5(slv_reg2[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg1[8]),
        .I1(in5[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[8] ),
        .I5(slv_reg2[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg1[9]),
        .I1(in5[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[9] ),
        .I5(slv_reg2[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[1]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(targets[0]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(targets[1]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(perceptron_inst_n_0));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(perceptron_inst_n_0));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(perceptron_inst_n_0));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5050300000003000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[1]),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(in5[2]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(in5[3]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(in5[4]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(in5[5]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(in5[6]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(in5[7]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(in9[0]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(in9[1]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(in9[2]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(in9[3]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(in9[4]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(in9[5]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(in9[6]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(in9[7]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(in12[0]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(in12[1]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(in12[2]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(in12[3]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(in12[4]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(in12[5]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(in12[6]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(in12[7]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(in5[0]),
        .R(perceptron_inst_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(in5[1]),
        .R(perceptron_inst_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_binary_perceptron
   (s00_axi_aresetn_0,
    y,
    s00_axi_rdata,
    s00_axi_aclk,
    Q,
    st1_carry__0_0,
    x1,
    x2,
    \delta_r_reg[6]_0 ,
    \delta_r_reg[7]_0 ,
    sel0,
    s00_axi_rdata_0_sp_1,
    s00_axi_rdata_1_sp_1,
    s00_axi_rdata_2_sp_1,
    s00_axi_rdata_3_sp_1,
    s00_axi_rdata_4_sp_1,
    s00_axi_rdata_5_sp_1,
    s00_axi_rdata_6_sp_1,
    s00_axi_rdata_7_sp_1,
    s00_axi_rdata_8_sp_1,
    s00_axi_rdata_9_sp_1,
    s00_axi_rdata_10_sp_1,
    s00_axi_rdata_11_sp_1,
    s00_axi_rdata_12_sp_1,
    s00_axi_rdata_13_sp_1,
    s00_axi_rdata_14_sp_1,
    s00_axi_rdata_15_sp_1,
    s00_axi_rdata_16_sp_1,
    s00_axi_rdata_17_sp_1,
    s00_axi_rdata_18_sp_1,
    s00_axi_aresetn);
  output s00_axi_aresetn_0;
  output y;
  output [18:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [24:0]Q;
  input [15:0]st1_carry__0_0;
  input x1;
  input x2;
  input [4:0]\delta_r_reg[6]_0 ;
  input [7:0]\delta_r_reg[7]_0 ;
  input [2:0]sel0;
  input s00_axi_rdata_0_sp_1;
  input s00_axi_rdata_1_sp_1;
  input s00_axi_rdata_2_sp_1;
  input s00_axi_rdata_3_sp_1;
  input s00_axi_rdata_4_sp_1;
  input s00_axi_rdata_5_sp_1;
  input s00_axi_rdata_6_sp_1;
  input s00_axi_rdata_7_sp_1;
  input s00_axi_rdata_8_sp_1;
  input s00_axi_rdata_9_sp_1;
  input s00_axi_rdata_10_sp_1;
  input s00_axi_rdata_11_sp_1;
  input s00_axi_rdata_12_sp_1;
  input s00_axi_rdata_13_sp_1;
  input s00_axi_rdata_14_sp_1;
  input s00_axi_rdata_15_sp_1;
  input s00_axi_rdata_16_sp_1;
  input s00_axi_rdata_17_sp_1;
  input s00_axi_rdata_18_sp_1;
  input s00_axi_aresetn;

  wire \FSM_sequential_st[0]_i_1_n_0 ;
  wire \FSM_sequential_st[1]_i_1_n_0 ;
  wire \FSM_sequential_st[2]_i_1_n_0 ;
  wire \FSM_sequential_st[2]_i_2_n_0 ;
  wire [24:0]Q;
  wire any_error_in_ep_i_1_n_0;
  wire any_error_in_ep_i_2_n_0;
  wire any_error_in_ep_i_3_n_0;
  wire any_error_in_ep_i_4_n_0;
  wire any_error_in_ep_reg_n_0;
  wire [7:0]b;
  wire [7:0]b0;
  wire b0_carry__0_i_1_n_0;
  wire b0_carry__0_i_2_n_0;
  wire b0_carry__0_i_3_n_0;
  wire b0_carry__0_i_4_n_0;
  wire b0_carry__0_n_1;
  wire b0_carry__0_n_2;
  wire b0_carry__0_n_3;
  wire b0_carry_i_1_n_0;
  wire b0_carry_i_2_n_0;
  wire b0_carry_i_3_n_0;
  wire b0_carry_i_4_n_0;
  wire b0_carry_n_0;
  wire b0_carry_n_1;
  wire b0_carry_n_2;
  wire b0_carry_n_3;
  wire \b[7]_i_1_n_0 ;
  wire \b[7]_i_3_n_0 ;
  wire \b[7]_i_4_n_0 ;
  wire [7:0]b_o;
  wire \b_o_reg_n_0_[0] ;
  wire \b_o_reg_n_0_[1] ;
  wire \b_o_reg_n_0_[2] ;
  wire \b_o_reg_n_0_[3] ;
  wire \b_o_reg_n_0_[4] ;
  wire \b_o_reg_n_0_[5] ;
  wire \b_o_reg_n_0_[6] ;
  wire \b_o_reg_n_0_[7] ;
  wire \b_reg_n_0_[0] ;
  wire \b_reg_n_0_[1] ;
  wire \b_reg_n_0_[2] ;
  wire \b_reg_n_0_[3] ;
  wire \b_reg_n_0_[4] ;
  wire \b_reg_n_0_[5] ;
  wire \b_reg_n_0_[6] ;
  wire \b_reg_n_0_[7] ;
  wire busy_i_1_n_0;
  wire converged;
  wire converged_i_1_n_0;
  wire converged_i_2_n_0;
  wire [15:0]data5;
  wire [10:1]data7;
  wire [7:0]delta_c;
  wire delta_c10_in;
  wire delta_c2;
  wire [7:0]delta_r;
  wire \delta_r[4]_i_2_n_0 ;
  wire \delta_r[5]_i_2_n_0 ;
  wire \delta_r[6]_i_2_n_0 ;
  wire \delta_r[7]_i_2_n_0 ;
  wire \delta_r[7]_i_3_n_0 ;
  wire \delta_r[7]_i_4_n_0 ;
  wire delta_r_0;
  wire [4:0]\delta_r_reg[6]_0 ;
  wire [7:0]\delta_r_reg[7]_0 ;
  wire done_i_1_n_0;
  wire [15:0]epoch_count;
  wire \epoch_count[15]_i_1_n_0 ;
  wire \epoch_count_reg_n_0_[0] ;
  wire \epoch_count_reg_n_0_[10] ;
  wire \epoch_count_reg_n_0_[11] ;
  wire \epoch_count_reg_n_0_[12] ;
  wire \epoch_count_reg_n_0_[13] ;
  wire \epoch_count_reg_n_0_[14] ;
  wire \epoch_count_reg_n_0_[15] ;
  wire \epoch_count_reg_n_0_[1] ;
  wire \epoch_count_reg_n_0_[2] ;
  wire \epoch_count_reg_n_0_[3] ;
  wire \epoch_count_reg_n_0_[4] ;
  wire \epoch_count_reg_n_0_[5] ;
  wire \epoch_count_reg_n_0_[6] ;
  wire \epoch_count_reg_n_0_[7] ;
  wire \epoch_count_reg_n_0_[8] ;
  wire \epoch_count_reg_n_0_[9] ;
  wire [15:1]in22;
  wire p_1_in;
  wire \pat_idx[0]_i_1_n_0 ;
  wire \pat_idx[1]_i_1_n_0 ;
  wire [8:0]s;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [18:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_rdata_10_sn_1;
  wire s00_axi_rdata_11_sn_1;
  wire s00_axi_rdata_12_sn_1;
  wire s00_axi_rdata_13_sn_1;
  wire s00_axi_rdata_14_sn_1;
  wire s00_axi_rdata_15_sn_1;
  wire s00_axi_rdata_16_sn_1;
  wire s00_axi_rdata_17_sn_1;
  wire s00_axi_rdata_18_sn_1;
  wire s00_axi_rdata_1_sn_1;
  wire s00_axi_rdata_2_sn_1;
  wire s00_axi_rdata_3_sn_1;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rdata_5_sn_1;
  wire s00_axi_rdata_6_sn_1;
  wire s00_axi_rdata_7_sn_1;
  wire s00_axi_rdata_8_sn_1;
  wire s00_axi_rdata_9_sn_1;
  wire s_pred__0_carry__0_i_1_n_0;
  wire s_pred__0_carry__0_i_2_n_0;
  wire s_pred__0_carry__0_i_3_n_0;
  wire s_pred__0_carry__0_i_4_n_0;
  wire s_pred__0_carry__0_i_5_n_0;
  wire s_pred__0_carry__0_i_6_n_0;
  wire s_pred__0_carry__0_i_7_n_0;
  wire s_pred__0_carry__0_i_8_n_0;
  wire s_pred__0_carry__0_n_0;
  wire s_pred__0_carry__0_n_1;
  wire s_pred__0_carry__0_n_2;
  wire s_pred__0_carry__0_n_3;
  wire s_pred__0_carry__0_n_4;
  wire s_pred__0_carry__0_n_5;
  wire s_pred__0_carry__0_n_6;
  wire s_pred__0_carry__0_n_7;
  wire s_pred__0_carry__1_i_1_n_0;
  wire s_pred__0_carry__1_i_2_n_0;
  wire s_pred__0_carry__1_n_2;
  wire s_pred__0_carry__1_n_7;
  wire s_pred__0_carry_i_1_n_0;
  wire s_pred__0_carry_i_2_n_0;
  wire s_pred__0_carry_i_3_n_0;
  wire s_pred__0_carry_i_4_n_0;
  wire s_pred__0_carry_i_5_n_0;
  wire s_pred__0_carry_i_6_n_0;
  wire s_pred__0_carry_i_7_n_0;
  wire s_pred__0_carry_n_0;
  wire s_pred__0_carry_n_1;
  wire s_pred__0_carry_n_2;
  wire s_pred__0_carry_n_3;
  wire s_pred__0_carry_n_4;
  wire s_pred__0_carry_n_5;
  wire s_pred__0_carry_n_6;
  wire s_pred__0_carry_n_7;
  wire s_train__0_carry__0_i_1_n_0;
  wire s_train__0_carry__0_i_2_n_0;
  wire s_train__0_carry__0_i_3_n_0;
  wire s_train__0_carry__0_i_4_n_0;
  wire s_train__0_carry__0_i_5_n_0;
  wire s_train__0_carry__0_i_6_n_0;
  wire s_train__0_carry__0_i_7_n_0;
  wire s_train__0_carry__0_i_8_n_0;
  wire s_train__0_carry__0_n_0;
  wire s_train__0_carry__0_n_1;
  wire s_train__0_carry__0_n_2;
  wire s_train__0_carry__0_n_3;
  wire s_train__0_carry__1_i_1_n_0;
  wire s_train__0_carry__1_i_2_n_0;
  wire s_train__0_carry__1_n_2;
  wire s_train__0_carry_i_1_n_0;
  wire s_train__0_carry_i_2_n_0;
  wire s_train__0_carry_i_3_n_0;
  wire s_train__0_carry_i_4_n_0;
  wire s_train__0_carry_i_5_n_0;
  wire s_train__0_carry_i_6_n_0;
  wire s_train__0_carry_i_7_n_0;
  wire s_train__0_carry_n_0;
  wire s_train__0_carry_n_1;
  wire s_train__0_carry_n_2;
  wire s_train__0_carry_n_3;
  wire [2:0]sel0;
  wire [2:0]st;
  wire [15:0]st1_carry__0_0;
  wire st1_carry__0_i_1_n_0;
  wire st1_carry__0_i_2_n_0;
  wire st1_carry__0_i_3_n_0;
  wire st1_carry__0_i_4_n_0;
  wire st1_carry__0_i_5_n_0;
  wire st1_carry__0_i_6_n_0;
  wire st1_carry__0_i_7_n_0;
  wire st1_carry__0_i_8_n_0;
  wire st1_carry__0_n_0;
  wire st1_carry__0_n_1;
  wire st1_carry__0_n_2;
  wire st1_carry__0_n_3;
  wire st1_carry_i_1_n_0;
  wire st1_carry_i_2_n_0;
  wire st1_carry_i_3_n_0;
  wire st1_carry_i_4_n_0;
  wire st1_carry_i_5_n_0;
  wire st1_carry_i_6_n_0;
  wire st1_carry_i_7_n_0;
  wire st1_carry_i_8_n_0;
  wire st1_carry_n_0;
  wire st1_carry_n_1;
  wire st1_carry_n_2;
  wire st1_carry_n_3;
  wire st2_carry__0_n_0;
  wire st2_carry__0_n_1;
  wire st2_carry__0_n_2;
  wire st2_carry__0_n_3;
  wire st2_carry__1_n_0;
  wire st2_carry__1_n_1;
  wire st2_carry__1_n_2;
  wire st2_carry__1_n_3;
  wire st2_carry__2_n_2;
  wire st2_carry__2_n_3;
  wire st2_carry_n_0;
  wire st2_carry_n_1;
  wire st2_carry_n_2;
  wire st2_carry_n_3;
  wire [18:17]status_reg;
  wire step_fn_return;
  wire \sum_dbg[9]_i_1_n_0 ;
  wire sx1;
  wire sx1_r_reg_n_0;
  wire sx2;
  wire sx2_r;
  wire [7:0]w1;
  wire [7:0]w10;
  wire w10_carry__0_i_1_n_0;
  wire w10_carry__0_i_2_n_0;
  wire w10_carry__0_i_3_n_0;
  wire w10_carry__0_i_4_n_0;
  wire w10_carry__0_n_1;
  wire w10_carry__0_n_2;
  wire w10_carry__0_n_3;
  wire w10_carry_i_1_n_0;
  wire w10_carry_i_2_n_0;
  wire w10_carry_i_3_n_0;
  wire w10_carry_i_4_n_0;
  wire w10_carry_n_0;
  wire w10_carry_n_1;
  wire w10_carry_n_2;
  wire w10_carry_n_3;
  wire \w1[7]_i_1_n_0 ;
  wire \w1[7]_i_3_n_0 ;
  wire [7:0]w1_o0_in;
  wire \w1_o[7]_i_1_n_0 ;
  wire \w1_reg_n_0_[0] ;
  wire \w1_reg_n_0_[1] ;
  wire \w1_reg_n_0_[2] ;
  wire \w1_reg_n_0_[3] ;
  wire \w1_reg_n_0_[4] ;
  wire \w1_reg_n_0_[5] ;
  wire \w1_reg_n_0_[6] ;
  wire \w1_reg_n_0_[7] ;
  wire [7:0]w2;
  wire [7:0]w20;
  wire w20_carry__0_i_1_n_0;
  wire w20_carry__0_i_2_n_0;
  wire w20_carry__0_i_3_n_0;
  wire w20_carry__0_i_4_n_0;
  wire w20_carry__0_n_1;
  wire w20_carry__0_n_2;
  wire w20_carry__0_n_3;
  wire w20_carry_i_1_n_0;
  wire w20_carry_i_2_n_0;
  wire w20_carry_i_3_n_0;
  wire w20_carry_i_4_n_0;
  wire w20_carry_n_0;
  wire w20_carry_n_1;
  wire w20_carry_n_2;
  wire w20_carry_n_3;
  wire [7:0]w20_in;
  wire \w2[7]_i_1_n_0 ;
  wire \w2[7]_i_3_n_0 ;
  wire \w2[7]_i_4_n_0 ;
  wire \w2[7]_i_5_n_0 ;
  wire [7:0]w2_o;
  wire x1;
  wire x2;
  wire y;
  wire y_i_3_n_0;
  wire [3:3]NLW_b0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_s_pred__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_s_pred__0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_s_train__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_s_train__0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_st1_carry_O_UNCONNECTED;
  wire [3:0]NLW_st1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_st2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_st2_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_w10_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_w20_carry__0_CO_UNCONNECTED;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  assign s00_axi_rdata_10_sn_1 = s00_axi_rdata_10_sp_1;
  assign s00_axi_rdata_11_sn_1 = s00_axi_rdata_11_sp_1;
  assign s00_axi_rdata_12_sn_1 = s00_axi_rdata_12_sp_1;
  assign s00_axi_rdata_13_sn_1 = s00_axi_rdata_13_sp_1;
  assign s00_axi_rdata_14_sn_1 = s00_axi_rdata_14_sp_1;
  assign s00_axi_rdata_15_sn_1 = s00_axi_rdata_15_sp_1;
  assign s00_axi_rdata_16_sn_1 = s00_axi_rdata_16_sp_1;
  assign s00_axi_rdata_17_sn_1 = s00_axi_rdata_17_sp_1;
  assign s00_axi_rdata_18_sn_1 = s00_axi_rdata_18_sp_1;
  assign s00_axi_rdata_1_sn_1 = s00_axi_rdata_1_sp_1;
  assign s00_axi_rdata_2_sn_1 = s00_axi_rdata_2_sp_1;
  assign s00_axi_rdata_3_sn_1 = s00_axi_rdata_3_sp_1;
  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  assign s00_axi_rdata_5_sn_1 = s00_axi_rdata_5_sp_1;
  assign s00_axi_rdata_6_sn_1 = s00_axi_rdata_6_sp_1;
  assign s00_axi_rdata_7_sn_1 = s00_axi_rdata_7_sp_1;
  assign s00_axi_rdata_8_sn_1 = s00_axi_rdata_8_sp_1;
  assign s00_axi_rdata_9_sn_1 = s00_axi_rdata_9_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC30E)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(\delta_r_reg[6]_0 [0]),
        .I1(st[1]),
        .I2(st[0]),
        .I3(st[2]),
        .O(\FSM_sequential_st[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F07FF0)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(sx2),
        .I1(sx1),
        .I2(st[1]),
        .I3(st[0]),
        .I4(st[2]),
        .O(\FSM_sequential_st[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFBB0F000000)) 
    \FSM_sequential_st[2]_i_1 
       (.I0(st1_carry__0_n_0),
        .I1(any_error_in_ep_reg_n_0),
        .I2(\FSM_sequential_st[2]_i_2_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(st[2]),
        .O(\FSM_sequential_st[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_st[2]_i_2 
       (.I0(sx1),
        .I1(sx2),
        .O(\FSM_sequential_st[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_UPDATE:011,S_SAMPLE:010,S_CHECK:100,S_EPOCH:001,S_DONE:101" *) 
  FDCE \FSM_sequential_st_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_sequential_st[0]_i_1_n_0 ),
        .Q(st[0]));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_UPDATE:011,S_SAMPLE:010,S_CHECK:100,S_EPOCH:001,S_DONE:101" *) 
  FDCE \FSM_sequential_st_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_sequential_st[1]_i_1_n_0 ),
        .Q(st[1]));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_UPDATE:011,S_SAMPLE:010,S_CHECK:100,S_EPOCH:001,S_DONE:101" *) 
  FDCE \FSM_sequential_st_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_sequential_st[2]_i_1_n_0 ),
        .Q(st[2]));
  LUT6 #(
    .INIT(64'hFFFFEEEE00004440)) 
    any_error_in_ep_i_1
       (.I0(st[2]),
        .I1(st[1]),
        .I2(any_error_in_ep_i_2_n_0),
        .I3(any_error_in_ep_i_3_n_0),
        .I4(any_error_in_ep_i_4_n_0),
        .I5(any_error_in_ep_reg_n_0),
        .O(any_error_in_ep_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFEFF00FE00)) 
    any_error_in_ep_i_2
       (.I0(\delta_r_reg[7]_0 [1]),
        .I1(\delta_r_reg[7]_0 [0]),
        .I2(\delta_r_reg[7]_0 [2]),
        .I3(delta_c2),
        .I4(\delta_r_reg[7]_0 [3]),
        .I5(delta_c10_in),
        .O(any_error_in_ep_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    any_error_in_ep_i_3
       (.I0(delta_c[7]),
        .I1(delta_c[4]),
        .I2(delta_c[6]),
        .I3(delta_c[5]),
        .O(any_error_in_ep_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    any_error_in_ep_i_4
       (.I0(\delta_r_reg[6]_0 [0]),
        .I1(st[1]),
        .I2(st[0]),
        .O(any_error_in_ep_i_4_n_0));
  FDCE any_error_in_ep_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(any_error_in_ep_i_1_n_0),
        .Q(any_error_in_ep_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b0_carry
       (.CI(1'b0),
        .CO({b0_carry_n_0,b0_carry_n_1,b0_carry_n_2,b0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\b_reg_n_0_[3] ,\b_reg_n_0_[2] ,\b_reg_n_0_[1] ,\b_reg_n_0_[0] }),
        .O(b0[3:0]),
        .S({b0_carry_i_1_n_0,b0_carry_i_2_n_0,b0_carry_i_3_n_0,b0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b0_carry__0
       (.CI(b0_carry_n_0),
        .CO({NLW_b0_carry__0_CO_UNCONNECTED[3],b0_carry__0_n_1,b0_carry__0_n_2,b0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\b_reg_n_0_[6] ,\b_reg_n_0_[5] ,\b_reg_n_0_[4] }),
        .O(b0[7:4]),
        .S({b0_carry__0_i_1_n_0,b0_carry__0_i_2_n_0,b0_carry__0_i_3_n_0,b0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    b0_carry__0_i_1
       (.I0(\b_reg_n_0_[7] ),
        .I1(delta_r[7]),
        .O(b0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b0_carry__0_i_2
       (.I0(\b_reg_n_0_[6] ),
        .I1(delta_r[6]),
        .O(b0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b0_carry__0_i_3
       (.I0(\b_reg_n_0_[5] ),
        .I1(delta_r[5]),
        .O(b0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b0_carry__0_i_4
       (.I0(\b_reg_n_0_[4] ),
        .I1(delta_r[4]),
        .O(b0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b0_carry_i_1
       (.I0(\b_reg_n_0_[3] ),
        .I1(delta_r[3]),
        .O(b0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b0_carry_i_2
       (.I0(\b_reg_n_0_[2] ),
        .I1(delta_r[2]),
        .O(b0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b0_carry_i_3
       (.I0(\b_reg_n_0_[1] ),
        .I1(delta_r[1]),
        .O(b0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b0_carry_i_4
       (.I0(\b_reg_n_0_[0] ),
        .I1(delta_r[0]),
        .O(b0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \b[0]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\b[7]_i_3_n_0 ),
        .I3(b0[0]),
        .I4(Q[17]),
        .I5(\b[7]_i_4_n_0 ),
        .O(b[0]));
  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \b[1]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\b[7]_i_3_n_0 ),
        .I3(b0[1]),
        .I4(Q[18]),
        .I5(\b[7]_i_4_n_0 ),
        .O(b[1]));
  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \b[2]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\b[7]_i_3_n_0 ),
        .I3(b0[2]),
        .I4(Q[19]),
        .I5(\b[7]_i_4_n_0 ),
        .O(b[2]));
  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \b[3]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\b[7]_i_3_n_0 ),
        .I3(b0[3]),
        .I4(Q[20]),
        .I5(\b[7]_i_4_n_0 ),
        .O(b[3]));
  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \b[4]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\b[7]_i_3_n_0 ),
        .I3(b0[4]),
        .I4(Q[21]),
        .I5(\b[7]_i_4_n_0 ),
        .O(b[4]));
  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \b[5]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\b[7]_i_3_n_0 ),
        .I3(b0[5]),
        .I4(Q[22]),
        .I5(\b[7]_i_4_n_0 ),
        .O(b[5]));
  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \b[6]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\b[7]_i_3_n_0 ),
        .I3(b0[6]),
        .I4(Q[23]),
        .I5(\b[7]_i_4_n_0 ),
        .O(b[6]));
  LUT5 #(
    .INIT(32'hFFFF0070)) 
    \b[7]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(Q[0]),
        .I3(status_reg[18]),
        .I4(\b[7]_i_3_n_0 ),
        .O(\b[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \b[7]_i_2 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\b[7]_i_3_n_0 ),
        .I3(b0[7]),
        .I4(Q[24]),
        .I5(\b[7]_i_4_n_0 ),
        .O(b[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \b[7]_i_3 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(st[2]),
        .I3(\w2[7]_i_4_n_0 ),
        .O(\b[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h343C)) 
    \b[7]_i_4 
       (.I0(\w2[7]_i_4_n_0 ),
        .I1(st[1]),
        .I2(st[2]),
        .I3(st[0]),
        .O(\b[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \b_o[0]_i_1 
       (.I0(\b_reg_n_0_[0] ),
        .I1(Q[17]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(b_o[0]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \b_o[1]_i_1 
       (.I0(\b_reg_n_0_[1] ),
        .I1(Q[18]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(b_o[1]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \b_o[2]_i_1 
       (.I0(\b_reg_n_0_[2] ),
        .I1(Q[19]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(b_o[2]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \b_o[3]_i_1 
       (.I0(\b_reg_n_0_[3] ),
        .I1(Q[20]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(b_o[3]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \b_o[4]_i_1 
       (.I0(\b_reg_n_0_[4] ),
        .I1(Q[21]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(b_o[4]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \b_o[5]_i_1 
       (.I0(\b_reg_n_0_[5] ),
        .I1(Q[22]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(b_o[5]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \b_o[6]_i_1 
       (.I0(\b_reg_n_0_[6] ),
        .I1(Q[23]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(b_o[6]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \b_o[7]_i_1 
       (.I0(\b_reg_n_0_[7] ),
        .I1(Q[24]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(b_o[7]));
  FDCE \b_o_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b_o[0]),
        .Q(\b_o_reg_n_0_[0] ));
  FDCE \b_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b_o[1]),
        .Q(\b_o_reg_n_0_[1] ));
  FDCE \b_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b_o[2]),
        .Q(\b_o_reg_n_0_[2] ));
  FDCE \b_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b_o[3]),
        .Q(\b_o_reg_n_0_[3] ));
  FDCE \b_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b_o[4]),
        .Q(\b_o_reg_n_0_[4] ));
  FDCE \b_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b_o[5]),
        .Q(\b_o_reg_n_0_[5] ));
  FDCE \b_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b_o[6]),
        .Q(\b_o_reg_n_0_[6] ));
  FDCE \b_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b_o[7]),
        .Q(\b_o_reg_n_0_[7] ));
  FDCE \b_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\b[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b[0]),
        .Q(\b_reg_n_0_[0] ));
  FDCE \b_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\b[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b[1]),
        .Q(\b_reg_n_0_[1] ));
  FDCE \b_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\b[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b[2]),
        .Q(\b_reg_n_0_[2] ));
  FDCE \b_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\b[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b[3]),
        .Q(\b_reg_n_0_[3] ));
  FDCE \b_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\b[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b[4]),
        .Q(\b_reg_n_0_[4] ));
  FDCE \b_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\b[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b[5]),
        .Q(\b_reg_n_0_[5] ));
  FDCE \b_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\b[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b[6]),
        .Q(\b_reg_n_0_[6] ));
  FDCE \b_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\b[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(b[7]),
        .Q(\b_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF3FE0002)) 
    busy_i_1
       (.I0(\delta_r_reg[6]_0 [0]),
        .I1(st[2]),
        .I2(st[1]),
        .I3(st[0]),
        .I4(status_reg[18]),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(busy_i_1_n_0),
        .Q(status_reg[18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    converged_i_1
       (.I0(st[1]),
        .I1(st[2]),
        .I2(any_error_in_ep_reg_n_0),
        .I3(converged_i_2_n_0),
        .I4(converged),
        .O(converged_i_1_n_0));
  LUT6 #(
    .INIT(64'h000D000D000F0000)) 
    converged_i_2
       (.I0(any_error_in_ep_reg_n_0),
        .I1(st1_carry__0_n_0),
        .I2(st[1]),
        .I3(st[0]),
        .I4(\delta_r_reg[6]_0 [0]),
        .I5(st[2]),
        .O(converged_i_2_n_0));
  FDCE converged_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(converged_i_1_n_0),
        .Q(converged));
  LUT3 #(
    .INIT(8'hC8)) 
    \delta_r[0]_i_1 
       (.I0(delta_c10_in),
        .I1(\delta_r_reg[7]_0 [0]),
        .I2(delta_c2),
        .O(delta_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF048)) 
    \delta_r[1]_i_1 
       (.I0(\delta_r_reg[7]_0 [0]),
        .I1(delta_c2),
        .I2(\delta_r_reg[7]_0 [1]),
        .I3(delta_c10_in),
        .O(delta_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF0010E0)) 
    \delta_r[2]_i_1 
       (.I0(\delta_r_reg[7]_0 [0]),
        .I1(\delta_r_reg[7]_0 [1]),
        .I2(delta_c2),
        .I3(\delta_r_reg[7]_0 [2]),
        .I4(delta_c10_in),
        .O(delta_c[2]));
  LUT6 #(
    .INIT(64'hFFFF00000100FE00)) 
    \delta_r[3]_i_1 
       (.I0(\delta_r_reg[7]_0 [1]),
        .I1(\delta_r_reg[7]_0 [0]),
        .I2(\delta_r_reg[7]_0 [2]),
        .I3(delta_c2),
        .I4(\delta_r_reg[7]_0 [3]),
        .I5(delta_c10_in),
        .O(delta_c[3]));
  LUT6 #(
    .INIT(64'h00000000FEFF0000)) 
    \delta_r[3]_i_2 
       (.I0(s[2]),
        .I1(s[1]),
        .I2(s[0]),
        .I3(\delta_r[7]_i_4_n_0 ),
        .I4(s_train__0_carry__1_n_2),
        .I5(p_1_in),
        .O(delta_c2));
  LUT6 #(
    .INIT(64'h0100FFFF00000000)) 
    \delta_r[3]_i_3 
       (.I0(s[2]),
        .I1(s[1]),
        .I2(s[0]),
        .I3(\delta_r[7]_i_4_n_0 ),
        .I4(s_train__0_carry__1_n_2),
        .I5(p_1_in),
        .O(delta_c10_in));
  LUT6 #(
    .INIT(64'hC0FF2A0000001500)) 
    \delta_r[4]_i_1 
       (.I0(\delta_r[4]_i_2_n_0 ),
        .I1(\delta_r[7]_i_3_n_0 ),
        .I2(\delta_r[7]_i_4_n_0 ),
        .I3(s_train__0_carry__1_n_2),
        .I4(p_1_in),
        .I5(\delta_r_reg[7]_0 [4]),
        .O(delta_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \delta_r[4]_i_2 
       (.I0(\delta_r_reg[7]_0 [2]),
        .I1(\delta_r_reg[7]_0 [0]),
        .I2(\delta_r_reg[7]_0 [1]),
        .I3(\delta_r_reg[7]_0 [3]),
        .O(\delta_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0FF2A0000001500)) 
    \delta_r[5]_i_1 
       (.I0(\delta_r[5]_i_2_n_0 ),
        .I1(\delta_r[7]_i_3_n_0 ),
        .I2(\delta_r[7]_i_4_n_0 ),
        .I3(s_train__0_carry__1_n_2),
        .I4(p_1_in),
        .I5(\delta_r_reg[7]_0 [5]),
        .O(delta_c[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \delta_r[5]_i_2 
       (.I0(\delta_r_reg[7]_0 [3]),
        .I1(\delta_r_reg[7]_0 [1]),
        .I2(\delta_r_reg[7]_0 [0]),
        .I3(\delta_r_reg[7]_0 [2]),
        .I4(\delta_r_reg[7]_0 [4]),
        .O(\delta_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0FF2A0000001500)) 
    \delta_r[6]_i_1 
       (.I0(\delta_r[6]_i_2_n_0 ),
        .I1(\delta_r[7]_i_3_n_0 ),
        .I2(\delta_r[7]_i_4_n_0 ),
        .I3(s_train__0_carry__1_n_2),
        .I4(p_1_in),
        .I5(\delta_r_reg[7]_0 [6]),
        .O(delta_c[6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \delta_r[6]_i_2 
       (.I0(\delta_r_reg[7]_0 [4]),
        .I1(\delta_r_reg[7]_0 [2]),
        .I2(\delta_r_reg[7]_0 [0]),
        .I3(\delta_r_reg[7]_0 [1]),
        .I4(\delta_r_reg[7]_0 [3]),
        .I5(\delta_r_reg[7]_0 [5]),
        .O(\delta_r[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0FF2A0000001500)) 
    \delta_r[7]_i_1 
       (.I0(\delta_r[7]_i_2_n_0 ),
        .I1(\delta_r[7]_i_3_n_0 ),
        .I2(\delta_r[7]_i_4_n_0 ),
        .I3(s_train__0_carry__1_n_2),
        .I4(p_1_in),
        .I5(\delta_r_reg[7]_0 [7]),
        .O(delta_c[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \delta_r[7]_i_2 
       (.I0(\delta_r[6]_i_2_n_0 ),
        .I1(\delta_r_reg[7]_0 [6]),
        .O(\delta_r[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \delta_r[7]_i_3 
       (.I0(s[2]),
        .I1(s[1]),
        .I2(s[0]),
        .O(\delta_r[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \delta_r[7]_i_4 
       (.I0(s[3]),
        .I1(s[4]),
        .I2(s[5]),
        .I3(s[6]),
        .I4(s[8]),
        .I5(s[7]),
        .O(\delta_r[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \delta_r[7]_i_5 
       (.I0(\delta_r_reg[6]_0 [4]),
        .I1(\delta_r_reg[6]_0 [3]),
        .I2(sx1),
        .I3(\delta_r_reg[6]_0 [1]),
        .I4(sx2),
        .I5(\delta_r_reg[6]_0 [2]),
        .O(p_1_in));
  FDCE \delta_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(delta_c[0]),
        .Q(delta_r[0]));
  FDCE \delta_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(delta_c[1]),
        .Q(delta_r[1]));
  FDCE \delta_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(delta_c[2]),
        .Q(delta_r[2]));
  FDCE \delta_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(delta_c[3]),
        .Q(delta_r[3]));
  FDCE \delta_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(delta_c[4]),
        .Q(delta_r[4]));
  FDCE \delta_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(delta_c[5]),
        .Q(delta_r[5]));
  FDCE \delta_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(delta_c[6]),
        .Q(delta_r[6]));
  FDCE \delta_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(delta_c[7]),
        .Q(delta_r[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE020)) 
    done_i_1
       (.I0(st[0]),
        .I1(st[1]),
        .I2(st[2]),
        .I3(status_reg[17]),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(done_i_1_n_0),
        .Q(status_reg[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \epoch_count[0]_i_1 
       (.I0(st[2]),
        .I1(\epoch_count_reg_n_0_[0] ),
        .O(epoch_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[10]_i_1 
       (.I0(st[2]),
        .I1(in22[10]),
        .O(epoch_count[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[11]_i_1 
       (.I0(st[2]),
        .I1(in22[11]),
        .O(epoch_count[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[12]_i_1 
       (.I0(st[2]),
        .I1(in22[12]),
        .O(epoch_count[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[13]_i_1 
       (.I0(st[2]),
        .I1(in22[13]),
        .O(epoch_count[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[14]_i_1 
       (.I0(st[2]),
        .I1(in22[14]),
        .O(epoch_count[14]));
  LUT4 #(
    .INIT(16'h000E)) 
    \epoch_count[15]_i_1 
       (.I0(\delta_r_reg[6]_0 [0]),
        .I1(st[2]),
        .I2(st[0]),
        .I3(st[1]),
        .O(\epoch_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[15]_i_2 
       (.I0(st[2]),
        .I1(in22[15]),
        .O(epoch_count[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[1]_i_1 
       (.I0(st[2]),
        .I1(in22[1]),
        .O(epoch_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[2]_i_1 
       (.I0(st[2]),
        .I1(in22[2]),
        .O(epoch_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[3]_i_1 
       (.I0(st[2]),
        .I1(in22[3]),
        .O(epoch_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[4]_i_1 
       (.I0(st[2]),
        .I1(in22[4]),
        .O(epoch_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[5]_i_1 
       (.I0(st[2]),
        .I1(in22[5]),
        .O(epoch_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[6]_i_1 
       (.I0(st[2]),
        .I1(in22[6]),
        .O(epoch_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[7]_i_1 
       (.I0(st[2]),
        .I1(in22[7]),
        .O(epoch_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[8]_i_1 
       (.I0(st[2]),
        .I1(in22[8]),
        .O(epoch_count[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \epoch_count[9]_i_1 
       (.I0(st[2]),
        .I1(in22[9]),
        .O(epoch_count[9]));
  FDCE \epoch_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[0]),
        .Q(\epoch_count_reg_n_0_[0] ));
  FDCE \epoch_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[10]),
        .Q(\epoch_count_reg_n_0_[10] ));
  FDCE \epoch_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[11]),
        .Q(\epoch_count_reg_n_0_[11] ));
  FDCE \epoch_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[12]),
        .Q(\epoch_count_reg_n_0_[12] ));
  FDCE \epoch_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[13]),
        .Q(\epoch_count_reg_n_0_[13] ));
  FDCE \epoch_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[14]),
        .Q(\epoch_count_reg_n_0_[14] ));
  FDCE \epoch_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[15]),
        .Q(\epoch_count_reg_n_0_[15] ));
  FDCE \epoch_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[1]),
        .Q(\epoch_count_reg_n_0_[1] ));
  FDCE \epoch_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[2]),
        .Q(\epoch_count_reg_n_0_[2] ));
  FDCE \epoch_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[3]),
        .Q(\epoch_count_reg_n_0_[3] ));
  FDCE \epoch_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[4]),
        .Q(\epoch_count_reg_n_0_[4] ));
  FDCE \epoch_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[5]),
        .Q(\epoch_count_reg_n_0_[5] ));
  FDCE \epoch_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[6]),
        .Q(\epoch_count_reg_n_0_[6] ));
  FDCE \epoch_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[7]),
        .Q(\epoch_count_reg_n_0_[7] ));
  FDCE \epoch_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[8]),
        .Q(\epoch_count_reg_n_0_[8] ));
  FDCE \epoch_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\epoch_count[15]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(epoch_count[9]),
        .Q(\epoch_count_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAADAAADAAA00AA0A)) 
    \pat_idx[0]_i_1 
       (.I0(sx2),
        .I1(sx1),
        .I2(st[0]),
        .I3(st[2]),
        .I4(\delta_r_reg[6]_0 [0]),
        .I5(st[1]),
        .O(\pat_idx[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCECCCECCC00CC0C)) 
    \pat_idx[1]_i_1 
       (.I0(sx2),
        .I1(sx1),
        .I2(st[0]),
        .I3(st[2]),
        .I4(\delta_r_reg[6]_0 [0]),
        .I5(st[1]),
        .O(\pat_idx[1]_i_1_n_0 ));
  FDCE \pat_idx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\pat_idx[0]_i_1_n_0 ),
        .Q(sx2));
  FDCE \pat_idx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\pat_idx[1]_i_1_n_0 ),
        .Q(sx1));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(s00_axi_rdata_0_sn_1),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(data5[0]),
        .I1(y),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\epoch_count_reg_n_0_[0] ),
        .I5(\b_o_reg_n_0_[0] ),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0 
       (.I0(s00_axi_rdata_10_sn_1),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\epoch_count_reg_n_0_[10] ),
        .I1(data5[10]),
        .I2(data7[10]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(s00_axi_rdata_11_sn_1),
        .I1(\epoch_count_reg_n_0_[11] ),
        .I2(data5[11]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(s00_axi_rdata_12_sn_1),
        .I1(\epoch_count_reg_n_0_[12] ),
        .I2(data5[12]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(s00_axi_rdata_13_sn_1),
        .I1(\epoch_count_reg_n_0_[13] ),
        .I2(data5[13]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(s00_axi_rdata_14_sn_1),
        .I1(\epoch_count_reg_n_0_[14] ),
        .I2(data5[14]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(s00_axi_rdata_15_sn_1),
        .I1(\epoch_count_reg_n_0_[15] ),
        .I2(data5[15]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(converged),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_rdata_16_sn_1),
        .O(s00_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(status_reg[17]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_rdata_17_sn_1),
        .O(s00_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(status_reg[18]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_rdata_18_sn_1),
        .O(s00_axi_rdata[18]));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(s00_axi_rdata_1_sn_1),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(data5[1]),
        .I1(data7[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\epoch_count_reg_n_0_[1] ),
        .I5(\b_o_reg_n_0_[1] ),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(s00_axi_rdata_2_sn_1),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(data5[2]),
        .I1(data7[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\epoch_count_reg_n_0_[2] ),
        .I5(\b_o_reg_n_0_[2] ),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(s00_axi_rdata_3_sn_1),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(data5[3]),
        .I1(data7[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\epoch_count_reg_n_0_[3] ),
        .I5(\b_o_reg_n_0_[3] ),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(s00_axi_rdata_4_sn_1),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(data5[4]),
        .I1(data7[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\epoch_count_reg_n_0_[4] ),
        .I5(\b_o_reg_n_0_[4] ),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0 
       (.I0(s00_axi_rdata_5_sn_1),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(data5[5]),
        .I1(data7[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\epoch_count_reg_n_0_[5] ),
        .I5(\b_o_reg_n_0_[5] ),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0 
       (.I0(s00_axi_rdata_6_sn_1),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(data5[6]),
        .I1(data7[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\epoch_count_reg_n_0_[6] ),
        .I5(\b_o_reg_n_0_[6] ),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[7]_INST_0 
       (.I0(s00_axi_rdata_7_sn_1),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(data5[7]),
        .I1(data7[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\epoch_count_reg_n_0_[7] ),
        .I5(\b_o_reg_n_0_[7] ),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0 
       (.I0(s00_axi_rdata_8_sn_1),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\epoch_count_reg_n_0_[8] ),
        .I1(data5[8]),
        .I2(data7[8]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0 
       (.I0(s00_axi_rdata_9_sn_1),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hF0CC00AA)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\epoch_count_reg_n_0_[9] ),
        .I1(data5[9]),
        .I2(data7[9]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  CARRY4 s_pred__0_carry
       (.CI(1'b0),
        .CO({s_pred__0_carry_n_0,s_pred__0_carry_n_1,s_pred__0_carry_n_2,s_pred__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_pred__0_carry_i_1_n_0,s_pred__0_carry_i_2_n_0,s_pred__0_carry_i_3_n_0,1'b0}),
        .O({s_pred__0_carry_n_4,s_pred__0_carry_n_5,s_pred__0_carry_n_6,s_pred__0_carry_n_7}),
        .S({s_pred__0_carry_i_4_n_0,s_pred__0_carry_i_5_n_0,s_pred__0_carry_i_6_n_0,s_pred__0_carry_i_7_n_0}));
  CARRY4 s_pred__0_carry__0
       (.CI(s_pred__0_carry_n_0),
        .CO({s_pred__0_carry__0_n_0,s_pred__0_carry__0_n_1,s_pred__0_carry__0_n_2,s_pred__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({s_pred__0_carry__0_i_1_n_0,s_pred__0_carry__0_i_2_n_0,s_pred__0_carry__0_i_3_n_0,s_pred__0_carry__0_i_4_n_0}),
        .O({s_pred__0_carry__0_n_4,s_pred__0_carry__0_n_5,s_pred__0_carry__0_n_6,s_pred__0_carry__0_n_7}),
        .S({s_pred__0_carry__0_i_5_n_0,s_pred__0_carry__0_i_6_n_0,s_pred__0_carry__0_i_7_n_0,s_pred__0_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h87777888)) 
    s_pred__0_carry__0_i_1
       (.I0(\w1_reg_n_0_[7] ),
        .I1(x1),
        .I2(x2),
        .I3(w2[7]),
        .I4(\b_reg_n_0_[7] ),
        .O(s_pred__0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_pred__0_carry__0_i_2
       (.I0(\w1_reg_n_0_[5] ),
        .I1(x1),
        .I2(x2),
        .I3(w2[5]),
        .I4(\b_reg_n_0_[5] ),
        .O(s_pred__0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_pred__0_carry__0_i_3
       (.I0(\w1_reg_n_0_[4] ),
        .I1(x1),
        .I2(x2),
        .I3(w2[4]),
        .I4(\b_reg_n_0_[4] ),
        .O(s_pred__0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_pred__0_carry__0_i_4
       (.I0(\w1_reg_n_0_[3] ),
        .I1(x1),
        .I2(x2),
        .I3(w2[3]),
        .I4(\b_reg_n_0_[3] ),
        .O(s_pred__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h56666AAA6AAA6AAA)) 
    s_pred__0_carry__0_i_5
       (.I0(s_pred__0_carry__0_i_1_n_0),
        .I1(\b_reg_n_0_[6] ),
        .I2(w2[6]),
        .I3(x2),
        .I4(x1),
        .I5(\w1_reg_n_0_[6] ),
        .O(s_pred__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_pred__0_carry__0_i_6
       (.I0(s_pred__0_carry__0_i_2_n_0),
        .I1(\b_reg_n_0_[6] ),
        .I2(w2[6]),
        .I3(x2),
        .I4(x1),
        .I5(\w1_reg_n_0_[6] ),
        .O(s_pred__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_pred__0_carry__0_i_7
       (.I0(s_pred__0_carry__0_i_3_n_0),
        .I1(\b_reg_n_0_[5] ),
        .I2(w2[5]),
        .I3(x2),
        .I4(x1),
        .I5(\w1_reg_n_0_[5] ),
        .O(s_pred__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_pred__0_carry__0_i_8
       (.I0(s_pred__0_carry__0_i_4_n_0),
        .I1(\b_reg_n_0_[4] ),
        .I2(w2[4]),
        .I3(x2),
        .I4(x1),
        .I5(\w1_reg_n_0_[4] ),
        .O(s_pred__0_carry__0_i_8_n_0));
  CARRY4 s_pred__0_carry__1
       (.CI(s_pred__0_carry__0_n_0),
        .CO({NLW_s_pred__0_carry__1_CO_UNCONNECTED[3:2],s_pred__0_carry__1_n_2,NLW_s_pred__0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_pred__0_carry__1_i_1_n_0}),
        .O({NLW_s_pred__0_carry__1_O_UNCONNECTED[3:1],s_pred__0_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_pred__0_carry__1_i_2_n_0}));
  LUT5 #(
    .INIT(32'h00878787)) 
    s_pred__0_carry__1_i_1
       (.I0(x2),
        .I1(w2[7]),
        .I2(\b_reg_n_0_[7] ),
        .I3(\w1_reg_n_0_[7] ),
        .I4(x1),
        .O(s_pred__0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFFF888)) 
    s_pred__0_carry__1_i_2
       (.I0(x1),
        .I1(\w1_reg_n_0_[7] ),
        .I2(x2),
        .I3(w2[7]),
        .I4(\b_reg_n_0_[7] ),
        .O(s_pred__0_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_pred__0_carry_i_1
       (.I0(\w1_reg_n_0_[2] ),
        .I1(x1),
        .I2(x2),
        .I3(w2[2]),
        .I4(\b_reg_n_0_[2] ),
        .O(s_pred__0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_pred__0_carry_i_2
       (.I0(\w1_reg_n_0_[1] ),
        .I1(x1),
        .I2(x2),
        .I3(w2[1]),
        .I4(\b_reg_n_0_[1] ),
        .O(s_pred__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_pred__0_carry_i_3
       (.I0(\w1_reg_n_0_[0] ),
        .I1(x1),
        .I2(x2),
        .I3(w2[0]),
        .I4(\b_reg_n_0_[0] ),
        .O(s_pred__0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_pred__0_carry_i_4
       (.I0(s_pred__0_carry_i_1_n_0),
        .I1(\b_reg_n_0_[3] ),
        .I2(w2[3]),
        .I3(x2),
        .I4(x1),
        .I5(\w1_reg_n_0_[3] ),
        .O(s_pred__0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_pred__0_carry_i_5
       (.I0(s_pred__0_carry_i_2_n_0),
        .I1(\b_reg_n_0_[2] ),
        .I2(w2[2]),
        .I3(x2),
        .I4(x1),
        .I5(\w1_reg_n_0_[2] ),
        .O(s_pred__0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_pred__0_carry_i_6
       (.I0(s_pred__0_carry_i_3_n_0),
        .I1(\b_reg_n_0_[1] ),
        .I2(w2[1]),
        .I3(x2),
        .I4(x1),
        .I5(\w1_reg_n_0_[1] ),
        .O(s_pred__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h87777888)) 
    s_pred__0_carry_i_7
       (.I0(\w1_reg_n_0_[0] ),
        .I1(x1),
        .I2(x2),
        .I3(w2[0]),
        .I4(\b_reg_n_0_[0] ),
        .O(s_pred__0_carry_i_7_n_0));
  CARRY4 s_train__0_carry
       (.CI(1'b0),
        .CO({s_train__0_carry_n_0,s_train__0_carry_n_1,s_train__0_carry_n_2,s_train__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_train__0_carry_i_1_n_0,s_train__0_carry_i_2_n_0,s_train__0_carry_i_3_n_0,1'b0}),
        .O(s[3:0]),
        .S({s_train__0_carry_i_4_n_0,s_train__0_carry_i_5_n_0,s_train__0_carry_i_6_n_0,s_train__0_carry_i_7_n_0}));
  CARRY4 s_train__0_carry__0
       (.CI(s_train__0_carry_n_0),
        .CO({s_train__0_carry__0_n_0,s_train__0_carry__0_n_1,s_train__0_carry__0_n_2,s_train__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({s_train__0_carry__0_i_1_n_0,s_train__0_carry__0_i_2_n_0,s_train__0_carry__0_i_3_n_0,s_train__0_carry__0_i_4_n_0}),
        .O(s[7:4]),
        .S({s_train__0_carry__0_i_5_n_0,s_train__0_carry__0_i_6_n_0,s_train__0_carry__0_i_7_n_0,s_train__0_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h87777888)) 
    s_train__0_carry__0_i_1
       (.I0(\w1_reg_n_0_[7] ),
        .I1(sx1),
        .I2(sx2),
        .I3(w2[7]),
        .I4(\b_reg_n_0_[7] ),
        .O(s_train__0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_train__0_carry__0_i_2
       (.I0(\w1_reg_n_0_[5] ),
        .I1(sx1),
        .I2(sx2),
        .I3(w2[5]),
        .I4(\b_reg_n_0_[5] ),
        .O(s_train__0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_train__0_carry__0_i_3
       (.I0(\w1_reg_n_0_[4] ),
        .I1(sx1),
        .I2(sx2),
        .I3(w2[4]),
        .I4(\b_reg_n_0_[4] ),
        .O(s_train__0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_train__0_carry__0_i_4
       (.I0(\w1_reg_n_0_[3] ),
        .I1(sx1),
        .I2(sx2),
        .I3(w2[3]),
        .I4(\b_reg_n_0_[3] ),
        .O(s_train__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h56666AAA6AAA6AAA)) 
    s_train__0_carry__0_i_5
       (.I0(s_train__0_carry__0_i_1_n_0),
        .I1(\b_reg_n_0_[6] ),
        .I2(w2[6]),
        .I3(sx2),
        .I4(sx1),
        .I5(\w1_reg_n_0_[6] ),
        .O(s_train__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_train__0_carry__0_i_6
       (.I0(s_train__0_carry__0_i_2_n_0),
        .I1(\b_reg_n_0_[6] ),
        .I2(w2[6]),
        .I3(sx2),
        .I4(sx1),
        .I5(\w1_reg_n_0_[6] ),
        .O(s_train__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_train__0_carry__0_i_7
       (.I0(s_train__0_carry__0_i_3_n_0),
        .I1(\b_reg_n_0_[5] ),
        .I2(w2[5]),
        .I3(sx2),
        .I4(sx1),
        .I5(\w1_reg_n_0_[5] ),
        .O(s_train__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_train__0_carry__0_i_8
       (.I0(s_train__0_carry__0_i_4_n_0),
        .I1(\b_reg_n_0_[4] ),
        .I2(w2[4]),
        .I3(sx2),
        .I4(sx1),
        .I5(\w1_reg_n_0_[4] ),
        .O(s_train__0_carry__0_i_8_n_0));
  CARRY4 s_train__0_carry__1
       (.CI(s_train__0_carry__0_n_0),
        .CO({NLW_s_train__0_carry__1_CO_UNCONNECTED[3:2],s_train__0_carry__1_n_2,NLW_s_train__0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_train__0_carry__1_i_1_n_0}),
        .O({NLW_s_train__0_carry__1_O_UNCONNECTED[3:1],s[8]}),
        .S({1'b0,1'b0,1'b1,s_train__0_carry__1_i_2_n_0}));
  LUT5 #(
    .INIT(32'h00878787)) 
    s_train__0_carry__1_i_1
       (.I0(sx2),
        .I1(w2[7]),
        .I2(\b_reg_n_0_[7] ),
        .I3(\w1_reg_n_0_[7] ),
        .I4(sx1),
        .O(s_train__0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFFF888)) 
    s_train__0_carry__1_i_2
       (.I0(sx1),
        .I1(\w1_reg_n_0_[7] ),
        .I2(sx2),
        .I3(w2[7]),
        .I4(\b_reg_n_0_[7] ),
        .O(s_train__0_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_train__0_carry_i_1
       (.I0(\w1_reg_n_0_[2] ),
        .I1(sx1),
        .I2(sx2),
        .I3(w2[2]),
        .I4(\b_reg_n_0_[2] ),
        .O(s_train__0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_train__0_carry_i_2
       (.I0(\w1_reg_n_0_[1] ),
        .I1(sx1),
        .I2(sx2),
        .I3(w2[1]),
        .I4(\b_reg_n_0_[1] ),
        .O(s_train__0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hF8888000)) 
    s_train__0_carry_i_3
       (.I0(\w1_reg_n_0_[0] ),
        .I1(sx1),
        .I2(sx2),
        .I3(w2[0]),
        .I4(\b_reg_n_0_[0] ),
        .O(s_train__0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_train__0_carry_i_4
       (.I0(s_train__0_carry_i_1_n_0),
        .I1(\b_reg_n_0_[3] ),
        .I2(w2[3]),
        .I3(sx2),
        .I4(sx1),
        .I5(\w1_reg_n_0_[3] ),
        .O(s_train__0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_train__0_carry_i_5
       (.I0(s_train__0_carry_i_2_n_0),
        .I1(\b_reg_n_0_[2] ),
        .I2(w2[2]),
        .I3(sx2),
        .I4(sx1),
        .I5(\w1_reg_n_0_[2] ),
        .O(s_train__0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    s_train__0_carry_i_6
       (.I0(s_train__0_carry_i_3_n_0),
        .I1(\b_reg_n_0_[1] ),
        .I2(w2[1]),
        .I3(sx2),
        .I4(sx1),
        .I5(\w1_reg_n_0_[1] ),
        .O(s_train__0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h87777888)) 
    s_train__0_carry_i_7
       (.I0(\w1_reg_n_0_[0] ),
        .I1(sx1),
        .I2(sx2),
        .I3(w2[0]),
        .I4(\b_reg_n_0_[0] ),
        .O(s_train__0_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 st1_carry
       (.CI(1'b0),
        .CO({st1_carry_n_0,st1_carry_n_1,st1_carry_n_2,st1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({st1_carry_i_1_n_0,st1_carry_i_2_n_0,st1_carry_i_3_n_0,st1_carry_i_4_n_0}),
        .O(NLW_st1_carry_O_UNCONNECTED[3:0]),
        .S({st1_carry_i_5_n_0,st1_carry_i_6_n_0,st1_carry_i_7_n_0,st1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 st1_carry__0
       (.CI(st1_carry_n_0),
        .CO({st1_carry__0_n_0,st1_carry__0_n_1,st1_carry__0_n_2,st1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({st1_carry__0_i_1_n_0,st1_carry__0_i_2_n_0,st1_carry__0_i_3_n_0,st1_carry__0_i_4_n_0}),
        .O(NLW_st1_carry__0_O_UNCONNECTED[3:0]),
        .S({st1_carry__0_i_5_n_0,st1_carry__0_i_6_n_0,st1_carry__0_i_7_n_0,st1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    st1_carry__0_i_1
       (.I0(in22[14]),
        .I1(st1_carry__0_0[14]),
        .I2(st1_carry__0_0[15]),
        .I3(in22[15]),
        .O(st1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    st1_carry__0_i_2
       (.I0(in22[12]),
        .I1(st1_carry__0_0[12]),
        .I2(st1_carry__0_0[13]),
        .I3(in22[13]),
        .O(st1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    st1_carry__0_i_3
       (.I0(in22[10]),
        .I1(st1_carry__0_0[10]),
        .I2(st1_carry__0_0[11]),
        .I3(in22[11]),
        .O(st1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    st1_carry__0_i_4
       (.I0(in22[8]),
        .I1(st1_carry__0_0[8]),
        .I2(st1_carry__0_0[9]),
        .I3(in22[9]),
        .O(st1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    st1_carry__0_i_5
       (.I0(st1_carry__0_0[15]),
        .I1(in22[15]),
        .I2(in22[14]),
        .I3(st1_carry__0_0[14]),
        .O(st1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    st1_carry__0_i_6
       (.I0(st1_carry__0_0[13]),
        .I1(in22[13]),
        .I2(in22[12]),
        .I3(st1_carry__0_0[12]),
        .O(st1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    st1_carry__0_i_7
       (.I0(st1_carry__0_0[11]),
        .I1(in22[11]),
        .I2(in22[10]),
        .I3(st1_carry__0_0[10]),
        .O(st1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    st1_carry__0_i_8
       (.I0(st1_carry__0_0[9]),
        .I1(in22[9]),
        .I2(in22[8]),
        .I3(st1_carry__0_0[8]),
        .O(st1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    st1_carry_i_1
       (.I0(in22[6]),
        .I1(st1_carry__0_0[6]),
        .I2(st1_carry__0_0[7]),
        .I3(in22[7]),
        .O(st1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    st1_carry_i_2
       (.I0(in22[4]),
        .I1(st1_carry__0_0[4]),
        .I2(st1_carry__0_0[5]),
        .I3(in22[5]),
        .O(st1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    st1_carry_i_3
       (.I0(in22[2]),
        .I1(st1_carry__0_0[2]),
        .I2(st1_carry__0_0[3]),
        .I3(in22[3]),
        .O(st1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h1F01)) 
    st1_carry_i_4
       (.I0(st1_carry__0_0[0]),
        .I1(\epoch_count_reg_n_0_[0] ),
        .I2(st1_carry__0_0[1]),
        .I3(in22[1]),
        .O(st1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    st1_carry_i_5
       (.I0(st1_carry__0_0[7]),
        .I1(in22[7]),
        .I2(in22[6]),
        .I3(st1_carry__0_0[6]),
        .O(st1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    st1_carry_i_6
       (.I0(st1_carry__0_0[5]),
        .I1(in22[5]),
        .I2(in22[4]),
        .I3(st1_carry__0_0[4]),
        .O(st1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    st1_carry_i_7
       (.I0(st1_carry__0_0[3]),
        .I1(in22[3]),
        .I2(in22[2]),
        .I3(st1_carry__0_0[2]),
        .O(st1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    st1_carry_i_8
       (.I0(st1_carry__0_0[1]),
        .I1(in22[1]),
        .I2(st1_carry__0_0[0]),
        .I3(\epoch_count_reg_n_0_[0] ),
        .O(st1_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 st2_carry
       (.CI(1'b0),
        .CO({st2_carry_n_0,st2_carry_n_1,st2_carry_n_2,st2_carry_n_3}),
        .CYINIT(\epoch_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[4:1]),
        .S({\epoch_count_reg_n_0_[4] ,\epoch_count_reg_n_0_[3] ,\epoch_count_reg_n_0_[2] ,\epoch_count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 st2_carry__0
       (.CI(st2_carry_n_0),
        .CO({st2_carry__0_n_0,st2_carry__0_n_1,st2_carry__0_n_2,st2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[8:5]),
        .S({\epoch_count_reg_n_0_[8] ,\epoch_count_reg_n_0_[7] ,\epoch_count_reg_n_0_[6] ,\epoch_count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 st2_carry__1
       (.CI(st2_carry__0_n_0),
        .CO({st2_carry__1_n_0,st2_carry__1_n_1,st2_carry__1_n_2,st2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[12:9]),
        .S({\epoch_count_reg_n_0_[12] ,\epoch_count_reg_n_0_[11] ,\epoch_count_reg_n_0_[10] ,\epoch_count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 st2_carry__2
       (.CI(st2_carry__1_n_0),
        .CO({NLW_st2_carry__2_CO_UNCONNECTED[3:2],st2_carry__2_n_2,st2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_st2_carry__2_O_UNCONNECTED[3],in22[15:13]}),
        .S({1'b0,\epoch_count_reg_n_0_[15] ,\epoch_count_reg_n_0_[14] ,\epoch_count_reg_n_0_[13] }));
  LUT1 #(
    .INIT(2'h1)) 
    \sum_dbg[9]_i_1 
       (.I0(s_pred__0_carry__1_n_2),
        .O(\sum_dbg[9]_i_1_n_0 ));
  FDCE \sum_dbg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry_n_7),
        .Q(data7[1]));
  FDCE \sum_dbg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry_n_6),
        .Q(data7[2]));
  FDCE \sum_dbg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry_n_5),
        .Q(data7[3]));
  FDCE \sum_dbg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry_n_4),
        .Q(data7[4]));
  FDCE \sum_dbg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry__0_n_7),
        .Q(data7[5]));
  FDCE \sum_dbg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry__0_n_6),
        .Q(data7[6]));
  FDCE \sum_dbg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry__0_n_5),
        .Q(data7[7]));
  FDCE \sum_dbg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry__0_n_4),
        .Q(data7[8]));
  FDCE \sum_dbg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(s_pred__0_carry__1_n_7),
        .Q(data7[9]));
  FDCE \sum_dbg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\sum_dbg[9]_i_1_n_0 ),
        .Q(data7[10]));
  LUT3 #(
    .INIT(8'h04)) 
    sx1_r_i_1
       (.I0(st[2]),
        .I1(st[1]),
        .I2(st[0]),
        .O(delta_r_0));
  FDCE sx1_r_reg
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(sx1),
        .Q(sx1_r_reg_n_0));
  FDCE sx2_r_reg
       (.C(s00_axi_aclk),
        .CE(delta_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(sx2),
        .Q(sx2_r));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 w10_carry
       (.CI(1'b0),
        .CO({w10_carry_n_0,w10_carry_n_1,w10_carry_n_2,w10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\w1_reg_n_0_[3] ,\w1_reg_n_0_[2] ,\w1_reg_n_0_[1] ,\w1_reg_n_0_[0] }),
        .O(w10[3:0]),
        .S({w10_carry_i_1_n_0,w10_carry_i_2_n_0,w10_carry_i_3_n_0,w10_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 w10_carry__0
       (.CI(w10_carry_n_0),
        .CO({NLW_w10_carry__0_CO_UNCONNECTED[3],w10_carry__0_n_1,w10_carry__0_n_2,w10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\w1_reg_n_0_[6] ,\w1_reg_n_0_[5] ,\w1_reg_n_0_[4] }),
        .O(w10[7:4]),
        .S({w10_carry__0_i_1_n_0,w10_carry__0_i_2_n_0,w10_carry__0_i_3_n_0,w10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    w10_carry__0_i_1
       (.I0(\w1_reg_n_0_[7] ),
        .I1(delta_r[7]),
        .O(w10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w10_carry__0_i_2
       (.I0(\w1_reg_n_0_[6] ),
        .I1(delta_r[6]),
        .O(w10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w10_carry__0_i_3
       (.I0(\w1_reg_n_0_[5] ),
        .I1(delta_r[5]),
        .O(w10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w10_carry__0_i_4
       (.I0(\w1_reg_n_0_[4] ),
        .I1(delta_r[4]),
        .O(w10_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w10_carry_i_1
       (.I0(\w1_reg_n_0_[3] ),
        .I1(delta_r[3]),
        .O(w10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w10_carry_i_2
       (.I0(\w1_reg_n_0_[2] ),
        .I1(delta_r[2]),
        .O(w10_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w10_carry_i_3
       (.I0(\w1_reg_n_0_[1] ),
        .I1(delta_r[1]),
        .O(w10_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w10_carry_i_4
       (.I0(\w1_reg_n_0_[0] ),
        .I1(delta_r[0]),
        .O(w10_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w1[0]_i_1 
       (.I0(w10[0]),
        .I1(\w1[7]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w1[0]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w1[1]_i_1 
       (.I0(w10[1]),
        .I1(\w1[7]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w1[1]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w1[2]_i_1 
       (.I0(w10[2]),
        .I1(\w1[7]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w1[2]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w1[3]_i_1 
       (.I0(w10[3]),
        .I1(\w1[7]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w1[3]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w1[4]_i_1 
       (.I0(w10[4]),
        .I1(\w1[7]_i_3_n_0 ),
        .I2(Q[5]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w1[4]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w1[5]_i_1 
       (.I0(w10[5]),
        .I1(\w1[7]_i_3_n_0 ),
        .I2(Q[6]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w1[5]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w1[6]_i_1 
       (.I0(w10[6]),
        .I1(\w1[7]_i_3_n_0 ),
        .I2(Q[7]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w1[6]));
  LUT6 #(
    .INIT(64'h100010003F3F1000)) 
    \w1[7]_i_1 
       (.I0(\w1[7]_i_3_n_0 ),
        .I1(st[2]),
        .I2(st[1]),
        .I3(st[0]),
        .I4(Q[0]),
        .I5(status_reg[18]),
        .O(\w1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w1[7]_i_2 
       (.I0(w10[7]),
        .I1(\w1[7]_i_3_n_0 ),
        .I2(Q[8]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w1[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \w1[7]_i_3 
       (.I0(\w2[7]_i_4_n_0 ),
        .I1(sx1_r_reg_n_0),
        .O(\w1[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w1_o[0]_i_1 
       (.I0(\w1_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w1_o0_in[0]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w1_o[1]_i_1 
       (.I0(\w1_reg_n_0_[1] ),
        .I1(Q[2]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w1_o0_in[1]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w1_o[2]_i_1 
       (.I0(\w1_reg_n_0_[2] ),
        .I1(Q[3]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w1_o0_in[2]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w1_o[3]_i_1 
       (.I0(\w1_reg_n_0_[3] ),
        .I1(Q[4]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w1_o0_in[3]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w1_o[4]_i_1 
       (.I0(\w1_reg_n_0_[4] ),
        .I1(Q[5]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w1_o0_in[4]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w1_o[5]_i_1 
       (.I0(\w1_reg_n_0_[5] ),
        .I1(Q[6]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w1_o0_in[5]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w1_o[6]_i_1 
       (.I0(\w1_reg_n_0_[6] ),
        .I1(Q[7]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w1_o0_in[6]));
  LUT5 #(
    .INIT(32'h20203F20)) 
    \w1_o[7]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(st[2]),
        .I3(Q[0]),
        .I4(status_reg[18]),
        .O(\w1_o[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w1_o[7]_i_2 
       (.I0(\w1_reg_n_0_[7] ),
        .I1(Q[8]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w1_o0_in[7]));
  FDCE \w1_o_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1_o0_in[0]),
        .Q(data5[0]));
  FDCE \w1_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1_o0_in[1]),
        .Q(data5[1]));
  FDCE \w1_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1_o0_in[2]),
        .Q(data5[2]));
  FDCE \w1_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1_o0_in[3]),
        .Q(data5[3]));
  FDCE \w1_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1_o0_in[4]),
        .Q(data5[4]));
  FDCE \w1_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1_o0_in[5]),
        .Q(data5[5]));
  FDCE \w1_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1_o0_in[6]),
        .Q(data5[6]));
  FDCE \w1_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1_o0_in[7]),
        .Q(data5[7]));
  FDCE \w1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\w1[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1[0]),
        .Q(\w1_reg_n_0_[0] ));
  FDCE \w1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\w1[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1[1]),
        .Q(\w1_reg_n_0_[1] ));
  FDCE \w1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\w1[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1[2]),
        .Q(\w1_reg_n_0_[2] ));
  FDCE \w1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\w1[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1[3]),
        .Q(\w1_reg_n_0_[3] ));
  FDCE \w1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\w1[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1[4]),
        .Q(\w1_reg_n_0_[4] ));
  FDCE \w1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\w1[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1[5]),
        .Q(\w1_reg_n_0_[5] ));
  FDCE \w1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\w1[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1[6]),
        .Q(\w1_reg_n_0_[6] ));
  FDCE \w1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\w1[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w1[7]),
        .Q(\w1_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 w20_carry
       (.CI(1'b0),
        .CO({w20_carry_n_0,w20_carry_n_1,w20_carry_n_2,w20_carry_n_3}),
        .CYINIT(1'b0),
        .DI(w2[3:0]),
        .O(w20[3:0]),
        .S({w20_carry_i_1_n_0,w20_carry_i_2_n_0,w20_carry_i_3_n_0,w20_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 w20_carry__0
       (.CI(w20_carry_n_0),
        .CO({NLW_w20_carry__0_CO_UNCONNECTED[3],w20_carry__0_n_1,w20_carry__0_n_2,w20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,w2[6:4]}),
        .O(w20[7:4]),
        .S({w20_carry__0_i_1_n_0,w20_carry__0_i_2_n_0,w20_carry__0_i_3_n_0,w20_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    w20_carry__0_i_1
       (.I0(w2[7]),
        .I1(delta_r[7]),
        .O(w20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w20_carry__0_i_2
       (.I0(w2[6]),
        .I1(delta_r[6]),
        .O(w20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w20_carry__0_i_3
       (.I0(w2[5]),
        .I1(delta_r[5]),
        .O(w20_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w20_carry__0_i_4
       (.I0(w2[4]),
        .I1(delta_r[4]),
        .O(w20_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w20_carry_i_1
       (.I0(w2[3]),
        .I1(delta_r[3]),
        .O(w20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w20_carry_i_2
       (.I0(w2[2]),
        .I1(delta_r[2]),
        .O(w20_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w20_carry_i_3
       (.I0(w2[1]),
        .I1(delta_r[1]),
        .O(w20_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    w20_carry_i_4
       (.I0(w2[0]),
        .I1(delta_r[0]),
        .O(w20_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w2[0]_i_1 
       (.I0(w20[0]),
        .I1(\w2[7]_i_3_n_0 ),
        .I2(Q[9]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w20_in[0]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w2[1]_i_1 
       (.I0(w20[1]),
        .I1(\w2[7]_i_3_n_0 ),
        .I2(Q[10]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w20_in[1]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w2[2]_i_1 
       (.I0(w20[2]),
        .I1(\w2[7]_i_3_n_0 ),
        .I2(Q[11]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w20_in[2]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w2[3]_i_1 
       (.I0(w20[3]),
        .I1(\w2[7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w20_in[3]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w2[4]_i_1 
       (.I0(w20[4]),
        .I1(\w2[7]_i_3_n_0 ),
        .I2(Q[13]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w20_in[4]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w2[5]_i_1 
       (.I0(w20[5]),
        .I1(\w2[7]_i_3_n_0 ),
        .I2(Q[14]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w20_in[5]));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w2[6]_i_1 
       (.I0(w20[6]),
        .I1(\w2[7]_i_3_n_0 ),
        .I2(Q[15]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w20_in[6]));
  LUT6 #(
    .INIT(64'h100010003F3F1000)) 
    \w2[7]_i_1 
       (.I0(\w2[7]_i_3_n_0 ),
        .I1(st[2]),
        .I2(st[1]),
        .I3(st[0]),
        .I4(Q[0]),
        .I5(status_reg[18]),
        .O(\w2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E2F0F0F0F0F0)) 
    \w2[7]_i_2 
       (.I0(w20[7]),
        .I1(\w2[7]_i_3_n_0 ),
        .I2(Q[16]),
        .I3(st[0]),
        .I4(st[2]),
        .I5(st[1]),
        .O(w20_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \w2[7]_i_3 
       (.I0(sx2_r),
        .I1(\w2[7]_i_4_n_0 ),
        .O(\w2[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \w2[7]_i_4 
       (.I0(delta_r[7]),
        .I1(delta_r[6]),
        .I2(delta_r[4]),
        .I3(delta_r[5]),
        .I4(\w2[7]_i_5_n_0 ),
        .O(\w2[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \w2[7]_i_5 
       (.I0(delta_r[1]),
        .I1(delta_r[0]),
        .I2(delta_r[3]),
        .I3(delta_r[2]),
        .O(\w2[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w2_o[0]_i_1 
       (.I0(w2[0]),
        .I1(Q[9]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w2_o[0]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w2_o[1]_i_1 
       (.I0(w2[1]),
        .I1(Q[10]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w2_o[1]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w2_o[2]_i_1 
       (.I0(w2[2]),
        .I1(Q[11]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w2_o[2]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w2_o[3]_i_1 
       (.I0(w2[3]),
        .I1(Q[12]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w2_o[3]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w2_o[4]_i_1 
       (.I0(w2[4]),
        .I1(Q[13]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w2_o[4]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w2_o[5]_i_1 
       (.I0(w2[5]),
        .I1(Q[14]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w2_o[5]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w2_o[6]_i_1 
       (.I0(w2[6]),
        .I1(Q[15]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w2_o[6]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \w2_o[7]_i_1 
       (.I0(w2[7]),
        .I1(Q[16]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .O(w2_o[7]));
  FDCE \w2_o_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w2_o[0]),
        .Q(data5[8]));
  FDCE \w2_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w2_o[1]),
        .Q(data5[9]));
  FDCE \w2_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w2_o[2]),
        .Q(data5[10]));
  FDCE \w2_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w2_o[3]),
        .Q(data5[11]));
  FDCE \w2_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w2_o[4]),
        .Q(data5[12]));
  FDCE \w2_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w2_o[5]),
        .Q(data5[13]));
  FDCE \w2_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w2_o[6]),
        .Q(data5[14]));
  FDCE \w2_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\w1_o[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w2_o[7]),
        .Q(data5[15]));
  FDCE \w2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\w2[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w20_in[0]),
        .Q(w2[0]));
  FDCE \w2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\w2[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w20_in[1]),
        .Q(w2[1]));
  FDCE \w2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\w2[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w20_in[2]),
        .Q(w2[2]));
  FDCE \w2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\w2[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w20_in[3]),
        .Q(w2[3]));
  FDCE \w2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\w2[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w20_in[4]),
        .Q(w2[4]));
  FDCE \w2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\w2[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w20_in[5]),
        .Q(w2[5]));
  FDCE \w2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\w2[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w20_in[6]),
        .Q(w2[6]));
  FDCE \w2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\w2[7]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(w20_in[7]),
        .Q(w2[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    y_i_1
       (.I0(s_pred__0_carry__0_n_7),
        .I1(s_pred__0_carry__0_n_6),
        .I2(s_pred__0_carry_n_5),
        .I3(s_pred__0_carry_n_4),
        .I4(y_i_3_n_0),
        .I5(s_pred__0_carry__1_n_2),
        .O(step_fn_return));
  LUT1 #(
    .INIT(2'h1)) 
    y_i_2
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    y_i_3
       (.I0(s_pred__0_carry__1_n_7),
        .I1(s_pred__0_carry_n_7),
        .I2(s_pred__0_carry_n_6),
        .I3(s_pred__0_carry__0_n_5),
        .I4(s_pred__0_carry__0_n_4),
        .O(y_i_3_n_0));
  FDCE y_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(step_fn_return),
        .Q(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_perceptron_0_0,axi_perceptron,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_perceptron,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (x1,
    x2,
    y,
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
  input x1;
  input x2;
  output y;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
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
  wire x1;
  wire x2;
  wire y;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .x1(x1),
        .x2(x2),
        .y(y));
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
