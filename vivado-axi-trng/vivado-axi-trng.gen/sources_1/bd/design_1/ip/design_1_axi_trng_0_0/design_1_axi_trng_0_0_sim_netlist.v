// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Oct  2 04:55:21 2025
// Host        : Emanuel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/emari/Desktop/mbv-axi-slave-ip-repo/vivado-axi-trng/vivado-axi-trng.gen/sources_1/bd/design_1/ip/design_1_axi_trng_0_0/design_1_axi_trng_0_0_sim_netlist.v
// Design      : design_1_axi_trng_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_trng_0_0,axi_trng,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_trng,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_axi_trng_0_0
   (s00_axi_aclk,
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

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_trng_0_0_axi_trng inst
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
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_trng" *) 
module design_1_axi_trng_0_0_axi_trng
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire apt_fail_i_1_n_0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg;
  wire axi_trng_slave_lite_v1_0_S00_AXI_inst_n_0;
  wire axi_trng_slave_lite_v1_0_S00_AXI_inst_n_20;
  wire axi_trng_slave_lite_v1_0_S00_AXI_inst_n_21;
  wire axi_trng_slave_lite_v1_0_S00_AXI_inst_n_22;
  wire axi_trng_slave_lite_v1_0_S00_AXI_inst_n_23;
  wire axi_wready_i_1_n_0;
  wire first_bit_i_1_n_0;
  wire have_first_i_1_n_0;
  wire health_ok_i_1_n_0;
  wire last_bit_i_1_n_0;
  wire out_bit_i_1_n_0;
  wire rct_fail_i_1_n_0;
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
  wire [1:0]slv_reg0;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire trng_apt_fail;
  wire \trng_core_inst/first_bit ;
  wire \trng_core_inst/last_bit ;
  wire [0:0]\trng_core_inst/p_0_in__0 ;
  wire \trng_core_inst/ro_sync_1 ;
  wire \trng_core_inst/u_vn/have_first ;
  wire \trng_core_inst/vn_valid ;
  wire trng_rct_fail;

  LUT6 #(
    .INIT(64'h7555555530000000)) 
    apt_fail_i_1
       (.I0(slv_reg0[1]),
        .I1(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_20),
        .I2(slv_reg0[0]),
        .I3(\trng_core_inst/vn_valid ),
        .I4(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_22),
        .I5(trng_apt_fail),
        .O(apt_fail_i_1_n_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2FFAFAFAF)) 
    axi_arready_i_1
       (.I0(axi_arready_reg),
        .I1(s00_axi_arvalid),
        .I2(state_read[1]),
        .I3(axi_rvalid_reg),
        .I4(s00_axi_rready),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAA2FFAF)) 
    axi_awready_i_2
       (.I0(axi_awready_reg),
        .I1(s00_axi_awvalid),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_2_n_0));
  LUT6 #(
    .INIT(64'hF0F0AAFA88F8F0F0)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_23),
        .I2(s00_axi_bvalid),
        .I3(s00_axi_bready),
        .I4(state_write[0]),
        .I5(state_write[1]),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hF000FF00FF80FF80)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg),
        .I2(state_read[0]),
        .I3(axi_rvalid_reg),
        .I4(s00_axi_rready),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  design_1_axi_trng_0_0_axi_trng_slave_lite_v1_0_S00_AXI axi_trng_slave_lite_v1_0_S00_AXI_inst
       (.D({trng_apt_fail,trng_rct_fail,slv_reg0[0]}),
        .Q(slv_reg0[1]),
        .\apt_count_reg[9] (axi_trng_slave_lite_v1_0_S00_AXI_inst_n_20),
        .apt_fail_reg(apt_fail_i_1_n_0),
        .\apt_ones_reg[7] (axi_trng_slave_lite_v1_0_S00_AXI_inst_n_22),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_arready_reg_1(axi_arready_i_1_n_0),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_awready_reg_1(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_23),
        .axi_awready_reg_2(axi_awready_i_2_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(axi_wready_i_1_n_0),
        .first_bit(\trng_core_inst/first_bit ),
        .first_bit_reg(first_bit_i_1_n_0),
        .have_first(\trng_core_inst/u_vn/have_first ),
        .have_first_reg(have_first_i_1_n_0),
        .health_ok_reg(health_ok_i_1_n_0),
        .last_bit(\trng_core_inst/last_bit ),
        .last_bit_reg(last_bit_i_1_n_0),
        .out_bit_reg(\trng_core_inst/p_0_in__0 ),
        .out_bit_reg_0(out_bit_i_1_n_0),
        .rct_fail_reg(rct_fail_i_1_n_0),
        .ro_sync_1(\trng_core_inst/ro_sync_1 ),
        .\run_len_reg[6] (axi_trng_slave_lite_v1_0_S00_AXI_inst_n_21),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sample_stb_reg(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_0),
        .state_read(state_read),
        .state_write(state_write),
        .vn_valid(\trng_core_inst/vn_valid ));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    first_bit_i_1
       (.I0(\trng_core_inst/ro_sync_1 ),
        .I1(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_0),
        .I2(\trng_core_inst/u_vn/have_first ),
        .I3(\trng_core_inst/first_bit ),
        .O(first_bit_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    have_first_i_1
       (.I0(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_0),
        .I1(\trng_core_inst/u_vn/have_first ),
        .O(have_first_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h1)) 
    health_ok_i_1
       (.I0(trng_rct_fail),
        .I1(trng_apt_fail),
        .O(health_ok_i_1_n_0));
  LUT4 #(
    .INIT(16'hF870)) 
    last_bit_i_1
       (.I0(slv_reg0[0]),
        .I1(\trng_core_inst/vn_valid ),
        .I2(\trng_core_inst/last_bit ),
        .I3(\trng_core_inst/p_0_in__0 ),
        .O(last_bit_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hF7FF2000)) 
    out_bit_i_1
       (.I0(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_0),
        .I1(\trng_core_inst/ro_sync_1 ),
        .I2(\trng_core_inst/first_bit ),
        .I3(\trng_core_inst/u_vn/have_first ),
        .I4(\trng_core_inst/p_0_in__0 ),
        .O(out_bit_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    rct_fail_i_1
       (.I0(slv_reg0[1]),
        .I1(axi_trng_slave_lite_v1_0_S00_AXI_inst_n_21),
        .I2(trng_rct_fail),
        .O(rct_fail_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "axi_trng_slave_lite_v1_0_S00_AXI" *) 
module design_1_axi_trng_0_0_axi_trng_slave_lite_v1_0_S00_AXI
   (sample_stb_reg,
    ro_sync_1,
    vn_valid,
    out_bit_reg,
    first_bit,
    have_first,
    D,
    last_bit,
    s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    state_write,
    state_read,
    Q,
    \apt_count_reg[9] ,
    \run_len_reg[6] ,
    \apt_ones_reg[7] ,
    axi_awready_reg_1,
    s00_axi_rdata,
    s00_axi_aclk,
    health_ok_reg,
    have_first_reg,
    first_bit_reg,
    out_bit_reg_0,
    apt_fail_reg,
    last_bit_reg,
    rct_fail_reg,
    axi_bvalid_reg_0,
    axi_awready_reg_2,
    axi_wready_reg_0,
    axi_rvalid_reg_1,
    axi_arready_reg_1,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output sample_stb_reg;
  output ro_sync_1;
  output vn_valid;
  output [0:0]out_bit_reg;
  output first_bit;
  output have_first;
  output [2:0]D;
  output last_bit;
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [1:0]state_write;
  output [1:0]state_read;
  output [0:0]Q;
  output \apt_count_reg[9] ;
  output \run_len_reg[6] ;
  output \apt_ones_reg[7] ;
  output axi_awready_reg_1;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input health_ok_reg;
  input have_first_reg;
  input first_bit_reg;
  input out_bit_reg_0;
  input apt_fail_reg;
  input last_bit_reg;
  input rct_fail_reg;
  input axi_bvalid_reg_0;
  input axi_awready_reg_2;
  input axi_wready_reg_0;
  input axi_rvalid_reg_1;
  input axi_arready_reg_1;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [2:0]D;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [0:0]Q;
  wire \apt_count_reg[9] ;
  wire apt_fail_reg;
  wire \apt_ones_reg[7] ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_reg_0;
  wire axi_arready_reg_1;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready_reg_0;
  wire axi_awready_reg_1;
  wire axi_awready_reg_2;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_reg_0;
  wire axi_rvalid_reg_1;
  wire axi_wready_reg_0;
  wire first_bit;
  wire first_bit_reg;
  wire have_first;
  wire have_first_reg;
  wire health_ok_reg;
  wire last_bit;
  wire last_bit_reg;
  wire [0:0]out_bit_reg;
  wire out_bit_reg_0;
  wire rct_fail_reg;
  wire ro_sync_1;
  wire \run_len_reg[6] ;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
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
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
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
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
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
  wire sample_stb_reg;
  wire [2:0]sel0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:2]slv_reg0__0;
  wire [15:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:16]slv_reg1__0;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire [31:0]slv_reg5;
  wire \slv_reg6_reg_n_0_[0] ;
  wire \slv_reg6_reg_n_0_[1] ;
  wire \slv_reg6_reg_n_0_[2] ;
  wire \slv_reg6_reg_n_0_[3] ;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire trng_core_inst_n_1;
  wire trng_health_ok;
  wire [31:0]trng_random_in_range;
  wire [31:0]trng_random_raw;
  wire trng_valid;
  wire update_range_reg;
  wire update_range_reg_i_1_n_0;
  wire update_range_reg_i_2_n_0;
  wire vn_valid;

  LUT6 #(
    .INIT(64'hFFFF0FFF8888FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88880FFF0000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(trng_core_inst_n_1));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(trng_core_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFF7F0FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFF080F00)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(trng_core_inst_n_1));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(trng_core_inst_n_1));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(state_read[0]),
        .I3(s00_axi_aresetn),
        .I4(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(state_read[0]),
        .I3(s00_axi_aresetn),
        .I4(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(state_read[0]),
        .I3(s00_axi_aresetn),
        .I4(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[4]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
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
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_1),
        .Q(axi_arready_reg_0),
        .R(trng_core_inst_n_1));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(state_write[1]),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(trng_core_inst_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(trng_core_inst_n_1));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(trng_core_inst_n_1));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_reg_2),
        .Q(axi_awready_reg_0),
        .R(trng_core_inst_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .O(axi_awready_reg_1));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(trng_core_inst_n_1));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_1),
        .Q(axi_rvalid_reg_0),
        .R(trng_core_inst_n_1));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_wready),
        .R(trng_core_inst_n_1));
  MUXF7 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(slv_reg1[0]),
        .I4(sel0[0]),
        .I5(D[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\slv_reg6_reg_n_0_[0] ),
        .I1(sel0[1]),
        .I2(slv_reg5[0]),
        .I3(sel0[0]),
        .I4(slv_reg4[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg4[10]),
        .I1(sel0[0]),
        .I2(slv_reg5[10]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(slv_reg1[10]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg4[11]),
        .I1(sel0[0]),
        .I2(slv_reg5[11]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(slv_reg1[11]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg4[12]),
        .I1(sel0[0]),
        .I2(slv_reg5[12]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(slv_reg1[12]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg4[13]),
        .I1(sel0[0]),
        .I2(slv_reg5[13]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(slv_reg1[13]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg4[14]),
        .I1(sel0[0]),
        .I2(slv_reg5[14]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(slv_reg1[14]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg4[15]),
        .I1(sel0[0]),
        .I2(slv_reg5[15]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(slv_reg1[15]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg4[16]),
        .I1(sel0[0]),
        .I2(slv_reg5[16]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[16]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg4[17]),
        .I1(sel0[0]),
        .I2(slv_reg5[17]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[17]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg4[18]),
        .I1(sel0[0]),
        .I2(slv_reg5[18]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[18]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg4[19]),
        .I1(sel0[0]),
        .I2(slv_reg5[19]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[19]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(Q),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\slv_reg6_reg_n_0_[1] ),
        .I1(sel0[1]),
        .I2(slv_reg5[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg4[20]),
        .I1(sel0[0]),
        .I2(slv_reg5[20]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[20]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg4[21]),
        .I1(sel0[0]),
        .I2(slv_reg5[21]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[21]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg4[22]),
        .I1(sel0[0]),
        .I2(slv_reg5[22]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[22]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg4[23]),
        .I1(sel0[0]),
        .I2(slv_reg5[23]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[23]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg4[24]),
        .I1(sel0[0]),
        .I2(slv_reg5[24]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[24]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg4[25]),
        .I1(sel0[0]),
        .I2(slv_reg5[25]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[25]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg4[26]),
        .I1(sel0[0]),
        .I2(slv_reg5[26]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[26]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg4[27]),
        .I1(sel0[0]),
        .I2(slv_reg5[27]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[27]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg4[28]),
        .I1(sel0[0]),
        .I2(slv_reg5[28]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[28]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg4[29]),
        .I1(sel0[0]),
        .I2(slv_reg5[29]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[29]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(slv_reg1[2]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\slv_reg6_reg_n_0_[2] ),
        .I1(sel0[1]),
        .I2(slv_reg5[2]),
        .I3(sel0[0]),
        .I4(slv_reg4[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg4[30]),
        .I1(sel0[0]),
        .I2(slv_reg5[30]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[30]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg4[31]),
        .I1(sel0[0]),
        .I2(slv_reg5[31]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(slv_reg1__0[31]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(slv_reg1[3]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\slv_reg6_reg_n_0_[3] ),
        .I1(sel0[1]),
        .I2(slv_reg5[3]),
        .I3(sel0[0]),
        .I4(slv_reg4[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(slv_reg4[4]),
        .I1(sel0[0]),
        .I2(slv_reg5[4]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(slv_reg1[4]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(slv_reg4[5]),
        .I1(sel0[0]),
        .I2(slv_reg5[5]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(slv_reg1[5]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(slv_reg4[6]),
        .I1(sel0[0]),
        .I2(slv_reg5[6]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(slv_reg1[6]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(slv_reg4[7]),
        .I1(sel0[0]),
        .I2(slv_reg5[7]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(slv_reg1[7]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg4[8]),
        .I1(sel0[0]),
        .I2(slv_reg5[8]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(slv_reg1[8]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg4[9]),
        .I1(sel0[0]),
        .I2(slv_reg5[9]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(slv_reg1[9]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \slv_reg0[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(s00_axi_awaddr[2]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(D[0]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0__0[10]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0__0[11]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0__0[12]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0__0[13]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0__0[14]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0__0[15]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0__0[16]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0__0[17]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0__0[18]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0__0[19]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(Q),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0__0[20]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0__0[21]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0__0[22]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0__0[23]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0__0[24]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0__0[25]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0__0[26]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0__0[27]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0__0[28]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0__0[29]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0__0[2]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0__0[30]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0__0[31]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0__0[3]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0__0[4]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0__0[5]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0__0[6]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0__0[7]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0__0[8]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0__0[9]),
        .R(trng_core_inst_n_1));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1__0[16]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1__0[17]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1__0[18]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1__0[19]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1__0[20]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1__0[21]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1__0[22]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1__0[23]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1__0[24]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1__0[25]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1__0[26]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1__0[27]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1__0[28]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1__0[29]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1__0[30]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1__0[31]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(trng_core_inst_n_1));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \slv_reg2[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awaddr[1]),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
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
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(trng_core_inst_n_1));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(trng_core_inst_n_1));
  FDSE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .S(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(trng_core_inst_n_1));
  FDSE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .S(trng_core_inst_n_1));
  FDSE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .S(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[0]),
        .Q(slv_reg4[0]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[10]),
        .Q(slv_reg4[10]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[11]),
        .Q(slv_reg4[11]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[12]),
        .Q(slv_reg4[12]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[13]),
        .Q(slv_reg4[13]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[14]),
        .Q(slv_reg4[14]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[15]),
        .Q(slv_reg4[15]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[16]),
        .Q(slv_reg4[16]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[17]),
        .Q(slv_reg4[17]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[18]),
        .Q(slv_reg4[18]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[19]),
        .Q(slv_reg4[19]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[1]),
        .Q(slv_reg4[1]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[20]),
        .Q(slv_reg4[20]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[21]),
        .Q(slv_reg4[21]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[22]),
        .Q(slv_reg4[22]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[23]),
        .Q(slv_reg4[23]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[24]),
        .Q(slv_reg4[24]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[25]),
        .Q(slv_reg4[25]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[26]),
        .Q(slv_reg4[26]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[27]),
        .Q(slv_reg4[27]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[28]),
        .Q(slv_reg4[28]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[29]),
        .Q(slv_reg4[29]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[2]),
        .Q(slv_reg4[2]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[30]),
        .Q(slv_reg4[30]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[31]),
        .Q(slv_reg4[31]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[3]),
        .Q(slv_reg4[3]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[4]),
        .Q(slv_reg4[4]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[5]),
        .Q(slv_reg4[5]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[6]),
        .Q(slv_reg4[6]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[7]),
        .Q(slv_reg4[7]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[8]),
        .Q(slv_reg4[8]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_raw[9]),
        .Q(slv_reg4[9]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[0]),
        .Q(slv_reg5[0]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[10]),
        .Q(slv_reg5[10]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[11]),
        .Q(slv_reg5[11]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[12]),
        .Q(slv_reg5[12]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[13]),
        .Q(slv_reg5[13]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[14]),
        .Q(slv_reg5[14]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[15]),
        .Q(slv_reg5[15]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[16]),
        .Q(slv_reg5[16]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[17]),
        .Q(slv_reg5[17]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[18]),
        .Q(slv_reg5[18]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[19]),
        .Q(slv_reg5[19]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[1]),
        .Q(slv_reg5[1]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[20]),
        .Q(slv_reg5[20]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[21]),
        .Q(slv_reg5[21]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[22]),
        .Q(slv_reg5[22]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[23]),
        .Q(slv_reg5[23]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[24]),
        .Q(slv_reg5[24]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[25]),
        .Q(slv_reg5[25]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[26]),
        .Q(slv_reg5[26]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[27]),
        .Q(slv_reg5[27]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[28]),
        .Q(slv_reg5[28]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[29]),
        .Q(slv_reg5[29]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[2]),
        .Q(slv_reg5[2]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[30]),
        .Q(slv_reg5[30]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[31]),
        .Q(slv_reg5[31]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[3]),
        .Q(slv_reg5[3]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[4]),
        .Q(slv_reg5[4]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[5]),
        .Q(slv_reg5[5]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[6]),
        .Q(slv_reg5[6]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[7]),
        .Q(slv_reg5[7]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[8]),
        .Q(slv_reg5[8]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(trng_valid),
        .D(trng_random_in_range[9]),
        .Q(slv_reg5[9]),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(trng_health_ok),
        .Q(\slv_reg6_reg_n_0_[0] ),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\slv_reg6_reg_n_0_[1] ),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\slv_reg6_reg_n_0_[2] ),
        .R(trng_core_inst_n_1));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\slv_reg6_reg_n_0_[3] ),
        .R(trng_core_inst_n_1));
  design_1_axi_trng_0_0_trng_core trng_core_inst
       (.D({D[2:1],trng_health_ok}),
        .E(trng_valid),
        .Q(slv_reg2),
        .SR(trng_core_inst_n_1),
        .\apt_count_reg[9]_0 (\apt_count_reg[9] ),
        .apt_fail_reg_0(apt_fail_reg),
        .\apt_ones_reg[0]_0 (D[0]),
        .\apt_ones_reg[7]_0 (\apt_ones_reg[7] ),
        .divcnt1_carry__0_0(slv_reg1),
        .first_bit(first_bit),
        .first_bit_reg(first_bit_reg),
        .have_first(have_first),
        .have_first_reg(have_first_reg),
        .health_ok_reg_0(health_ok_reg),
        .\high_reg_reg[31]_0 (slv_reg3),
        .last_bit_reg_0(last_bit),
        .last_bit_reg_1(last_bit_reg),
        .\low_reg_reg[31]_0 (update_range_reg),
        .out_bit_reg(out_bit_reg),
        .out_bit_reg_0(out_bit_reg_0),
        .out_valid_reg(vn_valid),
        .\random_in_range_reg[31]_0 (trng_random_in_range),
        .\random_raw_reg[31]_0 (trng_random_raw),
        .rct_fail_reg_0(rct_fail_reg),
        .ro_sync_1(ro_sync_1),
        .\run_len_reg[6]_0 (\run_len_reg[6] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sample_stb_reg_0(sample_stb_reg));
  LUT6 #(
    .INIT(64'h0000000047034400)) 
    update_range_reg_i_1
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awaddr[1]),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(update_range_reg_i_2_n_0),
        .O(update_range_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    update_range_reg_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(s00_axi_wstrb[1]),
        .I5(s00_axi_wstrb[2]),
        .O(update_range_reg_i_2_n_0));
  FDRE update_range_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(update_range_reg_i_1_n_0),
        .Q(update_range_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module design_1_axi_trng_0_0_ring_oscillator
   (out,
    n_inferred_i_4_0);
  output [0:0]out;
  input [0:0]n_inferred_i_4_0;

  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [4:0]n;
  wire [0:0]n_inferred_i_4_0;

  assign out[0] = n[4];
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_1
       (.I0(n[3]),
        .O(n[4]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_2
       (.I0(n[2]),
        .O(n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_3
       (.I0(n[1]),
        .O(n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_4
       (.I0(n[0]),
        .O(n[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_inferred_i_5
       (.I0(n_inferred_i_4_0),
        .I1(n[4]),
        .O(n[0]));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module design_1_axi_trng_0_0_ring_oscillator_0
   (n_inferred_i_1__5,
    ro_sync_0_reg,
    n_inferred_i_4__0_0);
  output n_inferred_i_1__5;
  input [2:0]ro_sync_0_reg;
  input [0:0]n_inferred_i_4__0_0;

  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [4:0]n;
  wire n_inferred_i_1__5;
  wire [0:0]n_inferred_i_4__0_0;
  wire [2:0]ro_sync_0_reg;

  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_1__0
       (.I0(n[3]),
        .O(n[4]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_2__0
       (.I0(n[2]),
        .O(n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_3__0
       (.I0(n[1]),
        .O(n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_4__0
       (.I0(n[0]),
        .O(n[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_inferred_i_5__0
       (.I0(n_inferred_i_4__0_0),
        .I1(n[4]),
        .O(n[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    ro_sync_0_i_2
       (.I0(n[4]),
        .I1(ro_sync_0_reg[0]),
        .I2(ro_sync_0_reg[2]),
        .I3(ro_sync_0_reg[1]),
        .O(n_inferred_i_1__5));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module design_1_axi_trng_0_0_ring_oscillator_1
   (ro_mix,
    ro_sync_0_reg,
    n_inferred_i_4__1_0,
    ro_sync_0_reg_0);
  output ro_mix;
  input [2:0]ro_sync_0_reg;
  input [0:0]n_inferred_i_4__1_0;
  input ro_sync_0_reg_0;

  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [4:0]n;
  wire [0:0]n_inferred_i_4__1_0;
  wire ro_mix;
  wire [2:0]ro_sync_0_reg;
  wire ro_sync_0_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_1__1
       (.I0(n[3]),
        .O(n[4]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_2__1
       (.I0(n[2]),
        .O(n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_3__1
       (.I0(n[1]),
        .O(n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_4__1
       (.I0(n[0]),
        .O(n[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_inferred_i_5__1
       (.I0(n_inferred_i_4__1_0),
        .I1(n[4]),
        .O(n[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    ro_sync_0_i_1
       (.I0(n[4]),
        .I1(ro_sync_0_reg[0]),
        .I2(ro_sync_0_reg[1]),
        .I3(ro_sync_0_reg[2]),
        .I4(ro_sync_0_reg_0),
        .O(ro_mix));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module design_1_axi_trng_0_0_ring_oscillator_2
   (out,
    n_inferred_i_4__2_0);
  output [0:0]out;
  input [0:0]n_inferred_i_4__2_0;

  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [4:0]n;
  wire [0:0]n_inferred_i_4__2_0;

  assign out[0] = n[4];
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_1__2
       (.I0(n[3]),
        .O(n[4]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_2__2
       (.I0(n[2]),
        .O(n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_3__2
       (.I0(n[1]),
        .O(n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_4__2
       (.I0(n[0]),
        .O(n[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_inferred_i_5__2
       (.I0(n_inferred_i_4__2_0),
        .I1(n[4]),
        .O(n[0]));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module design_1_axi_trng_0_0_ring_oscillator_3
   (out,
    n_inferred_i_4__3_0);
  output [0:0]out;
  input [0:0]n_inferred_i_4__3_0;

  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [4:0]n;
  wire [0:0]n_inferred_i_4__3_0;

  assign out[0] = n[4];
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_1__3
       (.I0(n[3]),
        .O(n[4]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_2__3
       (.I0(n[2]),
        .O(n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_3__3
       (.I0(n[1]),
        .O(n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_4__3
       (.I0(n[0]),
        .O(n[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_inferred_i_5__3
       (.I0(n_inferred_i_4__3_0),
        .I1(n[4]),
        .O(n[0]));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module design_1_axi_trng_0_0_ring_oscillator_4
   (out,
    n_inferred_i_4__4_0);
  output [0:0]out;
  input [0:0]n_inferred_i_4__4_0;

  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [4:0]n;
  wire [0:0]n_inferred_i_4__4_0;

  assign out[0] = n[4];
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_1__4
       (.I0(n[3]),
        .O(n[4]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_2__4
       (.I0(n[2]),
        .O(n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_3__4
       (.I0(n[1]),
        .O(n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_4__4
       (.I0(n[0]),
        .O(n[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_inferred_i_5__4
       (.I0(n_inferred_i_4__4_0),
        .I1(n[4]),
        .O(n[0]));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module design_1_axi_trng_0_0_ring_oscillator_5
   (out,
    n_inferred_i_4__5_0);
  output [0:0]out;
  input [0:0]n_inferred_i_4__5_0;

  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [4:0]n;
  wire [0:0]n_inferred_i_4__5_0;

  assign out[0] = n[4];
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_1__5
       (.I0(n[3]),
        .O(n[4]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_2__5
       (.I0(n[2]),
        .O(n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_3__5
       (.I0(n[1]),
        .O(n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_4__5
       (.I0(n[0]),
        .O(n[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_inferred_i_5__5
       (.I0(n_inferred_i_4__5_0),
        .I1(n[4]),
        .O(n[0]));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module design_1_axi_trng_0_0_ring_oscillator_6
   (out,
    n_inferred_i_4__6_0);
  output [0:0]out;
  input [0:0]n_inferred_i_4__6_0;

  (* DONT_TOUCH *) (* RTL_KEEP = "true" *) wire [4:0]n;
  wire [0:0]n_inferred_i_4__6_0;

  assign out[0] = n[4];
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_1__6
       (.I0(n[3]),
        .O(n[4]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_2__6
       (.I0(n[2]),
        .O(n[3]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_3__6
       (.I0(n[1]),
        .O(n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    n_inferred_i_4__6
       (.I0(n[0]),
        .O(n[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_inferred_i_5__6
       (.I0(n_inferred_i_4__6_0),
        .I1(n[4]),
        .O(n[0]));
endmodule

(* ORIG_REF_NAME = "trng_core" *) 
module design_1_axi_trng_0_0_trng_core
   (sample_stb_reg_0,
    SR,
    ro_sync_1,
    out_valid_reg,
    D,
    E,
    first_bit,
    have_first,
    out_bit_reg,
    last_bit_reg_0,
    \apt_count_reg[9]_0 ,
    \run_len_reg[6]_0 ,
    \apt_ones_reg[7]_0 ,
    \random_raw_reg[31]_0 ,
    \random_in_range_reg[31]_0 ,
    s00_axi_aclk,
    health_ok_reg_0,
    have_first_reg,
    first_bit_reg,
    out_bit_reg_0,
    apt_fail_reg_0,
    last_bit_reg_1,
    rct_fail_reg_0,
    Q,
    \apt_ones_reg[0]_0 ,
    s00_axi_aresetn,
    divcnt1_carry__0_0,
    \high_reg_reg[31]_0 ,
    \low_reg_reg[31]_0 );
  output sample_stb_reg_0;
  output [0:0]SR;
  output ro_sync_1;
  output out_valid_reg;
  output [2:0]D;
  output [0:0]E;
  output first_bit;
  output have_first;
  output [0:0]out_bit_reg;
  output last_bit_reg_0;
  output \apt_count_reg[9]_0 ;
  output \run_len_reg[6]_0 ;
  output \apt_ones_reg[7]_0 ;
  output [31:0]\random_raw_reg[31]_0 ;
  output [31:0]\random_in_range_reg[31]_0 ;
  input s00_axi_aclk;
  input health_ok_reg_0;
  input have_first_reg;
  input first_bit_reg;
  input out_bit_reg_0;
  input apt_fail_reg_0;
  input last_bit_reg_1;
  input rct_fail_reg_0;
  input [31:0]Q;
  input [0:0]\apt_ones_reg[0]_0 ;
  input s00_axi_aresetn;
  input [15:0]divcnt1_carry__0_0;
  input [31:0]\high_reg_reg[31]_0 ;
  input [0:0]\low_reg_reg[31]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [4:0]acc_cnt;
  wire acc_cnt0;
  wire \acc_cnt[1]_i_1_n_0 ;
  wire \acc_reg_reg_n_0_[31] ;
  wire [15:0]apt_count;
  wire apt_count0_carry__0_n_0;
  wire apt_count0_carry__0_n_1;
  wire apt_count0_carry__0_n_2;
  wire apt_count0_carry__0_n_3;
  wire apt_count0_carry__0_n_4;
  wire apt_count0_carry__0_n_5;
  wire apt_count0_carry__0_n_6;
  wire apt_count0_carry__0_n_7;
  wire apt_count0_carry__1_n_0;
  wire apt_count0_carry__1_n_1;
  wire apt_count0_carry__1_n_2;
  wire apt_count0_carry__1_n_3;
  wire apt_count0_carry__1_n_4;
  wire apt_count0_carry__1_n_5;
  wire apt_count0_carry__1_n_6;
  wire apt_count0_carry__1_n_7;
  wire apt_count0_carry__2_n_2;
  wire apt_count0_carry__2_n_3;
  wire apt_count0_carry__2_n_5;
  wire apt_count0_carry__2_n_6;
  wire apt_count0_carry__2_n_7;
  wire apt_count0_carry_n_0;
  wire apt_count0_carry_n_1;
  wire apt_count0_carry_n_2;
  wire apt_count0_carry_n_3;
  wire apt_count0_carry_n_4;
  wire apt_count0_carry_n_5;
  wire apt_count0_carry_n_6;
  wire apt_count0_carry_n_7;
  wire \apt_count[15]_i_3_n_0 ;
  wire \apt_count[15]_i_4_n_0 ;
  wire \apt_count[15]_i_5_n_0 ;
  wire \apt_count[15]_i_6_n_0 ;
  wire \apt_count_reg[9]_0 ;
  wire \apt_count_reg_n_0_[0] ;
  wire \apt_count_reg_n_0_[10] ;
  wire \apt_count_reg_n_0_[11] ;
  wire \apt_count_reg_n_0_[12] ;
  wire \apt_count_reg_n_0_[13] ;
  wire \apt_count_reg_n_0_[14] ;
  wire \apt_count_reg_n_0_[15] ;
  wire \apt_count_reg_n_0_[1] ;
  wire \apt_count_reg_n_0_[2] ;
  wire \apt_count_reg_n_0_[3] ;
  wire \apt_count_reg_n_0_[4] ;
  wire \apt_count_reg_n_0_[5] ;
  wire \apt_count_reg_n_0_[6] ;
  wire \apt_count_reg_n_0_[7] ;
  wire \apt_count_reg_n_0_[8] ;
  wire \apt_count_reg_n_0_[9] ;
  wire apt_fail_i_3_n_0;
  wire apt_fail_i_4_n_0;
  wire apt_fail_i_5_n_0;
  wire apt_fail_reg_0;
  wire \apt_ones0_inferred__0/i__carry__0_n_0 ;
  wire \apt_ones0_inferred__0/i__carry__0_n_1 ;
  wire \apt_ones0_inferred__0/i__carry__0_n_2 ;
  wire \apt_ones0_inferred__0/i__carry__0_n_3 ;
  wire \apt_ones0_inferred__0/i__carry__0_n_4 ;
  wire \apt_ones0_inferred__0/i__carry__0_n_5 ;
  wire \apt_ones0_inferred__0/i__carry__0_n_6 ;
  wire \apt_ones0_inferred__0/i__carry__0_n_7 ;
  wire \apt_ones0_inferred__0/i__carry__1_n_0 ;
  wire \apt_ones0_inferred__0/i__carry__1_n_1 ;
  wire \apt_ones0_inferred__0/i__carry__1_n_2 ;
  wire \apt_ones0_inferred__0/i__carry__1_n_3 ;
  wire \apt_ones0_inferred__0/i__carry__1_n_4 ;
  wire \apt_ones0_inferred__0/i__carry__1_n_5 ;
  wire \apt_ones0_inferred__0/i__carry__1_n_6 ;
  wire \apt_ones0_inferred__0/i__carry__1_n_7 ;
  wire \apt_ones0_inferred__0/i__carry__2_n_2 ;
  wire \apt_ones0_inferred__0/i__carry__2_n_3 ;
  wire \apt_ones0_inferred__0/i__carry__2_n_5 ;
  wire \apt_ones0_inferred__0/i__carry__2_n_6 ;
  wire \apt_ones0_inferred__0/i__carry__2_n_7 ;
  wire \apt_ones0_inferred__0/i__carry_n_0 ;
  wire \apt_ones0_inferred__0/i__carry_n_1 ;
  wire \apt_ones0_inferred__0/i__carry_n_2 ;
  wire \apt_ones0_inferred__0/i__carry_n_3 ;
  wire \apt_ones0_inferred__0/i__carry_n_4 ;
  wire \apt_ones0_inferred__0/i__carry_n_5 ;
  wire \apt_ones0_inferred__0/i__carry_n_6 ;
  wire \apt_ones0_inferred__0/i__carry_n_7 ;
  wire \apt_ones[0]_i_1_n_0 ;
  wire \apt_ones[10]_i_1_n_0 ;
  wire \apt_ones[11]_i_1_n_0 ;
  wire \apt_ones[12]_i_1_n_0 ;
  wire \apt_ones[13]_i_1_n_0 ;
  wire \apt_ones[14]_i_1_n_0 ;
  wire \apt_ones[15]_i_2_n_0 ;
  wire \apt_ones[15]_i_4_n_0 ;
  wire \apt_ones[15]_i_5_n_0 ;
  wire \apt_ones[15]_i_6_n_0 ;
  wire \apt_ones[15]_i_7_n_0 ;
  wire \apt_ones[1]_i_1_n_0 ;
  wire \apt_ones[2]_i_1_n_0 ;
  wire \apt_ones[3]_i_1_n_0 ;
  wire \apt_ones[4]_i_1_n_0 ;
  wire \apt_ones[5]_i_1_n_0 ;
  wire \apt_ones[6]_i_1_n_0 ;
  wire \apt_ones[7]_i_1_n_0 ;
  wire \apt_ones[8]_i_1_n_0 ;
  wire \apt_ones[9]_i_1_n_0 ;
  wire [0:0]\apt_ones_reg[0]_0 ;
  wire \apt_ones_reg[7]_0 ;
  wire \apt_ones_reg_n_0_[0] ;
  wire \apt_ones_reg_n_0_[10] ;
  wire \apt_ones_reg_n_0_[11] ;
  wire \apt_ones_reg_n_0_[12] ;
  wire \apt_ones_reg_n_0_[13] ;
  wire \apt_ones_reg_n_0_[14] ;
  wire \apt_ones_reg_n_0_[15] ;
  wire \apt_ones_reg_n_0_[1] ;
  wire \apt_ones_reg_n_0_[2] ;
  wire \apt_ones_reg_n_0_[3] ;
  wire \apt_ones_reg_n_0_[4] ;
  wire \apt_ones_reg_n_0_[5] ;
  wire \apt_ones_reg_n_0_[6] ;
  wire \apt_ones_reg_n_0_[7] ;
  wire \apt_ones_reg_n_0_[8] ;
  wire \apt_ones_reg_n_0_[9] ;
  wire [15:0]divcnt;
  wire [15:1]divcnt0;
  wire divcnt0_carry__0_n_0;
  wire divcnt0_carry__0_n_1;
  wire divcnt0_carry__0_n_2;
  wire divcnt0_carry__0_n_3;
  wire divcnt0_carry__1_n_0;
  wire divcnt0_carry__1_n_1;
  wire divcnt0_carry__1_n_2;
  wire divcnt0_carry__1_n_3;
  wire divcnt0_carry__2_n_2;
  wire divcnt0_carry__2_n_3;
  wire divcnt0_carry_n_0;
  wire divcnt0_carry_n_1;
  wire divcnt0_carry_n_2;
  wire divcnt0_carry_n_3;
  wire divcnt1;
  wire [15:0]divcnt1_carry__0_0;
  wire divcnt1_carry__0_i_1_n_0;
  wire divcnt1_carry__0_i_2_n_0;
  wire divcnt1_carry__0_n_3;
  wire divcnt1_carry_i_10_n_0;
  wire divcnt1_carry_i_1_n_0;
  wire divcnt1_carry_i_2_n_0;
  wire divcnt1_carry_i_3_n_0;
  wire divcnt1_carry_i_4_n_0;
  wire divcnt1_carry_i_5_n_0;
  wire divcnt1_carry_i_6_n_0;
  wire divcnt1_carry_i_7_n_0;
  wire divcnt1_carry_i_8_n_0;
  wire divcnt1_carry_i_9_n_0;
  wire divcnt1_carry_n_0;
  wire divcnt1_carry_n_1;
  wire divcnt1_carry_n_2;
  wire divcnt1_carry_n_3;
  wire \divcnt[0]_i_1_n_0 ;
  wire \divcnt[10]_i_1_n_0 ;
  wire \divcnt[11]_i_1_n_0 ;
  wire \divcnt[12]_i_1_n_0 ;
  wire \divcnt[13]_i_1_n_0 ;
  wire \divcnt[14]_i_1_n_0 ;
  wire \divcnt[15]_i_1_n_0 ;
  wire \divcnt[1]_i_1_n_0 ;
  wire \divcnt[2]_i_1_n_0 ;
  wire \divcnt[3]_i_1_n_0 ;
  wire \divcnt[4]_i_1_n_0 ;
  wire \divcnt[5]_i_1_n_0 ;
  wire \divcnt[6]_i_1_n_0 ;
  wire \divcnt[7]_i_1_n_0 ;
  wire \divcnt[8]_i_1_n_0 ;
  wire \divcnt[9]_i_1_n_0 ;
  wire first_bit;
  wire first_bit_reg;
  wire have_first;
  wire have_first_reg;
  wire health_ok_reg_0;
  wire [31:0]high_reg;
  wire [31:1]high_reg0;
  wire high_reg0_carry__0_n_0;
  wire high_reg0_carry__0_n_1;
  wire high_reg0_carry__0_n_2;
  wire high_reg0_carry__0_n_3;
  wire high_reg0_carry__1_n_0;
  wire high_reg0_carry__1_n_1;
  wire high_reg0_carry__1_n_2;
  wire high_reg0_carry__1_n_3;
  wire high_reg0_carry__2_n_0;
  wire high_reg0_carry__2_n_1;
  wire high_reg0_carry__2_n_2;
  wire high_reg0_carry__2_n_3;
  wire high_reg0_carry__3_n_0;
  wire high_reg0_carry__3_n_1;
  wire high_reg0_carry__3_n_2;
  wire high_reg0_carry__3_n_3;
  wire high_reg0_carry__4_n_0;
  wire high_reg0_carry__4_n_1;
  wire high_reg0_carry__4_n_2;
  wire high_reg0_carry__4_n_3;
  wire high_reg0_carry__5_n_0;
  wire high_reg0_carry__5_n_1;
  wire high_reg0_carry__5_n_2;
  wire high_reg0_carry__5_n_3;
  wire high_reg0_carry__6_n_2;
  wire high_reg0_carry__6_n_3;
  wire high_reg0_carry_n_0;
  wire high_reg0_carry_n_1;
  wire high_reg0_carry_n_2;
  wire high_reg0_carry_n_3;
  wire high_reg1;
  wire high_reg1_carry__0_i_1_n_0;
  wire high_reg1_carry__0_i_2_n_0;
  wire high_reg1_carry__0_i_3_n_0;
  wire high_reg1_carry__0_i_4_n_0;
  wire high_reg1_carry__0_i_5_n_0;
  wire high_reg1_carry__0_i_6_n_0;
  wire high_reg1_carry__0_i_7_n_0;
  wire high_reg1_carry__0_i_8_n_0;
  wire high_reg1_carry__0_n_0;
  wire high_reg1_carry__0_n_1;
  wire high_reg1_carry__0_n_2;
  wire high_reg1_carry__0_n_3;
  wire high_reg1_carry__1_i_1_n_0;
  wire high_reg1_carry__1_i_2_n_0;
  wire high_reg1_carry__1_i_3_n_0;
  wire high_reg1_carry__1_i_4_n_0;
  wire high_reg1_carry__1_i_5_n_0;
  wire high_reg1_carry__1_i_6_n_0;
  wire high_reg1_carry__1_i_7_n_0;
  wire high_reg1_carry__1_i_8_n_0;
  wire high_reg1_carry__1_n_0;
  wire high_reg1_carry__1_n_1;
  wire high_reg1_carry__1_n_2;
  wire high_reg1_carry__1_n_3;
  wire high_reg1_carry__2_i_1_n_0;
  wire high_reg1_carry__2_i_2_n_0;
  wire high_reg1_carry__2_i_3_n_0;
  wire high_reg1_carry__2_i_4_n_0;
  wire high_reg1_carry__2_i_5_n_0;
  wire high_reg1_carry__2_i_6_n_0;
  wire high_reg1_carry__2_i_7_n_0;
  wire high_reg1_carry__2_i_8_n_0;
  wire high_reg1_carry__2_n_1;
  wire high_reg1_carry__2_n_2;
  wire high_reg1_carry__2_n_3;
  wire high_reg1_carry_i_1_n_0;
  wire high_reg1_carry_i_2_n_0;
  wire high_reg1_carry_i_3_n_0;
  wire high_reg1_carry_i_4_n_0;
  wire high_reg1_carry_i_5_n_0;
  wire high_reg1_carry_i_6_n_0;
  wire high_reg1_carry_i_7_n_0;
  wire high_reg1_carry_i_8_n_0;
  wire high_reg1_carry_n_0;
  wire high_reg1_carry_n_1;
  wire high_reg1_carry_n_2;
  wire high_reg1_carry_n_3;
  wire \high_reg[0]_i_1_n_0 ;
  wire \high_reg[10]_i_1_n_0 ;
  wire \high_reg[11]_i_1_n_0 ;
  wire \high_reg[12]_i_1_n_0 ;
  wire \high_reg[13]_i_1_n_0 ;
  wire \high_reg[14]_i_1_n_0 ;
  wire \high_reg[15]_i_1_n_0 ;
  wire \high_reg[16]_i_1_n_0 ;
  wire \high_reg[17]_i_1_n_0 ;
  wire \high_reg[18]_i_1_n_0 ;
  wire \high_reg[19]_i_1_n_0 ;
  wire \high_reg[1]_i_1_n_0 ;
  wire \high_reg[20]_i_1_n_0 ;
  wire \high_reg[21]_i_1_n_0 ;
  wire \high_reg[22]_i_1_n_0 ;
  wire \high_reg[23]_i_1_n_0 ;
  wire \high_reg[24]_i_1_n_0 ;
  wire \high_reg[25]_i_1_n_0 ;
  wire \high_reg[26]_i_1_n_0 ;
  wire \high_reg[27]_i_1_n_0 ;
  wire \high_reg[28]_i_1_n_0 ;
  wire \high_reg[29]_i_1_n_0 ;
  wire \high_reg[2]_i_1_n_0 ;
  wire \high_reg[30]_i_1_n_0 ;
  wire \high_reg[31]_i_1_n_0 ;
  wire \high_reg[3]_i_1_n_0 ;
  wire \high_reg[4]_i_1_n_0 ;
  wire \high_reg[5]_i_1_n_0 ;
  wire \high_reg[6]_i_1_n_0 ;
  wire \high_reg[7]_i_1_n_0 ;
  wire \high_reg[8]_i_1_n_0 ;
  wire \high_reg[9]_i_1_n_0 ;
  wire [31:0]\high_reg_reg[31]_0 ;
  wire last_bit1;
  wire last_bit_reg_0;
  wire last_bit_reg_1;
  wire [31:0]low_reg;
  wire [0:0]\low_reg_reg[31]_0 ;
  wire [0:0]out_bit_reg;
  wire out_bit_reg_0;
  wire out_valid_reg;
  wire [31:0]p_0_in;
  wire [31:1]p_0_in__0;
  wire [4:0]p_1_in;
  wire prod__0_n_100;
  wire prod__0_n_101;
  wire prod__0_n_102;
  wire prod__0_n_103;
  wire prod__0_n_104;
  wire prod__0_n_105;
  wire prod__0_n_76;
  wire prod__0_n_77;
  wire prod__0_n_78;
  wire prod__0_n_79;
  wire prod__0_n_80;
  wire prod__0_n_81;
  wire prod__0_n_82;
  wire prod__0_n_83;
  wire prod__0_n_84;
  wire prod__0_n_85;
  wire prod__0_n_86;
  wire prod__0_n_87;
  wire prod__0_n_88;
  wire prod__0_n_89;
  wire prod__0_n_90;
  wire prod__0_n_91;
  wire prod__0_n_92;
  wire prod__0_n_93;
  wire prod__0_n_94;
  wire prod__0_n_95;
  wire prod__0_n_96;
  wire prod__0_n_97;
  wire prod__0_n_98;
  wire prod__0_n_99;
  wire prod__1_n_100;
  wire prod__1_n_101;
  wire prod__1_n_102;
  wire prod__1_n_103;
  wire prod__1_n_104;
  wire prod__1_n_105;
  wire prod__1_n_106;
  wire prod__1_n_107;
  wire prod__1_n_108;
  wire prod__1_n_109;
  wire prod__1_n_110;
  wire prod__1_n_111;
  wire prod__1_n_112;
  wire prod__1_n_113;
  wire prod__1_n_114;
  wire prod__1_n_115;
  wire prod__1_n_116;
  wire prod__1_n_117;
  wire prod__1_n_118;
  wire prod__1_n_119;
  wire prod__1_n_120;
  wire prod__1_n_121;
  wire prod__1_n_122;
  wire prod__1_n_123;
  wire prod__1_n_124;
  wire prod__1_n_125;
  wire prod__1_n_126;
  wire prod__1_n_127;
  wire prod__1_n_128;
  wire prod__1_n_129;
  wire prod__1_n_130;
  wire prod__1_n_131;
  wire prod__1_n_132;
  wire prod__1_n_133;
  wire prod__1_n_134;
  wire prod__1_n_135;
  wire prod__1_n_136;
  wire prod__1_n_137;
  wire prod__1_n_138;
  wire prod__1_n_139;
  wire prod__1_n_140;
  wire prod__1_n_141;
  wire prod__1_n_142;
  wire prod__1_n_143;
  wire prod__1_n_144;
  wire prod__1_n_145;
  wire prod__1_n_146;
  wire prod__1_n_147;
  wire prod__1_n_148;
  wire prod__1_n_149;
  wire prod__1_n_150;
  wire prod__1_n_151;
  wire prod__1_n_152;
  wire prod__1_n_153;
  wire prod__1_n_58;
  wire prod__1_n_59;
  wire prod__1_n_60;
  wire prod__1_n_61;
  wire prod__1_n_62;
  wire prod__1_n_63;
  wire prod__1_n_64;
  wire prod__1_n_65;
  wire prod__1_n_66;
  wire prod__1_n_67;
  wire prod__1_n_68;
  wire prod__1_n_69;
  wire prod__1_n_70;
  wire prod__1_n_71;
  wire prod__1_n_72;
  wire prod__1_n_73;
  wire prod__1_n_74;
  wire prod__1_n_75;
  wire prod__1_n_76;
  wire prod__1_n_77;
  wire prod__1_n_78;
  wire prod__1_n_79;
  wire prod__1_n_80;
  wire prod__1_n_81;
  wire prod__1_n_82;
  wire prod__1_n_83;
  wire prod__1_n_84;
  wire prod__1_n_85;
  wire prod__1_n_86;
  wire prod__1_n_87;
  wire prod__1_n_88;
  wire prod__1_n_89;
  wire prod__1_n_90;
  wire prod__1_n_91;
  wire prod__1_n_92;
  wire prod__1_n_93;
  wire prod__1_n_94;
  wire prod__1_n_95;
  wire prod__1_n_96;
  wire prod__1_n_97;
  wire prod__1_n_98;
  wire prod__1_n_99;
  wire prod__2_n_100;
  wire prod__2_n_101;
  wire prod__2_n_102;
  wire prod__2_n_103;
  wire prod__2_n_104;
  wire prod__2_n_105;
  wire prod__2_n_59;
  wire prod__2_n_60;
  wire prod__2_n_61;
  wire prod__2_n_62;
  wire prod__2_n_63;
  wire prod__2_n_64;
  wire prod__2_n_65;
  wire prod__2_n_66;
  wire prod__2_n_67;
  wire prod__2_n_68;
  wire prod__2_n_69;
  wire prod__2_n_70;
  wire prod__2_n_71;
  wire prod__2_n_72;
  wire prod__2_n_73;
  wire prod__2_n_74;
  wire prod__2_n_75;
  wire prod__2_n_76;
  wire prod__2_n_77;
  wire prod__2_n_78;
  wire prod__2_n_79;
  wire prod__2_n_80;
  wire prod__2_n_81;
  wire prod__2_n_82;
  wire prod__2_n_83;
  wire prod__2_n_84;
  wire prod__2_n_85;
  wire prod__2_n_86;
  wire prod__2_n_87;
  wire prod__2_n_88;
  wire prod__2_n_89;
  wire prod__2_n_90;
  wire prod__2_n_91;
  wire prod__2_n_92;
  wire prod__2_n_93;
  wire prod__2_n_94;
  wire prod__2_n_95;
  wire prod__2_n_96;
  wire prod__2_n_97;
  wire prod__2_n_98;
  wire prod__2_n_99;
  wire prod_n_100;
  wire prod_n_101;
  wire prod_n_102;
  wire prod_n_103;
  wire prod_n_104;
  wire prod_n_105;
  wire prod_n_106;
  wire prod_n_107;
  wire prod_n_108;
  wire prod_n_109;
  wire prod_n_110;
  wire prod_n_111;
  wire prod_n_112;
  wire prod_n_113;
  wire prod_n_114;
  wire prod_n_115;
  wire prod_n_116;
  wire prod_n_117;
  wire prod_n_118;
  wire prod_n_119;
  wire prod_n_120;
  wire prod_n_121;
  wire prod_n_122;
  wire prod_n_123;
  wire prod_n_124;
  wire prod_n_125;
  wire prod_n_126;
  wire prod_n_127;
  wire prod_n_128;
  wire prod_n_129;
  wire prod_n_130;
  wire prod_n_131;
  wire prod_n_132;
  wire prod_n_133;
  wire prod_n_134;
  wire prod_n_135;
  wire prod_n_136;
  wire prod_n_137;
  wire prod_n_138;
  wire prod_n_139;
  wire prod_n_140;
  wire prod_n_141;
  wire prod_n_142;
  wire prod_n_143;
  wire prod_n_144;
  wire prod_n_145;
  wire prod_n_146;
  wire prod_n_147;
  wire prod_n_148;
  wire prod_n_149;
  wire prod_n_150;
  wire prod_n_151;
  wire prod_n_152;
  wire prod_n_153;
  wire prod_n_58;
  wire prod_n_59;
  wire prod_n_60;
  wire prod_n_61;
  wire prod_n_62;
  wire prod_n_63;
  wire prod_n_64;
  wire prod_n_65;
  wire prod_n_66;
  wire prod_n_67;
  wire prod_n_68;
  wire prod_n_69;
  wire prod_n_70;
  wire prod_n_71;
  wire prod_n_72;
  wire prod_n_73;
  wire prod_n_74;
  wire prod_n_75;
  wire prod_n_76;
  wire prod_n_77;
  wire prod_n_78;
  wire prod_n_79;
  wire prod_n_80;
  wire prod_n_81;
  wire prod_n_82;
  wire prod_n_83;
  wire prod_n_84;
  wire prod_n_85;
  wire prod_n_86;
  wire prod_n_87;
  wire prod_n_88;
  wire prod_n_89;
  wire prod_n_90;
  wire prod_n_91;
  wire prod_n_92;
  wire prod_n_93;
  wire prod_n_94;
  wire prod_n_95;
  wire prod_n_96;
  wire prod_n_97;
  wire prod_n_98;
  wire prod_n_99;
  wire \random_in_range[11]_i_10_n_0 ;
  wire \random_in_range[11]_i_2_n_0 ;
  wire \random_in_range[11]_i_3_n_0 ;
  wire \random_in_range[11]_i_4_n_0 ;
  wire \random_in_range[11]_i_5_n_0 ;
  wire \random_in_range[11]_i_7_n_0 ;
  wire \random_in_range[11]_i_8_n_0 ;
  wire \random_in_range[11]_i_9_n_0 ;
  wire \random_in_range[15]_i_10_n_0 ;
  wire \random_in_range[15]_i_2_n_0 ;
  wire \random_in_range[15]_i_3_n_0 ;
  wire \random_in_range[15]_i_4_n_0 ;
  wire \random_in_range[15]_i_5_n_0 ;
  wire \random_in_range[15]_i_7_n_0 ;
  wire \random_in_range[15]_i_8_n_0 ;
  wire \random_in_range[15]_i_9_n_0 ;
  wire \random_in_range[19]_i_10_n_0 ;
  wire \random_in_range[19]_i_2_n_0 ;
  wire \random_in_range[19]_i_3_n_0 ;
  wire \random_in_range[19]_i_4_n_0 ;
  wire \random_in_range[19]_i_5_n_0 ;
  wire \random_in_range[19]_i_7_n_0 ;
  wire \random_in_range[19]_i_8_n_0 ;
  wire \random_in_range[19]_i_9_n_0 ;
  wire \random_in_range[23]_i_10_n_0 ;
  wire \random_in_range[23]_i_2_n_0 ;
  wire \random_in_range[23]_i_3_n_0 ;
  wire \random_in_range[23]_i_4_n_0 ;
  wire \random_in_range[23]_i_5_n_0 ;
  wire \random_in_range[23]_i_7_n_0 ;
  wire \random_in_range[23]_i_8_n_0 ;
  wire \random_in_range[23]_i_9_n_0 ;
  wire \random_in_range[27]_i_10_n_0 ;
  wire \random_in_range[27]_i_2_n_0 ;
  wire \random_in_range[27]_i_3_n_0 ;
  wire \random_in_range[27]_i_4_n_0 ;
  wire \random_in_range[27]_i_5_n_0 ;
  wire \random_in_range[27]_i_7_n_0 ;
  wire \random_in_range[27]_i_8_n_0 ;
  wire \random_in_range[27]_i_9_n_0 ;
  wire \random_in_range[31]_i_10_n_0 ;
  wire \random_in_range[31]_i_2_n_0 ;
  wire \random_in_range[31]_i_3_n_0 ;
  wire \random_in_range[31]_i_4_n_0 ;
  wire \random_in_range[31]_i_5_n_0 ;
  wire \random_in_range[31]_i_7_n_0 ;
  wire \random_in_range[31]_i_8_n_0 ;
  wire \random_in_range[31]_i_9_n_0 ;
  wire \random_in_range[3]_i_10_n_0 ;
  wire \random_in_range[3]_i_11_n_0 ;
  wire \random_in_range[3]_i_13_n_0 ;
  wire \random_in_range[3]_i_14_n_0 ;
  wire \random_in_range[3]_i_15_n_0 ;
  wire \random_in_range[3]_i_16_n_0 ;
  wire \random_in_range[3]_i_18_n_0 ;
  wire \random_in_range[3]_i_19_n_0 ;
  wire \random_in_range[3]_i_20_n_0 ;
  wire \random_in_range[3]_i_21_n_0 ;
  wire \random_in_range[3]_i_23_n_0 ;
  wire \random_in_range[3]_i_24_n_0 ;
  wire \random_in_range[3]_i_25_n_0 ;
  wire \random_in_range[3]_i_26_n_0 ;
  wire \random_in_range[3]_i_27_n_0 ;
  wire \random_in_range[3]_i_28_n_0 ;
  wire \random_in_range[3]_i_29_n_0 ;
  wire \random_in_range[3]_i_2_n_0 ;
  wire \random_in_range[3]_i_3_n_0 ;
  wire \random_in_range[3]_i_4_n_0 ;
  wire \random_in_range[3]_i_5_n_0 ;
  wire \random_in_range[3]_i_8_n_0 ;
  wire \random_in_range[3]_i_9_n_0 ;
  wire \random_in_range[7]_i_10_n_0 ;
  wire \random_in_range[7]_i_2_n_0 ;
  wire \random_in_range[7]_i_3_n_0 ;
  wire \random_in_range[7]_i_4_n_0 ;
  wire \random_in_range[7]_i_5_n_0 ;
  wire \random_in_range[7]_i_7_n_0 ;
  wire \random_in_range[7]_i_8_n_0 ;
  wire \random_in_range[7]_i_9_n_0 ;
  wire \random_in_range_reg[11]_i_1_n_0 ;
  wire \random_in_range_reg[11]_i_1_n_1 ;
  wire \random_in_range_reg[11]_i_1_n_2 ;
  wire \random_in_range_reg[11]_i_1_n_3 ;
  wire \random_in_range_reg[11]_i_1_n_4 ;
  wire \random_in_range_reg[11]_i_1_n_5 ;
  wire \random_in_range_reg[11]_i_1_n_6 ;
  wire \random_in_range_reg[11]_i_1_n_7 ;
  wire \random_in_range_reg[11]_i_6_n_0 ;
  wire \random_in_range_reg[11]_i_6_n_1 ;
  wire \random_in_range_reg[11]_i_6_n_2 ;
  wire \random_in_range_reg[11]_i_6_n_3 ;
  wire \random_in_range_reg[15]_i_1_n_0 ;
  wire \random_in_range_reg[15]_i_1_n_1 ;
  wire \random_in_range_reg[15]_i_1_n_2 ;
  wire \random_in_range_reg[15]_i_1_n_3 ;
  wire \random_in_range_reg[15]_i_1_n_4 ;
  wire \random_in_range_reg[15]_i_1_n_5 ;
  wire \random_in_range_reg[15]_i_1_n_6 ;
  wire \random_in_range_reg[15]_i_1_n_7 ;
  wire \random_in_range_reg[15]_i_6_n_0 ;
  wire \random_in_range_reg[15]_i_6_n_1 ;
  wire \random_in_range_reg[15]_i_6_n_2 ;
  wire \random_in_range_reg[15]_i_6_n_3 ;
  wire \random_in_range_reg[19]_i_1_n_0 ;
  wire \random_in_range_reg[19]_i_1_n_1 ;
  wire \random_in_range_reg[19]_i_1_n_2 ;
  wire \random_in_range_reg[19]_i_1_n_3 ;
  wire \random_in_range_reg[19]_i_1_n_4 ;
  wire \random_in_range_reg[19]_i_1_n_5 ;
  wire \random_in_range_reg[19]_i_1_n_6 ;
  wire \random_in_range_reg[19]_i_1_n_7 ;
  wire \random_in_range_reg[19]_i_6_n_0 ;
  wire \random_in_range_reg[19]_i_6_n_1 ;
  wire \random_in_range_reg[19]_i_6_n_2 ;
  wire \random_in_range_reg[19]_i_6_n_3 ;
  wire \random_in_range_reg[23]_i_1_n_0 ;
  wire \random_in_range_reg[23]_i_1_n_1 ;
  wire \random_in_range_reg[23]_i_1_n_2 ;
  wire \random_in_range_reg[23]_i_1_n_3 ;
  wire \random_in_range_reg[23]_i_1_n_4 ;
  wire \random_in_range_reg[23]_i_1_n_5 ;
  wire \random_in_range_reg[23]_i_1_n_6 ;
  wire \random_in_range_reg[23]_i_1_n_7 ;
  wire \random_in_range_reg[23]_i_6_n_0 ;
  wire \random_in_range_reg[23]_i_6_n_1 ;
  wire \random_in_range_reg[23]_i_6_n_2 ;
  wire \random_in_range_reg[23]_i_6_n_3 ;
  wire \random_in_range_reg[27]_i_1_n_0 ;
  wire \random_in_range_reg[27]_i_1_n_1 ;
  wire \random_in_range_reg[27]_i_1_n_2 ;
  wire \random_in_range_reg[27]_i_1_n_3 ;
  wire \random_in_range_reg[27]_i_1_n_4 ;
  wire \random_in_range_reg[27]_i_1_n_5 ;
  wire \random_in_range_reg[27]_i_1_n_6 ;
  wire \random_in_range_reg[27]_i_1_n_7 ;
  wire \random_in_range_reg[27]_i_6_n_0 ;
  wire \random_in_range_reg[27]_i_6_n_1 ;
  wire \random_in_range_reg[27]_i_6_n_2 ;
  wire \random_in_range_reg[27]_i_6_n_3 ;
  wire [31:0]\random_in_range_reg[31]_0 ;
  wire \random_in_range_reg[31]_i_1_n_1 ;
  wire \random_in_range_reg[31]_i_1_n_2 ;
  wire \random_in_range_reg[31]_i_1_n_3 ;
  wire \random_in_range_reg[31]_i_1_n_4 ;
  wire \random_in_range_reg[31]_i_1_n_5 ;
  wire \random_in_range_reg[31]_i_1_n_6 ;
  wire \random_in_range_reg[31]_i_1_n_7 ;
  wire \random_in_range_reg[31]_i_6_n_1 ;
  wire \random_in_range_reg[31]_i_6_n_2 ;
  wire \random_in_range_reg[31]_i_6_n_3 ;
  wire \random_in_range_reg[3]_i_12_n_0 ;
  wire \random_in_range_reg[3]_i_12_n_1 ;
  wire \random_in_range_reg[3]_i_12_n_2 ;
  wire \random_in_range_reg[3]_i_12_n_3 ;
  wire \random_in_range_reg[3]_i_17_n_0 ;
  wire \random_in_range_reg[3]_i_17_n_1 ;
  wire \random_in_range_reg[3]_i_17_n_2 ;
  wire \random_in_range_reg[3]_i_17_n_3 ;
  wire \random_in_range_reg[3]_i_1_n_0 ;
  wire \random_in_range_reg[3]_i_1_n_1 ;
  wire \random_in_range_reg[3]_i_1_n_2 ;
  wire \random_in_range_reg[3]_i_1_n_3 ;
  wire \random_in_range_reg[3]_i_1_n_4 ;
  wire \random_in_range_reg[3]_i_1_n_5 ;
  wire \random_in_range_reg[3]_i_1_n_6 ;
  wire \random_in_range_reg[3]_i_1_n_7 ;
  wire \random_in_range_reg[3]_i_22_n_0 ;
  wire \random_in_range_reg[3]_i_22_n_1 ;
  wire \random_in_range_reg[3]_i_22_n_2 ;
  wire \random_in_range_reg[3]_i_22_n_3 ;
  wire \random_in_range_reg[3]_i_6_n_0 ;
  wire \random_in_range_reg[3]_i_6_n_1 ;
  wire \random_in_range_reg[3]_i_6_n_2 ;
  wire \random_in_range_reg[3]_i_6_n_3 ;
  wire \random_in_range_reg[3]_i_7_n_0 ;
  wire \random_in_range_reg[3]_i_7_n_1 ;
  wire \random_in_range_reg[3]_i_7_n_2 ;
  wire \random_in_range_reg[3]_i_7_n_3 ;
  wire \random_in_range_reg[7]_i_1_n_0 ;
  wire \random_in_range_reg[7]_i_1_n_1 ;
  wire \random_in_range_reg[7]_i_1_n_2 ;
  wire \random_in_range_reg[7]_i_1_n_3 ;
  wire \random_in_range_reg[7]_i_1_n_4 ;
  wire \random_in_range_reg[7]_i_1_n_5 ;
  wire \random_in_range_reg[7]_i_1_n_6 ;
  wire \random_in_range_reg[7]_i_1_n_7 ;
  wire \random_in_range_reg[7]_i_6_n_0 ;
  wire \random_in_range_reg[7]_i_6_n_1 ;
  wire \random_in_range_reg[7]_i_6_n_2 ;
  wire \random_in_range_reg[7]_i_6_n_3 ;
  wire [31:0]\random_raw_reg[31]_0 ;
  wire rct_fail_i_3_n_0;
  wire rct_fail_i_4_n_0;
  wire rct_fail_i_5_n_0;
  wire rct_fail_i_6_n_0;
  wire rct_fail_reg_0;
  wire [7:0]ro_bits;
  wire ro_mix;
  wire ro_sync_0;
  wire ro_sync_1;
  wire \ros[1].u_ro_n_0 ;
  wire [15:0]run_len;
  wire [15:1]run_len0;
  wire run_len0_carry__0_n_0;
  wire run_len0_carry__0_n_1;
  wire run_len0_carry__0_n_2;
  wire run_len0_carry__0_n_3;
  wire run_len0_carry__1_n_0;
  wire run_len0_carry__1_n_1;
  wire run_len0_carry__1_n_2;
  wire run_len0_carry__1_n_3;
  wire run_len0_carry__2_n_2;
  wire run_len0_carry__2_n_3;
  wire run_len0_carry_n_0;
  wire run_len0_carry_n_1;
  wire run_len0_carry_n_2;
  wire run_len0_carry_n_3;
  wire \run_len[15]_i_2_n_0 ;
  wire \run_len[15]_i_3_n_0 ;
  wire \run_len[15]_i_4_n_0 ;
  wire \run_len[15]_i_5_n_0 ;
  wire \run_len[15]_i_6_n_0 ;
  wire \run_len_reg[6]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sample_stb;
  wire sample_stb_reg_0;
  wire scaled1_carry__0_i_1_n_0;
  wire scaled1_carry__0_i_2_n_0;
  wire scaled1_carry__0_i_3_n_0;
  wire scaled1_carry__0_i_4_n_0;
  wire scaled1_carry__0_n_0;
  wire scaled1_carry__0_n_1;
  wire scaled1_carry__0_n_2;
  wire scaled1_carry__0_n_3;
  wire scaled1_carry__1_i_1_n_0;
  wire scaled1_carry__1_i_2_n_0;
  wire scaled1_carry__1_i_3_n_0;
  wire scaled1_carry__1_n_1;
  wire scaled1_carry__1_n_2;
  wire scaled1_carry__1_n_3;
  wire scaled1_carry_i_1_n_0;
  wire scaled1_carry_i_2_n_0;
  wire scaled1_carry_i_3_n_0;
  wire scaled1_carry_i_4_n_0;
  wire scaled1_carry_n_0;
  wire scaled1_carry_n_1;
  wire scaled1_carry_n_2;
  wire scaled1_carry_n_3;
  wire [31:0]span0_out;
  wire span_carry__0_i_1_n_0;
  wire span_carry__0_i_2_n_0;
  wire span_carry__0_i_3_n_0;
  wire span_carry__0_i_4_n_0;
  wire span_carry__0_n_0;
  wire span_carry__0_n_1;
  wire span_carry__0_n_2;
  wire span_carry__0_n_3;
  wire span_carry__1_i_1_n_0;
  wire span_carry__1_i_2_n_0;
  wire span_carry__1_i_3_n_0;
  wire span_carry__1_i_4_n_0;
  wire span_carry__1_n_0;
  wire span_carry__1_n_1;
  wire span_carry__1_n_2;
  wire span_carry__1_n_3;
  wire span_carry__2_i_1_n_0;
  wire span_carry__2_i_2_n_0;
  wire span_carry__2_i_3_n_0;
  wire span_carry__2_i_4_n_0;
  wire span_carry__2_n_0;
  wire span_carry__2_n_1;
  wire span_carry__2_n_2;
  wire span_carry__2_n_3;
  wire span_carry__3_i_1_n_0;
  wire span_carry__3_i_2_n_0;
  wire span_carry__3_i_3_n_0;
  wire span_carry__3_i_4_n_0;
  wire span_carry__3_n_0;
  wire span_carry__3_n_1;
  wire span_carry__3_n_2;
  wire span_carry__3_n_3;
  wire span_carry__4_i_1_n_0;
  wire span_carry__4_i_2_n_0;
  wire span_carry__4_i_3_n_0;
  wire span_carry__4_i_4_n_0;
  wire span_carry__4_n_0;
  wire span_carry__4_n_1;
  wire span_carry__4_n_2;
  wire span_carry__4_n_3;
  wire span_carry__5_i_1_n_0;
  wire span_carry__5_i_2_n_0;
  wire span_carry__5_i_3_n_0;
  wire span_carry__5_i_4_n_0;
  wire span_carry__5_n_0;
  wire span_carry__5_n_1;
  wire span_carry__5_n_2;
  wire span_carry__5_n_3;
  wire span_carry__6_i_1_n_0;
  wire span_carry__6_i_2_n_0;
  wire span_carry__6_i_3_n_0;
  wire span_carry__6_i_4_n_0;
  wire span_carry__6_n_1;
  wire span_carry__6_n_2;
  wire span_carry__6_n_3;
  wire span_carry_i_1_n_0;
  wire span_carry_i_2_n_0;
  wire span_carry_i_3_n_0;
  wire span_carry_i_4_n_0;
  wire span_carry_n_0;
  wire span_carry_n_1;
  wire span_carry_n_2;
  wire span_carry_n_3;
  wire u_vn_n_10;
  wire u_vn_n_11;
  wire u_vn_n_12;
  wire u_vn_n_13;
  wire u_vn_n_14;
  wire u_vn_n_15;
  wire u_vn_n_16;
  wire u_vn_n_17;
  wire u_vn_n_18;
  wire u_vn_n_19;
  wire u_vn_n_20;
  wire u_vn_n_21;
  wire u_vn_n_22;
  wire u_vn_n_23;
  wire u_vn_n_24;
  wire u_vn_n_25;
  wire u_vn_n_4;
  wire u_vn_n_6;
  wire u_vn_n_7;
  wire [3:2]NLW_apt_count0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_apt_count0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_apt_ones0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_apt_ones0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_divcnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_divcnt0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_divcnt1_carry_O_UNCONNECTED;
  wire [3:2]NLW_divcnt1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_divcnt1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_high_reg0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_high_reg0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_high_reg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_high_reg1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_high_reg1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_high_reg1_carry__2_O_UNCONNECTED;
  wire NLW_prod_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod_OVERFLOW_UNCONNECTED;
  wire NLW_prod_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod_CARRYOUT_UNCONNECTED;
  wire NLW_prod__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod__0_OVERFLOW_UNCONNECTED;
  wire NLW_prod__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod__0_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_prod__0_P_UNCONNECTED;
  wire [47:0]NLW_prod__0_PCOUT_UNCONNECTED;
  wire NLW_prod__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod__1_OVERFLOW_UNCONNECTED;
  wire NLW_prod__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod__1_CARRYOUT_UNCONNECTED;
  wire NLW_prod__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod__2_OVERFLOW_UNCONNECTED;
  wire NLW_prod__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod__2_CARRYOUT_UNCONNECTED;
  wire [47:47]NLW_prod__2_P_UNCONNECTED;
  wire [47:0]NLW_prod__2_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_random_in_range_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_random_in_range_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_random_in_range_reg[3]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_random_in_range_reg[3]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_random_in_range_reg[3]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_random_in_range_reg[3]_i_7_O_UNCONNECTED ;
  wire [3:2]NLW_run_len0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_run_len0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_scaled1_carry_O_UNCONNECTED;
  wire [3:0]NLW_scaled1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_scaled1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_scaled1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_span_carry__6_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \acc_cnt[0]_i_1 
       (.I0(\apt_ones_reg[0]_0 ),
        .I1(acc_cnt[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \acc_cnt[1]_i_1 
       (.I0(acc_cnt[1]),
        .I1(acc_cnt[0]),
        .I2(\apt_ones_reg[0]_0 ),
        .O(\acc_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \acc_cnt[2]_i_1 
       (.I0(\apt_ones_reg[0]_0 ),
        .I1(acc_cnt[0]),
        .I2(acc_cnt[1]),
        .I3(acc_cnt[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \acc_cnt[3]_i_1 
       (.I0(\apt_ones_reg[0]_0 ),
        .I1(acc_cnt[1]),
        .I2(acc_cnt[0]),
        .I3(acc_cnt[2]),
        .I4(acc_cnt[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \acc_cnt[4]_i_2 
       (.I0(\apt_ones_reg[0]_0 ),
        .I1(acc_cnt[2]),
        .I2(acc_cnt[0]),
        .I3(acc_cnt[1]),
        .I4(acc_cnt[3]),
        .I5(acc_cnt[4]),
        .O(p_1_in[4]));
  FDCE \acc_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_6),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(acc_cnt[0]));
  FDCE \acc_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_6),
        .CLR(SR),
        .D(\acc_cnt[1]_i_1_n_0 ),
        .Q(acc_cnt[1]));
  FDCE \acc_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_6),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(acc_cnt[2]));
  FDCE \acc_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_6),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(acc_cnt[3]));
  FDCE \acc_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_6),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(acc_cnt[4]));
  FDCE \acc_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(out_bit_reg),
        .Q(p_0_in__0[1]));
  FDCE \acc_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[10]),
        .Q(p_0_in__0[11]));
  FDCE \acc_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[11]),
        .Q(p_0_in__0[12]));
  FDCE \acc_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[12]),
        .Q(p_0_in__0[13]));
  FDCE \acc_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[13]),
        .Q(p_0_in__0[14]));
  FDCE \acc_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[14]),
        .Q(p_0_in__0[15]));
  FDCE \acc_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[15]),
        .Q(p_0_in__0[16]));
  FDCE \acc_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[16]),
        .Q(p_0_in__0[17]));
  FDCE \acc_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[17]),
        .Q(p_0_in__0[18]));
  FDCE \acc_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[18]),
        .Q(p_0_in__0[19]));
  FDCE \acc_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[19]),
        .Q(p_0_in__0[20]));
  FDCE \acc_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[1]),
        .Q(p_0_in__0[2]));
  FDCE \acc_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[20]),
        .Q(p_0_in__0[21]));
  FDCE \acc_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[21]),
        .Q(p_0_in__0[22]));
  FDCE \acc_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[22]),
        .Q(p_0_in__0[23]));
  FDCE \acc_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[23]),
        .Q(p_0_in__0[24]));
  FDCE \acc_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[24]),
        .Q(p_0_in__0[25]));
  FDCE \acc_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[25]),
        .Q(p_0_in__0[26]));
  FDCE \acc_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[26]),
        .Q(p_0_in__0[27]));
  FDCE \acc_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[27]),
        .Q(p_0_in__0[28]));
  FDCE \acc_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[28]),
        .Q(p_0_in__0[29]));
  FDCE \acc_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[29]),
        .Q(p_0_in__0[30]));
  FDCE \acc_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[2]),
        .Q(p_0_in__0[3]));
  FDCE \acc_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[30]),
        .Q(p_0_in__0[31]));
  FDCE \acc_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[31]),
        .Q(\acc_reg_reg_n_0_[31] ));
  FDCE \acc_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[3]),
        .Q(p_0_in__0[4]));
  FDCE \acc_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[4]),
        .Q(p_0_in__0[5]));
  FDCE \acc_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[5]),
        .Q(p_0_in__0[6]));
  FDCE \acc_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[6]),
        .Q(p_0_in__0[7]));
  FDCE \acc_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[7]),
        .Q(p_0_in__0[8]));
  FDCE \acc_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[8]),
        .Q(p_0_in__0[9]));
  FDCE \acc_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(acc_cnt0),
        .CLR(SR),
        .D(p_0_in__0[9]),
        .Q(p_0_in__0[10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apt_count0_carry
       (.CI(1'b0),
        .CO({apt_count0_carry_n_0,apt_count0_carry_n_1,apt_count0_carry_n_2,apt_count0_carry_n_3}),
        .CYINIT(\apt_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({apt_count0_carry_n_4,apt_count0_carry_n_5,apt_count0_carry_n_6,apt_count0_carry_n_7}),
        .S({\apt_count_reg_n_0_[4] ,\apt_count_reg_n_0_[3] ,\apt_count_reg_n_0_[2] ,\apt_count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apt_count0_carry__0
       (.CI(apt_count0_carry_n_0),
        .CO({apt_count0_carry__0_n_0,apt_count0_carry__0_n_1,apt_count0_carry__0_n_2,apt_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({apt_count0_carry__0_n_4,apt_count0_carry__0_n_5,apt_count0_carry__0_n_6,apt_count0_carry__0_n_7}),
        .S({\apt_count_reg_n_0_[8] ,\apt_count_reg_n_0_[7] ,\apt_count_reg_n_0_[6] ,\apt_count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apt_count0_carry__1
       (.CI(apt_count0_carry__0_n_0),
        .CO({apt_count0_carry__1_n_0,apt_count0_carry__1_n_1,apt_count0_carry__1_n_2,apt_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({apt_count0_carry__1_n_4,apt_count0_carry__1_n_5,apt_count0_carry__1_n_6,apt_count0_carry__1_n_7}),
        .S({\apt_count_reg_n_0_[12] ,\apt_count_reg_n_0_[11] ,\apt_count_reg_n_0_[10] ,\apt_count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apt_count0_carry__2
       (.CI(apt_count0_carry__1_n_0),
        .CO({NLW_apt_count0_carry__2_CO_UNCONNECTED[3:2],apt_count0_carry__2_n_2,apt_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_apt_count0_carry__2_O_UNCONNECTED[3],apt_count0_carry__2_n_5,apt_count0_carry__2_n_6,apt_count0_carry__2_n_7}),
        .S({1'b0,\apt_count_reg_n_0_[15] ,\apt_count_reg_n_0_[14] ,\apt_count_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \apt_count[0]_i_1 
       (.I0(\apt_count_reg_n_0_[0] ),
        .O(apt_count[0]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[10]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__1_n_6),
        .O(apt_count[10]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[11]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__1_n_5),
        .O(apt_count[11]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[12]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__1_n_4),
        .O(apt_count[12]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[13]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__2_n_7),
        .O(apt_count[13]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[14]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__2_n_6),
        .O(apt_count[14]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[15]_i_2 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__2_n_5),
        .O(apt_count[15]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \apt_count[15]_i_3 
       (.I0(\apt_count_reg_n_0_[9] ),
        .I1(\apt_count_reg_n_0_[10] ),
        .I2(\apt_count_reg_n_0_[7] ),
        .I3(\apt_count_reg_n_0_[14] ),
        .O(\apt_count[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \apt_count[15]_i_4 
       (.I0(\apt_count_reg_n_0_[11] ),
        .I1(\apt_count_reg_n_0_[12] ),
        .I2(\apt_count_reg_n_0_[15] ),
        .I3(\apt_count_reg_n_0_[13] ),
        .O(\apt_count[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \apt_count[15]_i_5 
       (.I0(\apt_count_reg_n_0_[1] ),
        .I1(\apt_count_reg_n_0_[2] ),
        .I2(\apt_count_reg_n_0_[6] ),
        .I3(\apt_count_reg_n_0_[0] ),
        .O(\apt_count[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \apt_count[15]_i_6 
       (.I0(\apt_count_reg_n_0_[5] ),
        .I1(\apt_count_reg_n_0_[4] ),
        .I2(\apt_count_reg_n_0_[3] ),
        .I3(\apt_count_reg_n_0_[8] ),
        .O(\apt_count[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[1]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry_n_7),
        .O(apt_count[1]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[2]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry_n_6),
        .O(apt_count[2]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[3]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry_n_5),
        .O(apt_count[3]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[4]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry_n_4),
        .O(apt_count[4]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[5]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__0_n_7),
        .O(apt_count[5]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[6]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__0_n_6),
        .O(apt_count[6]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[7]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__0_n_5),
        .O(apt_count[7]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[8]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__0_n_4),
        .O(apt_count[8]));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_count[9]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(apt_count0_carry__1_n_7),
        .O(apt_count[9]));
  FDCE \apt_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[0]),
        .Q(\apt_count_reg_n_0_[0] ));
  FDCE \apt_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[10]),
        .Q(\apt_count_reg_n_0_[10] ));
  FDCE \apt_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[11]),
        .Q(\apt_count_reg_n_0_[11] ));
  FDCE \apt_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[12]),
        .Q(\apt_count_reg_n_0_[12] ));
  FDCE \apt_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[13]),
        .Q(\apt_count_reg_n_0_[13] ));
  FDCE \apt_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[14]),
        .Q(\apt_count_reg_n_0_[14] ));
  FDCE \apt_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[15]),
        .Q(\apt_count_reg_n_0_[15] ));
  FDCE \apt_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[1]),
        .Q(\apt_count_reg_n_0_[1] ));
  FDCE \apt_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[2]),
        .Q(\apt_count_reg_n_0_[2] ));
  FDCE \apt_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[3]),
        .Q(\apt_count_reg_n_0_[3] ));
  FDCE \apt_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[4]),
        .Q(\apt_count_reg_n_0_[4] ));
  FDCE \apt_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[5]),
        .Q(\apt_count_reg_n_0_[5] ));
  FDCE \apt_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[6]),
        .Q(\apt_count_reg_n_0_[6] ));
  FDCE \apt_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[7]),
        .Q(\apt_count_reg_n_0_[7] ));
  FDCE \apt_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[8]),
        .Q(\apt_count_reg_n_0_[8] ));
  FDCE \apt_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(apt_count[9]),
        .Q(\apt_count_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFFFDFFFCFCFFFFFF)) 
    apt_fail_i_2
       (.I0(apt_fail_i_3_n_0),
        .I1(apt_fail_i_4_n_0),
        .I2(apt_fail_i_5_n_0),
        .I3(\apt_ones_reg_n_0_[7] ),
        .I4(\apt_ones_reg_n_0_[6] ),
        .I5(\apt_ones_reg_n_0_[8] ),
        .O(\apt_ones_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    apt_fail_i_3
       (.I0(\apt_ones_reg_n_0_[2] ),
        .I1(\apt_ones_reg_n_0_[3] ),
        .I2(\apt_ones_reg_n_0_[0] ),
        .I3(\apt_ones_reg_n_0_[4] ),
        .I4(\apt_ones_reg_n_0_[5] ),
        .I5(\apt_ones_reg_n_0_[1] ),
        .O(apt_fail_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    apt_fail_i_4
       (.I0(\apt_ones_reg_n_0_[13] ),
        .I1(\apt_ones_reg_n_0_[10] ),
        .I2(\apt_ones_reg_n_0_[11] ),
        .O(apt_fail_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    apt_fail_i_5
       (.I0(\apt_ones_reg_n_0_[12] ),
        .I1(\apt_ones_reg_n_0_[14] ),
        .I2(\apt_ones_reg_n_0_[9] ),
        .I3(\apt_ones_reg_n_0_[15] ),
        .O(apt_fail_i_5_n_0));
  FDCE apt_fail_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(apt_fail_reg_0),
        .Q(D[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \apt_ones0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\apt_ones0_inferred__0/i__carry_n_0 ,\apt_ones0_inferred__0/i__carry_n_1 ,\apt_ones0_inferred__0/i__carry_n_2 ,\apt_ones0_inferred__0/i__carry_n_3 }),
        .CYINIT(\apt_ones_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\apt_ones0_inferred__0/i__carry_n_4 ,\apt_ones0_inferred__0/i__carry_n_5 ,\apt_ones0_inferred__0/i__carry_n_6 ,\apt_ones0_inferred__0/i__carry_n_7 }),
        .S({\apt_ones_reg_n_0_[4] ,\apt_ones_reg_n_0_[3] ,\apt_ones_reg_n_0_[2] ,\apt_ones_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \apt_ones0_inferred__0/i__carry__0 
       (.CI(\apt_ones0_inferred__0/i__carry_n_0 ),
        .CO({\apt_ones0_inferred__0/i__carry__0_n_0 ,\apt_ones0_inferred__0/i__carry__0_n_1 ,\apt_ones0_inferred__0/i__carry__0_n_2 ,\apt_ones0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\apt_ones0_inferred__0/i__carry__0_n_4 ,\apt_ones0_inferred__0/i__carry__0_n_5 ,\apt_ones0_inferred__0/i__carry__0_n_6 ,\apt_ones0_inferred__0/i__carry__0_n_7 }),
        .S({\apt_ones_reg_n_0_[8] ,\apt_ones_reg_n_0_[7] ,\apt_ones_reg_n_0_[6] ,\apt_ones_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \apt_ones0_inferred__0/i__carry__1 
       (.CI(\apt_ones0_inferred__0/i__carry__0_n_0 ),
        .CO({\apt_ones0_inferred__0/i__carry__1_n_0 ,\apt_ones0_inferred__0/i__carry__1_n_1 ,\apt_ones0_inferred__0/i__carry__1_n_2 ,\apt_ones0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\apt_ones0_inferred__0/i__carry__1_n_4 ,\apt_ones0_inferred__0/i__carry__1_n_5 ,\apt_ones0_inferred__0/i__carry__1_n_6 ,\apt_ones0_inferred__0/i__carry__1_n_7 }),
        .S({\apt_ones_reg_n_0_[12] ,\apt_ones_reg_n_0_[11] ,\apt_ones_reg_n_0_[10] ,\apt_ones_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \apt_ones0_inferred__0/i__carry__2 
       (.CI(\apt_ones0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_apt_ones0_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\apt_ones0_inferred__0/i__carry__2_n_2 ,\apt_ones0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_apt_ones0_inferred__0/i__carry__2_O_UNCONNECTED [3],\apt_ones0_inferred__0/i__carry__2_n_5 ,\apt_ones0_inferred__0/i__carry__2_n_6 ,\apt_ones0_inferred__0/i__carry__2_n_7 }),
        .S({1'b0,\apt_ones_reg_n_0_[15] ,\apt_ones_reg_n_0_[14] ,\apt_ones_reg_n_0_[13] }));
  LUT2 #(
    .INIT(4'h2)) 
    \apt_ones[0]_i_1 
       (.I0(\apt_count_reg[9]_0 ),
        .I1(\apt_ones_reg_n_0_[0] ),
        .O(\apt_ones[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[10]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__1_n_6 ),
        .O(\apt_ones[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[11]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__1_n_5 ),
        .O(\apt_ones[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[12]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__1_n_4 ),
        .O(\apt_ones[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[13]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__2_n_7 ),
        .O(\apt_ones[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[14]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__2_n_6 ),
        .O(\apt_ones[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[15]_i_2 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__2_n_5 ),
        .O(\apt_ones[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \apt_ones[15]_i_3 
       (.I0(\apt_ones[15]_i_4_n_0 ),
        .I1(\apt_ones[15]_i_5_n_0 ),
        .I2(\apt_ones[15]_i_6_n_0 ),
        .I3(\apt_ones[15]_i_7_n_0 ),
        .O(\apt_count_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \apt_ones[15]_i_4 
       (.I0(\apt_count_reg_n_0_[9] ),
        .I1(\apt_count_reg_n_0_[11] ),
        .I2(\apt_count_reg_n_0_[2] ),
        .I3(\apt_count_reg_n_0_[4] ),
        .O(\apt_ones[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \apt_ones[15]_i_5 
       (.I0(\apt_count_reg_n_0_[1] ),
        .I1(\apt_count_reg_n_0_[8] ),
        .I2(\apt_count_reg_n_0_[12] ),
        .I3(\apt_count_reg_n_0_[15] ),
        .O(\apt_ones[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \apt_ones[15]_i_6 
       (.I0(\apt_count_reg_n_0_[0] ),
        .I1(\apt_count_reg_n_0_[10] ),
        .I2(\apt_count_reg_n_0_[5] ),
        .I3(\apt_count_reg_n_0_[3] ),
        .O(\apt_ones[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \apt_ones[15]_i_7 
       (.I0(\apt_count_reg_n_0_[13] ),
        .I1(\apt_count_reg_n_0_[7] ),
        .I2(\apt_count_reg_n_0_[6] ),
        .I3(\apt_count_reg_n_0_[14] ),
        .O(\apt_ones[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[1]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry_n_7 ),
        .O(\apt_ones[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[2]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry_n_6 ),
        .O(\apt_ones[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[3]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry_n_5 ),
        .O(\apt_ones[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[4]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry_n_4 ),
        .O(\apt_ones[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[5]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__0_n_7 ),
        .O(\apt_ones[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[6]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__0_n_6 ),
        .O(\apt_ones[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[7]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__0_n_5 ),
        .O(\apt_ones[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[8]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__0_n_4 ),
        .O(\apt_ones[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \apt_ones[9]_i_1 
       (.I0(\apt_count[15]_i_3_n_0 ),
        .I1(\apt_count[15]_i_4_n_0 ),
        .I2(\apt_count[15]_i_5_n_0 ),
        .I3(\apt_count[15]_i_6_n_0 ),
        .I4(\apt_ones0_inferred__0/i__carry__1_n_7 ),
        .O(\apt_ones[9]_i_1_n_0 ));
  FDCE \apt_ones_reg[0] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[0]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[0] ));
  FDCE \apt_ones_reg[10] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[10]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[10] ));
  FDCE \apt_ones_reg[11] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[11]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[11] ));
  FDCE \apt_ones_reg[12] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[12]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[12] ));
  FDCE \apt_ones_reg[13] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[13]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[13] ));
  FDCE \apt_ones_reg[14] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[14]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[14] ));
  FDCE \apt_ones_reg[15] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[15]_i_2_n_0 ),
        .Q(\apt_ones_reg_n_0_[15] ));
  FDCE \apt_ones_reg[1] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[1]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[1] ));
  FDCE \apt_ones_reg[2] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[2]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[2] ));
  FDCE \apt_ones_reg[3] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[3]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[3] ));
  FDCE \apt_ones_reg[4] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[4]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[4] ));
  FDCE \apt_ones_reg[5] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[5]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[5] ));
  FDCE \apt_ones_reg[6] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[6]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[6] ));
  FDCE \apt_ones_reg[7] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[7]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[7] ));
  FDCE \apt_ones_reg[8] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[8]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[8] ));
  FDCE \apt_ones_reg[9] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_7),
        .CLR(SR),
        .D(\apt_ones[9]_i_1_n_0 ),
        .Q(\apt_ones_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 divcnt0_carry
       (.CI(1'b0),
        .CO({divcnt0_carry_n_0,divcnt0_carry_n_1,divcnt0_carry_n_2,divcnt0_carry_n_3}),
        .CYINIT(divcnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(divcnt0[4:1]),
        .S(divcnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 divcnt0_carry__0
       (.CI(divcnt0_carry_n_0),
        .CO({divcnt0_carry__0_n_0,divcnt0_carry__0_n_1,divcnt0_carry__0_n_2,divcnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(divcnt0[8:5]),
        .S(divcnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 divcnt0_carry__1
       (.CI(divcnt0_carry__0_n_0),
        .CO({divcnt0_carry__1_n_0,divcnt0_carry__1_n_1,divcnt0_carry__1_n_2,divcnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(divcnt0[12:9]),
        .S(divcnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 divcnt0_carry__2
       (.CI(divcnt0_carry__1_n_0),
        .CO({NLW_divcnt0_carry__2_CO_UNCONNECTED[3:2],divcnt0_carry__2_n_2,divcnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_divcnt0_carry__2_O_UNCONNECTED[3],divcnt0[15:13]}),
        .S({1'b0,divcnt[15:13]}));
  CARRY4 divcnt1_carry
       (.CI(1'b0),
        .CO({divcnt1_carry_n_0,divcnt1_carry_n_1,divcnt1_carry_n_2,divcnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_divcnt1_carry_O_UNCONNECTED[3:0]),
        .S({divcnt1_carry_i_1_n_0,divcnt1_carry_i_2_n_0,divcnt1_carry_i_3_n_0,divcnt1_carry_i_4_n_0}));
  CARRY4 divcnt1_carry__0
       (.CI(divcnt1_carry_n_0),
        .CO({NLW_divcnt1_carry__0_CO_UNCONNECTED[3:2],divcnt1,divcnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_divcnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,divcnt1_carry__0_i_1_n_0,divcnt1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    divcnt1_carry__0_i_1
       (.I0(divcnt1_carry__0_0[15]),
        .I1(divcnt[15]),
        .O(divcnt1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    divcnt1_carry__0_i_2
       (.I0(divcnt[14]),
        .I1(divcnt1_carry__0_0[14]),
        .I2(divcnt[13]),
        .I3(divcnt1_carry__0_0[13]),
        .I4(divcnt1_carry__0_0[12]),
        .I5(divcnt[12]),
        .O(divcnt1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    divcnt1_carry_i_1
       (.I0(divcnt[11]),
        .I1(divcnt1_carry__0_0[11]),
        .I2(divcnt[10]),
        .I3(divcnt1_carry__0_0[10]),
        .I4(divcnt1_carry__0_0[9]),
        .I5(divcnt[9]),
        .O(divcnt1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    divcnt1_carry_i_10
       (.I0(divcnt1_carry__0_0[4]),
        .I1(divcnt1_carry__0_0[3]),
        .I2(divcnt1_carry__0_0[5]),
        .I3(divcnt1_carry__0_0[10]),
        .I4(divcnt1_carry__0_0[9]),
        .O(divcnt1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    divcnt1_carry_i_2
       (.I0(divcnt[8]),
        .I1(divcnt1_carry__0_0[8]),
        .I2(divcnt[7]),
        .I3(divcnt1_carry__0_0[7]),
        .I4(divcnt1_carry__0_0[6]),
        .I5(divcnt[6]),
        .O(divcnt1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    divcnt1_carry_i_3
       (.I0(divcnt[5]),
        .I1(divcnt1_carry__0_0[5]),
        .I2(divcnt[4]),
        .I3(divcnt1_carry__0_0[4]),
        .I4(divcnt1_carry__0_0[3]),
        .I5(divcnt[3]),
        .O(divcnt1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h0000BA45)) 
    divcnt1_carry_i_4
       (.I0(divcnt1_carry__0_0[0]),
        .I1(divcnt1_carry_i_5_n_0),
        .I2(divcnt1_carry_i_6_n_0),
        .I3(divcnt[0]),
        .I4(divcnt1_carry_i_7_n_0),
        .O(divcnt1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    divcnt1_carry_i_5
       (.I0(divcnt1_carry_i_8_n_0),
        .I1(divcnt1_carry__0_0[14]),
        .I2(divcnt1_carry__0_0[2]),
        .I3(divcnt1_carry__0_0[4]),
        .I4(divcnt1_carry_i_9_n_0),
        .O(divcnt1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    divcnt1_carry_i_6
       (.I0(divcnt1_carry__0_0[7]),
        .I1(divcnt1_carry__0_0[8]),
        .I2(divcnt1_carry__0_0[11]),
        .I3(divcnt1_carry_i_10_n_0),
        .O(divcnt1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    divcnt1_carry_i_7
       (.I0(divcnt1_carry__0_0[1]),
        .I1(divcnt[1]),
        .I2(divcnt1_carry__0_0[2]),
        .I3(divcnt[2]),
        .O(divcnt1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFF4)) 
    divcnt1_carry_i_8
       (.I0(divcnt1_carry__0_0[13]),
        .I1(divcnt1_carry__0_0[12]),
        .I2(divcnt1_carry__0_0[5]),
        .I3(divcnt1_carry__0_0[1]),
        .O(divcnt1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    divcnt1_carry_i_9
       (.I0(divcnt1_carry__0_0[6]),
        .I1(divcnt1_carry__0_0[15]),
        .I2(divcnt1_carry__0_0[13]),
        .I3(divcnt1_carry__0_0[14]),
        .O(divcnt1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \divcnt[0]_i_1 
       (.I0(divcnt[0]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[10]_i_1 
       (.I0(divcnt0[10]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[11]_i_1 
       (.I0(divcnt0[11]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[12]_i_1 
       (.I0(divcnt0[12]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[13]_i_1 
       (.I0(divcnt0[13]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[14]_i_1 
       (.I0(divcnt0[14]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[15]_i_1 
       (.I0(divcnt0[15]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[1]_i_1 
       (.I0(divcnt0[1]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[2]_i_1 
       (.I0(divcnt0[2]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[3]_i_1 
       (.I0(divcnt0[3]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[4]_i_1 
       (.I0(divcnt0[4]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[5]_i_1 
       (.I0(divcnt0[5]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[6]_i_1 
       (.I0(divcnt0[6]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[7]_i_1 
       (.I0(divcnt0[7]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[8]_i_1 
       (.I0(divcnt0[8]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \divcnt[9]_i_1 
       (.I0(divcnt0[9]),
        .I1(\apt_ones_reg[0]_0 ),
        .I2(divcnt1),
        .O(\divcnt[9]_i_1_n_0 ));
  FDCE \divcnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[0]_i_1_n_0 ),
        .Q(divcnt[0]));
  FDCE \divcnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[10]_i_1_n_0 ),
        .Q(divcnt[10]));
  FDCE \divcnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[11]_i_1_n_0 ),
        .Q(divcnt[11]));
  FDCE \divcnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[12]_i_1_n_0 ),
        .Q(divcnt[12]));
  FDCE \divcnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[13]_i_1_n_0 ),
        .Q(divcnt[13]));
  FDCE \divcnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[14]_i_1_n_0 ),
        .Q(divcnt[14]));
  FDCE \divcnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[15]_i_1_n_0 ),
        .Q(divcnt[15]));
  FDCE \divcnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[1]_i_1_n_0 ),
        .Q(divcnt[1]));
  FDCE \divcnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[2]_i_1_n_0 ),
        .Q(divcnt[2]));
  FDCE \divcnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[3]_i_1_n_0 ),
        .Q(divcnt[3]));
  FDCE \divcnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[4]_i_1_n_0 ),
        .Q(divcnt[4]));
  FDCE \divcnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[5]_i_1_n_0 ),
        .Q(divcnt[5]));
  FDCE \divcnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[6]_i_1_n_0 ),
        .Q(divcnt[6]));
  FDCE \divcnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[7]_i_1_n_0 ),
        .Q(divcnt[7]));
  FDCE \divcnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[8]_i_1_n_0 ),
        .Q(divcnt[8]));
  FDCE \divcnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\divcnt[9]_i_1_n_0 ),
        .Q(divcnt[9]));
  FDPE health_ok_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(health_ok_reg_0),
        .PRE(SR),
        .Q(D[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 high_reg0_carry
       (.CI(1'b0),
        .CO({high_reg0_carry_n_0,high_reg0_carry_n_1,high_reg0_carry_n_2,high_reg0_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(high_reg0[4:1]),
        .S(Q[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 high_reg0_carry__0
       (.CI(high_reg0_carry_n_0),
        .CO({high_reg0_carry__0_n_0,high_reg0_carry__0_n_1,high_reg0_carry__0_n_2,high_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(high_reg0[8:5]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 high_reg0_carry__1
       (.CI(high_reg0_carry__0_n_0),
        .CO({high_reg0_carry__1_n_0,high_reg0_carry__1_n_1,high_reg0_carry__1_n_2,high_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(high_reg0[12:9]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 high_reg0_carry__2
       (.CI(high_reg0_carry__1_n_0),
        .CO({high_reg0_carry__2_n_0,high_reg0_carry__2_n_1,high_reg0_carry__2_n_2,high_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(high_reg0[16:13]),
        .S(Q[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 high_reg0_carry__3
       (.CI(high_reg0_carry__2_n_0),
        .CO({high_reg0_carry__3_n_0,high_reg0_carry__3_n_1,high_reg0_carry__3_n_2,high_reg0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(high_reg0[20:17]),
        .S(Q[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 high_reg0_carry__4
       (.CI(high_reg0_carry__3_n_0),
        .CO({high_reg0_carry__4_n_0,high_reg0_carry__4_n_1,high_reg0_carry__4_n_2,high_reg0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(high_reg0[24:21]),
        .S(Q[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 high_reg0_carry__5
       (.CI(high_reg0_carry__4_n_0),
        .CO({high_reg0_carry__5_n_0,high_reg0_carry__5_n_1,high_reg0_carry__5_n_2,high_reg0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(high_reg0[28:25]),
        .S(Q[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 high_reg0_carry__6
       (.CI(high_reg0_carry__5_n_0),
        .CO({NLW_high_reg0_carry__6_CO_UNCONNECTED[3:2],high_reg0_carry__6_n_2,high_reg0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_high_reg0_carry__6_O_UNCONNECTED[3],high_reg0[31:29]}),
        .S({1'b0,Q[31:29]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 high_reg1_carry
       (.CI(1'b0),
        .CO({high_reg1_carry_n_0,high_reg1_carry_n_1,high_reg1_carry_n_2,high_reg1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({high_reg1_carry_i_1_n_0,high_reg1_carry_i_2_n_0,high_reg1_carry_i_3_n_0,high_reg1_carry_i_4_n_0}),
        .O(NLW_high_reg1_carry_O_UNCONNECTED[3:0]),
        .S({high_reg1_carry_i_5_n_0,high_reg1_carry_i_6_n_0,high_reg1_carry_i_7_n_0,high_reg1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 high_reg1_carry__0
       (.CI(high_reg1_carry_n_0),
        .CO({high_reg1_carry__0_n_0,high_reg1_carry__0_n_1,high_reg1_carry__0_n_2,high_reg1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({high_reg1_carry__0_i_1_n_0,high_reg1_carry__0_i_2_n_0,high_reg1_carry__0_i_3_n_0,high_reg1_carry__0_i_4_n_0}),
        .O(NLW_high_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({high_reg1_carry__0_i_5_n_0,high_reg1_carry__0_i_6_n_0,high_reg1_carry__0_i_7_n_0,high_reg1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__0_i_1
       (.I0(Q[15]),
        .I1(\high_reg_reg[31]_0 [15]),
        .I2(Q[14]),
        .I3(\high_reg_reg[31]_0 [14]),
        .O(high_reg1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__0_i_2
       (.I0(Q[13]),
        .I1(\high_reg_reg[31]_0 [13]),
        .I2(Q[12]),
        .I3(\high_reg_reg[31]_0 [12]),
        .O(high_reg1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__0_i_3
       (.I0(Q[11]),
        .I1(\high_reg_reg[31]_0 [11]),
        .I2(Q[10]),
        .I3(\high_reg_reg[31]_0 [10]),
        .O(high_reg1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__0_i_4
       (.I0(Q[9]),
        .I1(\high_reg_reg[31]_0 [9]),
        .I2(Q[8]),
        .I3(\high_reg_reg[31]_0 [8]),
        .O(high_reg1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__0_i_5
       (.I0(\high_reg_reg[31]_0 [15]),
        .I1(Q[15]),
        .I2(\high_reg_reg[31]_0 [14]),
        .I3(Q[14]),
        .O(high_reg1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__0_i_6
       (.I0(\high_reg_reg[31]_0 [13]),
        .I1(Q[13]),
        .I2(\high_reg_reg[31]_0 [12]),
        .I3(Q[12]),
        .O(high_reg1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__0_i_7
       (.I0(\high_reg_reg[31]_0 [11]),
        .I1(Q[11]),
        .I2(\high_reg_reg[31]_0 [10]),
        .I3(Q[10]),
        .O(high_reg1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__0_i_8
       (.I0(\high_reg_reg[31]_0 [9]),
        .I1(Q[9]),
        .I2(\high_reg_reg[31]_0 [8]),
        .I3(Q[8]),
        .O(high_reg1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 high_reg1_carry__1
       (.CI(high_reg1_carry__0_n_0),
        .CO({high_reg1_carry__1_n_0,high_reg1_carry__1_n_1,high_reg1_carry__1_n_2,high_reg1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({high_reg1_carry__1_i_1_n_0,high_reg1_carry__1_i_2_n_0,high_reg1_carry__1_i_3_n_0,high_reg1_carry__1_i_4_n_0}),
        .O(NLW_high_reg1_carry__1_O_UNCONNECTED[3:0]),
        .S({high_reg1_carry__1_i_5_n_0,high_reg1_carry__1_i_6_n_0,high_reg1_carry__1_i_7_n_0,high_reg1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__1_i_1
       (.I0(Q[23]),
        .I1(\high_reg_reg[31]_0 [23]),
        .I2(Q[22]),
        .I3(\high_reg_reg[31]_0 [22]),
        .O(high_reg1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__1_i_2
       (.I0(Q[21]),
        .I1(\high_reg_reg[31]_0 [21]),
        .I2(Q[20]),
        .I3(\high_reg_reg[31]_0 [20]),
        .O(high_reg1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__1_i_3
       (.I0(Q[19]),
        .I1(\high_reg_reg[31]_0 [19]),
        .I2(Q[18]),
        .I3(\high_reg_reg[31]_0 [18]),
        .O(high_reg1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__1_i_4
       (.I0(Q[17]),
        .I1(\high_reg_reg[31]_0 [17]),
        .I2(Q[16]),
        .I3(\high_reg_reg[31]_0 [16]),
        .O(high_reg1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__1_i_5
       (.I0(\high_reg_reg[31]_0 [23]),
        .I1(Q[23]),
        .I2(\high_reg_reg[31]_0 [22]),
        .I3(Q[22]),
        .O(high_reg1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__1_i_6
       (.I0(\high_reg_reg[31]_0 [21]),
        .I1(Q[21]),
        .I2(\high_reg_reg[31]_0 [20]),
        .I3(Q[20]),
        .O(high_reg1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__1_i_7
       (.I0(\high_reg_reg[31]_0 [19]),
        .I1(Q[19]),
        .I2(\high_reg_reg[31]_0 [18]),
        .I3(Q[18]),
        .O(high_reg1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__1_i_8
       (.I0(\high_reg_reg[31]_0 [17]),
        .I1(Q[17]),
        .I2(\high_reg_reg[31]_0 [16]),
        .I3(Q[16]),
        .O(high_reg1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 high_reg1_carry__2
       (.CI(high_reg1_carry__1_n_0),
        .CO({high_reg1,high_reg1_carry__2_n_1,high_reg1_carry__2_n_2,high_reg1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({high_reg1_carry__2_i_1_n_0,high_reg1_carry__2_i_2_n_0,high_reg1_carry__2_i_3_n_0,high_reg1_carry__2_i_4_n_0}),
        .O(NLW_high_reg1_carry__2_O_UNCONNECTED[3:0]),
        .S({high_reg1_carry__2_i_5_n_0,high_reg1_carry__2_i_6_n_0,high_reg1_carry__2_i_7_n_0,high_reg1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__2_i_1
       (.I0(Q[31]),
        .I1(\high_reg_reg[31]_0 [31]),
        .I2(Q[30]),
        .I3(\high_reg_reg[31]_0 [30]),
        .O(high_reg1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__2_i_2
       (.I0(Q[29]),
        .I1(\high_reg_reg[31]_0 [29]),
        .I2(Q[28]),
        .I3(\high_reg_reg[31]_0 [28]),
        .O(high_reg1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__2_i_3
       (.I0(Q[27]),
        .I1(\high_reg_reg[31]_0 [27]),
        .I2(Q[26]),
        .I3(\high_reg_reg[31]_0 [26]),
        .O(high_reg1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry__2_i_4
       (.I0(Q[25]),
        .I1(\high_reg_reg[31]_0 [25]),
        .I2(Q[24]),
        .I3(\high_reg_reg[31]_0 [24]),
        .O(high_reg1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__2_i_5
       (.I0(\high_reg_reg[31]_0 [31]),
        .I1(Q[31]),
        .I2(\high_reg_reg[31]_0 [30]),
        .I3(Q[30]),
        .O(high_reg1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__2_i_6
       (.I0(\high_reg_reg[31]_0 [29]),
        .I1(Q[29]),
        .I2(\high_reg_reg[31]_0 [28]),
        .I3(Q[28]),
        .O(high_reg1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__2_i_7
       (.I0(\high_reg_reg[31]_0 [27]),
        .I1(Q[27]),
        .I2(\high_reg_reg[31]_0 [26]),
        .I3(Q[26]),
        .O(high_reg1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry__2_i_8
       (.I0(\high_reg_reg[31]_0 [25]),
        .I1(Q[25]),
        .I2(\high_reg_reg[31]_0 [24]),
        .I3(Q[24]),
        .O(high_reg1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry_i_1
       (.I0(Q[7]),
        .I1(\high_reg_reg[31]_0 [7]),
        .I2(Q[6]),
        .I3(\high_reg_reg[31]_0 [6]),
        .O(high_reg1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry_i_2
       (.I0(Q[5]),
        .I1(\high_reg_reg[31]_0 [5]),
        .I2(Q[4]),
        .I3(\high_reg_reg[31]_0 [4]),
        .O(high_reg1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry_i_3
       (.I0(Q[3]),
        .I1(\high_reg_reg[31]_0 [3]),
        .I2(Q[2]),
        .I3(\high_reg_reg[31]_0 [2]),
        .O(high_reg1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    high_reg1_carry_i_4
       (.I0(Q[1]),
        .I1(\high_reg_reg[31]_0 [1]),
        .I2(Q[0]),
        .I3(\high_reg_reg[31]_0 [0]),
        .O(high_reg1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry_i_5
       (.I0(\high_reg_reg[31]_0 [7]),
        .I1(Q[7]),
        .I2(\high_reg_reg[31]_0 [6]),
        .I3(Q[6]),
        .O(high_reg1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry_i_6
       (.I0(\high_reg_reg[31]_0 [5]),
        .I1(Q[5]),
        .I2(\high_reg_reg[31]_0 [4]),
        .I3(Q[4]),
        .O(high_reg1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry_i_7
       (.I0(\high_reg_reg[31]_0 [3]),
        .I1(Q[3]),
        .I2(\high_reg_reg[31]_0 [2]),
        .I3(Q[2]),
        .O(high_reg1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    high_reg1_carry_i_8
       (.I0(\high_reg_reg[31]_0 [1]),
        .I1(Q[1]),
        .I2(\high_reg_reg[31]_0 [0]),
        .I3(Q[0]),
        .O(high_reg1_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h3A)) 
    \high_reg[0]_i_1 
       (.I0(\high_reg_reg[31]_0 [0]),
        .I1(Q[0]),
        .I2(high_reg1),
        .O(\high_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[10]_i_1 
       (.I0(high_reg0[10]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [10]),
        .O(\high_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[11]_i_1 
       (.I0(high_reg0[11]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [11]),
        .O(\high_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[12]_i_1 
       (.I0(high_reg0[12]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [12]),
        .O(\high_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[13]_i_1 
       (.I0(high_reg0[13]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [13]),
        .O(\high_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[14]_i_1 
       (.I0(high_reg0[14]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [14]),
        .O(\high_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[15]_i_1 
       (.I0(high_reg0[15]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [15]),
        .O(\high_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[16]_i_1 
       (.I0(high_reg0[16]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [16]),
        .O(\high_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[17]_i_1 
       (.I0(high_reg0[17]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [17]),
        .O(\high_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[18]_i_1 
       (.I0(high_reg0[18]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [18]),
        .O(\high_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[19]_i_1 
       (.I0(high_reg0[19]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [19]),
        .O(\high_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[1]_i_1 
       (.I0(high_reg0[1]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [1]),
        .O(\high_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[20]_i_1 
       (.I0(high_reg0[20]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [20]),
        .O(\high_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[21]_i_1 
       (.I0(high_reg0[21]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [21]),
        .O(\high_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[22]_i_1 
       (.I0(high_reg0[22]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [22]),
        .O(\high_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[23]_i_1 
       (.I0(high_reg0[23]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [23]),
        .O(\high_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[24]_i_1 
       (.I0(high_reg0[24]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [24]),
        .O(\high_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[25]_i_1 
       (.I0(high_reg0[25]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [25]),
        .O(\high_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[26]_i_1 
       (.I0(high_reg0[26]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [26]),
        .O(\high_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[27]_i_1 
       (.I0(high_reg0[27]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [27]),
        .O(\high_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[28]_i_1 
       (.I0(high_reg0[28]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [28]),
        .O(\high_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[29]_i_1 
       (.I0(high_reg0[29]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [29]),
        .O(\high_reg[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[2]_i_1 
       (.I0(high_reg0[2]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [2]),
        .O(\high_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[30]_i_1 
       (.I0(high_reg0[30]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [30]),
        .O(\high_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[31]_i_1 
       (.I0(high_reg0[31]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [31]),
        .O(\high_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[3]_i_1 
       (.I0(high_reg0[3]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [3]),
        .O(\high_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[4]_i_1 
       (.I0(high_reg0[4]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [4]),
        .O(\high_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[5]_i_1 
       (.I0(high_reg0[5]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [5]),
        .O(\high_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[6]_i_1 
       (.I0(high_reg0[6]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [6]),
        .O(\high_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[7]_i_1 
       (.I0(high_reg0[7]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [7]),
        .O(\high_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[8]_i_1 
       (.I0(high_reg0[8]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [8]),
        .O(\high_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \high_reg[9]_i_1 
       (.I0(high_reg0[9]),
        .I1(high_reg1),
        .I2(\high_reg_reg[31]_0 [9]),
        .O(\high_reg[9]_i_1_n_0 ));
  FDCE \high_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[0]_i_1_n_0 ),
        .Q(high_reg[0]));
  FDCE \high_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[10]_i_1_n_0 ),
        .Q(high_reg[10]));
  FDCE \high_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[11]_i_1_n_0 ),
        .Q(high_reg[11]));
  FDCE \high_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[12]_i_1_n_0 ),
        .Q(high_reg[12]));
  FDCE \high_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[13]_i_1_n_0 ),
        .Q(high_reg[13]));
  FDCE \high_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[14]_i_1_n_0 ),
        .Q(high_reg[14]));
  FDCE \high_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[15]_i_1_n_0 ),
        .Q(high_reg[15]));
  FDCE \high_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[16]_i_1_n_0 ),
        .Q(high_reg[16]));
  FDCE \high_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[17]_i_1_n_0 ),
        .Q(high_reg[17]));
  FDCE \high_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[18]_i_1_n_0 ),
        .Q(high_reg[18]));
  FDCE \high_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[19]_i_1_n_0 ),
        .Q(high_reg[19]));
  FDCE \high_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[1]_i_1_n_0 ),
        .Q(high_reg[1]));
  FDCE \high_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[20]_i_1_n_0 ),
        .Q(high_reg[20]));
  FDCE \high_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[21]_i_1_n_0 ),
        .Q(high_reg[21]));
  FDCE \high_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[22]_i_1_n_0 ),
        .Q(high_reg[22]));
  FDCE \high_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[23]_i_1_n_0 ),
        .Q(high_reg[23]));
  FDCE \high_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[24]_i_1_n_0 ),
        .Q(high_reg[24]));
  FDCE \high_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[25]_i_1_n_0 ),
        .Q(high_reg[25]));
  FDCE \high_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[26]_i_1_n_0 ),
        .Q(high_reg[26]));
  FDCE \high_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[27]_i_1_n_0 ),
        .Q(high_reg[27]));
  FDCE \high_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[28]_i_1_n_0 ),
        .Q(high_reg[28]));
  FDCE \high_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[29]_i_1_n_0 ),
        .Q(high_reg[29]));
  FDPE \high_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .D(\high_reg[2]_i_1_n_0 ),
        .PRE(SR),
        .Q(high_reg[2]));
  FDCE \high_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[30]_i_1_n_0 ),
        .Q(high_reg[30]));
  FDCE \high_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[31]_i_1_n_0 ),
        .Q(high_reg[31]));
  FDCE \high_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[3]_i_1_n_0 ),
        .Q(high_reg[3]));
  FDCE \high_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[4]_i_1_n_0 ),
        .Q(high_reg[4]));
  FDPE \high_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .D(\high_reg[5]_i_1_n_0 ),
        .PRE(SR),
        .Q(high_reg[5]));
  FDPE \high_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .D(\high_reg[6]_i_1_n_0 ),
        .PRE(SR),
        .Q(high_reg[6]));
  FDCE \high_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[7]_i_1_n_0 ),
        .Q(high_reg[7]));
  FDCE \high_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[8]_i_1_n_0 ),
        .Q(high_reg[8]));
  FDCE \high_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(\high_reg[9]_i_1_n_0 ),
        .Q(high_reg[9]));
  FDCE last_bit_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(last_bit_reg_1),
        .Q(last_bit_reg_0));
  FDCE \low_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[0]),
        .Q(low_reg[0]));
  FDCE \low_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[10]),
        .Q(low_reg[10]));
  FDCE \low_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[11]),
        .Q(low_reg[11]));
  FDCE \low_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[12]),
        .Q(low_reg[12]));
  FDCE \low_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[13]),
        .Q(low_reg[13]));
  FDCE \low_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[14]),
        .Q(low_reg[14]));
  FDCE \low_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[15]),
        .Q(low_reg[15]));
  FDCE \low_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[16]),
        .Q(low_reg[16]));
  FDCE \low_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[17]),
        .Q(low_reg[17]));
  FDCE \low_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[18]),
        .Q(low_reg[18]));
  FDCE \low_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[19]),
        .Q(low_reg[19]));
  FDCE \low_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[1]),
        .Q(low_reg[1]));
  FDCE \low_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[20]),
        .Q(low_reg[20]));
  FDCE \low_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[21]),
        .Q(low_reg[21]));
  FDCE \low_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[22]),
        .Q(low_reg[22]));
  FDCE \low_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[23]),
        .Q(low_reg[23]));
  FDCE \low_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[24]),
        .Q(low_reg[24]));
  FDCE \low_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[25]),
        .Q(low_reg[25]));
  FDCE \low_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[26]),
        .Q(low_reg[26]));
  FDCE \low_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[27]),
        .Q(low_reg[27]));
  FDCE \low_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[28]),
        .Q(low_reg[28]));
  FDCE \low_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[29]),
        .Q(low_reg[29]));
  FDCE \low_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[2]),
        .Q(low_reg[2]));
  FDCE \low_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[30]),
        .Q(low_reg[30]));
  FDCE \low_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[31]),
        .Q(low_reg[31]));
  FDCE \low_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[3]),
        .Q(low_reg[3]));
  FDCE \low_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[4]),
        .Q(low_reg[4]));
  FDCE \low_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[5]),
        .Q(low_reg[5]));
  FDCE \low_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[6]),
        .Q(low_reg[6]));
  FDCE \low_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[7]),
        .Q(low_reg[7]));
  FDCE \low_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[8]),
        .Q(low_reg[8]));
  FDCE \low_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\low_reg_reg[31]_0 ),
        .CLR(SR),
        .D(Q[9]),
        .Q(low_reg[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,span0_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\acc_reg_reg_n_0_[31] ,p_0_in__0[31:18]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod_OVERFLOW_UNCONNECTED),
        .P({prod_n_58,prod_n_59,prod_n_60,prod_n_61,prod_n_62,prod_n_63,prod_n_64,prod_n_65,prod_n_66,prod_n_67,prod_n_68,prod_n_69,prod_n_70,prod_n_71,prod_n_72,prod_n_73,prod_n_74,prod_n_75,prod_n_76,prod_n_77,prod_n_78,prod_n_79,prod_n_80,prod_n_81,prod_n_82,prod_n_83,prod_n_84,prod_n_85,prod_n_86,prod_n_87,prod_n_88,prod_n_89,prod_n_90,prod_n_91,prod_n_92,prod_n_93,prod_n_94,prod_n_95,prod_n_96,prod_n_97,prod_n_98,prod_n_99,prod_n_100,prod_n_101,prod_n_102,prod_n_103,prod_n_104,prod_n_105}),
        .PATTERNBDETECT(NLW_prod_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({prod_n_106,prod_n_107,prod_n_108,prod_n_109,prod_n_110,prod_n_111,prod_n_112,prod_n_113,prod_n_114,prod_n_115,prod_n_116,prod_n_117,prod_n_118,prod_n_119,prod_n_120,prod_n_121,prod_n_122,prod_n_123,prod_n_124,prod_n_125,prod_n_126,prod_n_127,prod_n_128,prod_n_129,prod_n_130,prod_n_131,prod_n_132,prod_n_133,prod_n_134,prod_n_135,prod_n_136,prod_n_137,prod_n_138,prod_n_139,prod_n_140,prod_n_141,prod_n_142,prod_n_143,prod_n_144,prod_n_145,prod_n_146,prod_n_147,prod_n_148,prod_n_149,prod_n_150,prod_n_151,prod_n_152,prod_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\acc_reg_reg_n_0_[31] ,p_0_in__0[31:18]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,span0_out[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod__0_OVERFLOW_UNCONNECTED),
        .P({NLW_prod__0_P_UNCONNECTED[47:30],prod__0_n_76,prod__0_n_77,prod__0_n_78,prod__0_n_79,prod__0_n_80,prod__0_n_81,prod__0_n_82,prod__0_n_83,prod__0_n_84,prod__0_n_85,prod__0_n_86,prod__0_n_87,prod__0_n_88,prod__0_n_89,prod__0_n_90,prod__0_n_91,prod__0_n_92,prod__0_n_93,prod__0_n_94,prod__0_n_95,prod__0_n_96,prod__0_n_97,prod__0_n_98,prod__0_n_99,prod__0_n_100,prod__0_n_101,prod__0_n_102,prod__0_n_103,prod__0_n_104,prod__0_n_105}),
        .PATTERNBDETECT(NLW_prod__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({prod_n_106,prod_n_107,prod_n_108,prod_n_109,prod_n_110,prod_n_111,prod_n_112,prod_n_113,prod_n_114,prod_n_115,prod_n_116,prod_n_117,prod_n_118,prod_n_119,prod_n_120,prod_n_121,prod_n_122,prod_n_123,prod_n_124,prod_n_125,prod_n_126,prod_n_127,prod_n_128,prod_n_129,prod_n_130,prod_n_131,prod_n_132,prod_n_133,prod_n_134,prod_n_135,prod_n_136,prod_n_137,prod_n_138,prod_n_139,prod_n_140,prod_n_141,prod_n_142,prod_n_143,prod_n_144,prod_n_145,prod_n_146,prod_n_147,prod_n_148,prod_n_149,prod_n_150,prod_n_151,prod_n_152,prod_n_153}),
        .PCOUT(NLW_prod__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_in__0[17:1]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,span0_out[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod__1_OVERFLOW_UNCONNECTED),
        .P({prod__1_n_58,prod__1_n_59,prod__1_n_60,prod__1_n_61,prod__1_n_62,prod__1_n_63,prod__1_n_64,prod__1_n_65,prod__1_n_66,prod__1_n_67,prod__1_n_68,prod__1_n_69,prod__1_n_70,prod__1_n_71,prod__1_n_72,prod__1_n_73,prod__1_n_74,prod__1_n_75,prod__1_n_76,prod__1_n_77,prod__1_n_78,prod__1_n_79,prod__1_n_80,prod__1_n_81,prod__1_n_82,prod__1_n_83,prod__1_n_84,prod__1_n_85,prod__1_n_86,prod__1_n_87,prod__1_n_88,prod__1_n_89,prod__1_n_90,prod__1_n_91,prod__1_n_92,prod__1_n_93,prod__1_n_94,prod__1_n_95,prod__1_n_96,prod__1_n_97,prod__1_n_98,prod__1_n_99,prod__1_n_100,prod__1_n_101,prod__1_n_102,prod__1_n_103,prod__1_n_104,prod__1_n_105}),
        .PATTERNBDETECT(NLW_prod__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({prod__1_n_106,prod__1_n_107,prod__1_n_108,prod__1_n_109,prod__1_n_110,prod__1_n_111,prod__1_n_112,prod__1_n_113,prod__1_n_114,prod__1_n_115,prod__1_n_116,prod__1_n_117,prod__1_n_118,prod__1_n_119,prod__1_n_120,prod__1_n_121,prod__1_n_122,prod__1_n_123,prod__1_n_124,prod__1_n_125,prod__1_n_126,prod__1_n_127,prod__1_n_128,prod__1_n_129,prod__1_n_130,prod__1_n_131,prod__1_n_132,prod__1_n_133,prod__1_n_134,prod__1_n_135,prod__1_n_136,prod__1_n_137,prod__1_n_138,prod__1_n_139,prod__1_n_140,prod__1_n_141,prod__1_n_142,prod__1_n_143,prod__1_n_144,prod__1_n_145,prod__1_n_146,prod__1_n_147,prod__1_n_148,prod__1_n_149,prod__1_n_150,prod__1_n_151,prod__1_n_152,prod__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_in__0[17:1]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,span0_out[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod__2_OVERFLOW_UNCONNECTED),
        .P({NLW_prod__2_P_UNCONNECTED[47],prod__2_n_59,prod__2_n_60,prod__2_n_61,prod__2_n_62,prod__2_n_63,prod__2_n_64,prod__2_n_65,prod__2_n_66,prod__2_n_67,prod__2_n_68,prod__2_n_69,prod__2_n_70,prod__2_n_71,prod__2_n_72,prod__2_n_73,prod__2_n_74,prod__2_n_75,prod__2_n_76,prod__2_n_77,prod__2_n_78,prod__2_n_79,prod__2_n_80,prod__2_n_81,prod__2_n_82,prod__2_n_83,prod__2_n_84,prod__2_n_85,prod__2_n_86,prod__2_n_87,prod__2_n_88,prod__2_n_89,prod__2_n_90,prod__2_n_91,prod__2_n_92,prod__2_n_93,prod__2_n_94,prod__2_n_95,prod__2_n_96,prod__2_n_97,prod__2_n_98,prod__2_n_99,prod__2_n_100,prod__2_n_101,prod__2_n_102,prod__2_n_103,prod__2_n_104,prod__2_n_105}),
        .PATTERNBDETECT(NLW_prod__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({prod__1_n_106,prod__1_n_107,prod__1_n_108,prod__1_n_109,prod__1_n_110,prod__1_n_111,prod__1_n_112,prod__1_n_113,prod__1_n_114,prod__1_n_115,prod__1_n_116,prod__1_n_117,prod__1_n_118,prod__1_n_119,prod__1_n_120,prod__1_n_121,prod__1_n_122,prod__1_n_123,prod__1_n_124,prod__1_n_125,prod__1_n_126,prod__1_n_127,prod__1_n_128,prod__1_n_129,prod__1_n_130,prod__1_n_131,prod__1_n_132,prod__1_n_133,prod__1_n_134,prod__1_n_135,prod__1_n_136,prod__1_n_137,prod__1_n_138,prod__1_n_139,prod__1_n_140,prod__1_n_141,prod__1_n_142,prod__1_n_143,prod__1_n_144,prod__1_n_145,prod__1_n_146,prod__1_n_147,prod__1_n_148,prod__1_n_149,prod__1_n_150,prod__1_n_151,prod__1_n_152,prod__1_n_153}),
        .PCOUT(NLW_prod__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod__2_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[11]_i_10 
       (.I0(prod__2_n_82),
        .I1(prod__0_n_99),
        .O(\random_in_range[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[11]_i_2 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[11]),
        .I2(low_reg[11]),
        .O(\random_in_range[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[11]_i_3 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[10]),
        .I2(low_reg[10]),
        .O(\random_in_range[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[11]_i_4 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[9]),
        .I2(low_reg[9]),
        .O(\random_in_range[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[11]_i_5 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[8]),
        .I2(low_reg[8]),
        .O(\random_in_range[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[11]_i_7 
       (.I0(prod__2_n_79),
        .I1(prod__0_n_96),
        .O(\random_in_range[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[11]_i_8 
       (.I0(prod__2_n_80),
        .I1(prod__0_n_97),
        .O(\random_in_range[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[11]_i_9 
       (.I0(prod__2_n_81),
        .I1(prod__0_n_98),
        .O(\random_in_range[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[15]_i_10 
       (.I0(prod__2_n_78),
        .I1(prod__0_n_95),
        .O(\random_in_range[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[15]_i_2 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[15]),
        .I2(low_reg[15]),
        .O(\random_in_range[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[15]_i_3 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[14]),
        .I2(low_reg[14]),
        .O(\random_in_range[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[15]_i_4 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[13]),
        .I2(low_reg[13]),
        .O(\random_in_range[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[15]_i_5 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[12]),
        .I2(low_reg[12]),
        .O(\random_in_range[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[15]_i_7 
       (.I0(prod__2_n_75),
        .I1(prod__0_n_92),
        .O(\random_in_range[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[15]_i_8 
       (.I0(prod__2_n_76),
        .I1(prod__0_n_93),
        .O(\random_in_range[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[15]_i_9 
       (.I0(prod__2_n_77),
        .I1(prod__0_n_94),
        .O(\random_in_range[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[19]_i_10 
       (.I0(prod__2_n_74),
        .I1(prod__0_n_91),
        .O(\random_in_range[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[19]_i_2 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[19]),
        .I2(low_reg[19]),
        .O(\random_in_range[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[19]_i_3 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[18]),
        .I2(low_reg[18]),
        .O(\random_in_range[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[19]_i_4 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[17]),
        .I2(low_reg[17]),
        .O(\random_in_range[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[19]_i_5 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[16]),
        .I2(low_reg[16]),
        .O(\random_in_range[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[19]_i_7 
       (.I0(prod__2_n_71),
        .I1(prod__0_n_88),
        .O(\random_in_range[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[19]_i_8 
       (.I0(prod__2_n_72),
        .I1(prod__0_n_89),
        .O(\random_in_range[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[19]_i_9 
       (.I0(prod__2_n_73),
        .I1(prod__0_n_90),
        .O(\random_in_range[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[23]_i_10 
       (.I0(prod__2_n_70),
        .I1(prod__0_n_87),
        .O(\random_in_range[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[23]_i_2 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[23]),
        .I2(low_reg[23]),
        .O(\random_in_range[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[23]_i_3 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[22]),
        .I2(low_reg[22]),
        .O(\random_in_range[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[23]_i_4 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[21]),
        .I2(low_reg[21]),
        .O(\random_in_range[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[23]_i_5 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[20]),
        .I2(low_reg[20]),
        .O(\random_in_range[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[23]_i_7 
       (.I0(prod__2_n_67),
        .I1(prod__0_n_84),
        .O(\random_in_range[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[23]_i_8 
       (.I0(prod__2_n_68),
        .I1(prod__0_n_85),
        .O(\random_in_range[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[23]_i_9 
       (.I0(prod__2_n_69),
        .I1(prod__0_n_86),
        .O(\random_in_range[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[27]_i_10 
       (.I0(prod__2_n_66),
        .I1(prod__0_n_83),
        .O(\random_in_range[27]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[27]_i_2 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[27]),
        .I2(low_reg[27]),
        .O(\random_in_range[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[27]_i_3 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[26]),
        .I2(low_reg[26]),
        .O(\random_in_range[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[27]_i_4 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[25]),
        .I2(low_reg[25]),
        .O(\random_in_range[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[27]_i_5 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[24]),
        .I2(low_reg[24]),
        .O(\random_in_range[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[27]_i_7 
       (.I0(prod__2_n_63),
        .I1(prod__0_n_80),
        .O(\random_in_range[27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[27]_i_8 
       (.I0(prod__2_n_64),
        .I1(prod__0_n_81),
        .O(\random_in_range[27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[27]_i_9 
       (.I0(prod__2_n_65),
        .I1(prod__0_n_82),
        .O(\random_in_range[27]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[31]_i_10 
       (.I0(prod__2_n_62),
        .I1(prod__0_n_79),
        .O(\random_in_range[31]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[31]_i_2 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[31]),
        .I2(low_reg[31]),
        .O(\random_in_range[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[31]_i_3 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[30]),
        .I2(low_reg[30]),
        .O(\random_in_range[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[31]_i_4 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[29]),
        .I2(low_reg[29]),
        .O(\random_in_range[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[31]_i_5 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[28]),
        .I2(low_reg[28]),
        .O(\random_in_range[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[31]_i_7 
       (.I0(prod__2_n_59),
        .I1(prod__0_n_76),
        .O(\random_in_range[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[31]_i_8 
       (.I0(prod__2_n_60),
        .I1(prod__0_n_77),
        .O(\random_in_range[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[31]_i_9 
       (.I0(prod__2_n_61),
        .I1(prod__0_n_78),
        .O(\random_in_range[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_10 
       (.I0(prod__2_n_89),
        .I1(prod_n_89),
        .O(\random_in_range[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_11 
       (.I0(prod__2_n_90),
        .I1(prod_n_90),
        .O(\random_in_range[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_13 
       (.I0(prod__2_n_91),
        .I1(prod_n_91),
        .O(\random_in_range[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_14 
       (.I0(prod__2_n_92),
        .I1(prod_n_92),
        .O(\random_in_range[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_15 
       (.I0(prod__2_n_93),
        .I1(prod_n_93),
        .O(\random_in_range[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_16 
       (.I0(prod__2_n_94),
        .I1(prod_n_94),
        .O(\random_in_range[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_18 
       (.I0(prod__2_n_95),
        .I1(prod_n_95),
        .O(\random_in_range[3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_19 
       (.I0(prod__2_n_96),
        .I1(prod_n_96),
        .O(\random_in_range[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[3]_i_2 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[3]),
        .I2(low_reg[3]),
        .O(\random_in_range[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_20 
       (.I0(prod__2_n_97),
        .I1(prod_n_97),
        .O(\random_in_range[3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_21 
       (.I0(prod__2_n_98),
        .I1(prod_n_98),
        .O(\random_in_range[3]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_23 
       (.I0(prod__2_n_99),
        .I1(prod_n_99),
        .O(\random_in_range[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_24 
       (.I0(prod__2_n_100),
        .I1(prod_n_100),
        .O(\random_in_range[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_25 
       (.I0(prod__2_n_101),
        .I1(prod_n_101),
        .O(\random_in_range[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_26 
       (.I0(prod__2_n_102),
        .I1(prod_n_102),
        .O(\random_in_range[3]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_27 
       (.I0(prod__2_n_103),
        .I1(prod_n_103),
        .O(\random_in_range[3]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_28 
       (.I0(prod__2_n_104),
        .I1(prod_n_104),
        .O(\random_in_range[3]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_29 
       (.I0(prod__2_n_105),
        .I1(prod_n_105),
        .O(\random_in_range[3]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[3]_i_3 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[2]),
        .I2(low_reg[2]),
        .O(\random_in_range[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[3]_i_4 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[1]),
        .I2(low_reg[1]),
        .O(\random_in_range[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[3]_i_5 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[0]),
        .I2(low_reg[0]),
        .O(\random_in_range[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_8 
       (.I0(prod__2_n_87),
        .I1(prod__0_n_104),
        .O(\random_in_range[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[3]_i_9 
       (.I0(prod__2_n_88),
        .I1(prod__0_n_105),
        .O(\random_in_range[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[7]_i_10 
       (.I0(prod__2_n_86),
        .I1(prod__0_n_103),
        .O(\random_in_range[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[7]_i_2 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[7]),
        .I2(low_reg[7]),
        .O(\random_in_range[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[7]_i_3 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[6]),
        .I2(low_reg[6]),
        .O(\random_in_range[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[7]_i_4 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[5]),
        .I2(low_reg[5]),
        .O(\random_in_range[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \random_in_range[7]_i_5 
       (.I0(scaled1_carry__1_n_1),
        .I1(p_0_in[4]),
        .I2(low_reg[4]),
        .O(\random_in_range[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[7]_i_7 
       (.I0(prod__2_n_83),
        .I1(prod__0_n_100),
        .O(\random_in_range[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[7]_i_8 
       (.I0(prod__2_n_84),
        .I1(prod__0_n_101),
        .O(\random_in_range[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \random_in_range[7]_i_9 
       (.I0(prod__2_n_85),
        .I1(prod__0_n_102),
        .O(\random_in_range[7]_i_9_n_0 ));
  FDCE \random_in_range_reg[0] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[3]_i_1_n_7 ),
        .Q(\random_in_range_reg[31]_0 [0]));
  FDCE \random_in_range_reg[10] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[11]_i_1_n_5 ),
        .Q(\random_in_range_reg[31]_0 [10]));
  FDCE \random_in_range_reg[11] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[11]_i_1_n_4 ),
        .Q(\random_in_range_reg[31]_0 [11]));
  CARRY4 \random_in_range_reg[11]_i_1 
       (.CI(\random_in_range_reg[7]_i_1_n_0 ),
        .CO({\random_in_range_reg[11]_i_1_n_0 ,\random_in_range_reg[11]_i_1_n_1 ,\random_in_range_reg[11]_i_1_n_2 ,\random_in_range_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(low_reg[11:8]),
        .O({\random_in_range_reg[11]_i_1_n_4 ,\random_in_range_reg[11]_i_1_n_5 ,\random_in_range_reg[11]_i_1_n_6 ,\random_in_range_reg[11]_i_1_n_7 }),
        .S({\random_in_range[11]_i_2_n_0 ,\random_in_range[11]_i_3_n_0 ,\random_in_range[11]_i_4_n_0 ,\random_in_range[11]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[11]_i_6 
       (.CI(\random_in_range_reg[7]_i_6_n_0 ),
        .CO({\random_in_range_reg[11]_i_6_n_0 ,\random_in_range_reg[11]_i_6_n_1 ,\random_in_range_reg[11]_i_6_n_2 ,\random_in_range_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_79,prod__2_n_80,prod__2_n_81,prod__2_n_82}),
        .O(p_0_in[11:8]),
        .S({\random_in_range[11]_i_7_n_0 ,\random_in_range[11]_i_8_n_0 ,\random_in_range[11]_i_9_n_0 ,\random_in_range[11]_i_10_n_0 }));
  FDCE \random_in_range_reg[12] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[15]_i_1_n_7 ),
        .Q(\random_in_range_reg[31]_0 [12]));
  FDCE \random_in_range_reg[13] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[15]_i_1_n_6 ),
        .Q(\random_in_range_reg[31]_0 [13]));
  FDCE \random_in_range_reg[14] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[15]_i_1_n_5 ),
        .Q(\random_in_range_reg[31]_0 [14]));
  FDCE \random_in_range_reg[15] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[15]_i_1_n_4 ),
        .Q(\random_in_range_reg[31]_0 [15]));
  CARRY4 \random_in_range_reg[15]_i_1 
       (.CI(\random_in_range_reg[11]_i_1_n_0 ),
        .CO({\random_in_range_reg[15]_i_1_n_0 ,\random_in_range_reg[15]_i_1_n_1 ,\random_in_range_reg[15]_i_1_n_2 ,\random_in_range_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(low_reg[15:12]),
        .O({\random_in_range_reg[15]_i_1_n_4 ,\random_in_range_reg[15]_i_1_n_5 ,\random_in_range_reg[15]_i_1_n_6 ,\random_in_range_reg[15]_i_1_n_7 }),
        .S({\random_in_range[15]_i_2_n_0 ,\random_in_range[15]_i_3_n_0 ,\random_in_range[15]_i_4_n_0 ,\random_in_range[15]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[15]_i_6 
       (.CI(\random_in_range_reg[11]_i_6_n_0 ),
        .CO({\random_in_range_reg[15]_i_6_n_0 ,\random_in_range_reg[15]_i_6_n_1 ,\random_in_range_reg[15]_i_6_n_2 ,\random_in_range_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_75,prod__2_n_76,prod__2_n_77,prod__2_n_78}),
        .O(p_0_in[15:12]),
        .S({\random_in_range[15]_i_7_n_0 ,\random_in_range[15]_i_8_n_0 ,\random_in_range[15]_i_9_n_0 ,\random_in_range[15]_i_10_n_0 }));
  FDCE \random_in_range_reg[16] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[19]_i_1_n_7 ),
        .Q(\random_in_range_reg[31]_0 [16]));
  FDCE \random_in_range_reg[17] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[19]_i_1_n_6 ),
        .Q(\random_in_range_reg[31]_0 [17]));
  FDCE \random_in_range_reg[18] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[19]_i_1_n_5 ),
        .Q(\random_in_range_reg[31]_0 [18]));
  FDCE \random_in_range_reg[19] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[19]_i_1_n_4 ),
        .Q(\random_in_range_reg[31]_0 [19]));
  CARRY4 \random_in_range_reg[19]_i_1 
       (.CI(\random_in_range_reg[15]_i_1_n_0 ),
        .CO({\random_in_range_reg[19]_i_1_n_0 ,\random_in_range_reg[19]_i_1_n_1 ,\random_in_range_reg[19]_i_1_n_2 ,\random_in_range_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(low_reg[19:16]),
        .O({\random_in_range_reg[19]_i_1_n_4 ,\random_in_range_reg[19]_i_1_n_5 ,\random_in_range_reg[19]_i_1_n_6 ,\random_in_range_reg[19]_i_1_n_7 }),
        .S({\random_in_range[19]_i_2_n_0 ,\random_in_range[19]_i_3_n_0 ,\random_in_range[19]_i_4_n_0 ,\random_in_range[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[19]_i_6 
       (.CI(\random_in_range_reg[15]_i_6_n_0 ),
        .CO({\random_in_range_reg[19]_i_6_n_0 ,\random_in_range_reg[19]_i_6_n_1 ,\random_in_range_reg[19]_i_6_n_2 ,\random_in_range_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_71,prod__2_n_72,prod__2_n_73,prod__2_n_74}),
        .O(p_0_in[19:16]),
        .S({\random_in_range[19]_i_7_n_0 ,\random_in_range[19]_i_8_n_0 ,\random_in_range[19]_i_9_n_0 ,\random_in_range[19]_i_10_n_0 }));
  FDCE \random_in_range_reg[1] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[3]_i_1_n_6 ),
        .Q(\random_in_range_reg[31]_0 [1]));
  FDCE \random_in_range_reg[20] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[23]_i_1_n_7 ),
        .Q(\random_in_range_reg[31]_0 [20]));
  FDCE \random_in_range_reg[21] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[23]_i_1_n_6 ),
        .Q(\random_in_range_reg[31]_0 [21]));
  FDCE \random_in_range_reg[22] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[23]_i_1_n_5 ),
        .Q(\random_in_range_reg[31]_0 [22]));
  FDCE \random_in_range_reg[23] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[23]_i_1_n_4 ),
        .Q(\random_in_range_reg[31]_0 [23]));
  CARRY4 \random_in_range_reg[23]_i_1 
       (.CI(\random_in_range_reg[19]_i_1_n_0 ),
        .CO({\random_in_range_reg[23]_i_1_n_0 ,\random_in_range_reg[23]_i_1_n_1 ,\random_in_range_reg[23]_i_1_n_2 ,\random_in_range_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(low_reg[23:20]),
        .O({\random_in_range_reg[23]_i_1_n_4 ,\random_in_range_reg[23]_i_1_n_5 ,\random_in_range_reg[23]_i_1_n_6 ,\random_in_range_reg[23]_i_1_n_7 }),
        .S({\random_in_range[23]_i_2_n_0 ,\random_in_range[23]_i_3_n_0 ,\random_in_range[23]_i_4_n_0 ,\random_in_range[23]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[23]_i_6 
       (.CI(\random_in_range_reg[19]_i_6_n_0 ),
        .CO({\random_in_range_reg[23]_i_6_n_0 ,\random_in_range_reg[23]_i_6_n_1 ,\random_in_range_reg[23]_i_6_n_2 ,\random_in_range_reg[23]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_67,prod__2_n_68,prod__2_n_69,prod__2_n_70}),
        .O(p_0_in[23:20]),
        .S({\random_in_range[23]_i_7_n_0 ,\random_in_range[23]_i_8_n_0 ,\random_in_range[23]_i_9_n_0 ,\random_in_range[23]_i_10_n_0 }));
  FDCE \random_in_range_reg[24] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[27]_i_1_n_7 ),
        .Q(\random_in_range_reg[31]_0 [24]));
  FDCE \random_in_range_reg[25] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[27]_i_1_n_6 ),
        .Q(\random_in_range_reg[31]_0 [25]));
  FDCE \random_in_range_reg[26] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[27]_i_1_n_5 ),
        .Q(\random_in_range_reg[31]_0 [26]));
  FDCE \random_in_range_reg[27] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[27]_i_1_n_4 ),
        .Q(\random_in_range_reg[31]_0 [27]));
  CARRY4 \random_in_range_reg[27]_i_1 
       (.CI(\random_in_range_reg[23]_i_1_n_0 ),
        .CO({\random_in_range_reg[27]_i_1_n_0 ,\random_in_range_reg[27]_i_1_n_1 ,\random_in_range_reg[27]_i_1_n_2 ,\random_in_range_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(low_reg[27:24]),
        .O({\random_in_range_reg[27]_i_1_n_4 ,\random_in_range_reg[27]_i_1_n_5 ,\random_in_range_reg[27]_i_1_n_6 ,\random_in_range_reg[27]_i_1_n_7 }),
        .S({\random_in_range[27]_i_2_n_0 ,\random_in_range[27]_i_3_n_0 ,\random_in_range[27]_i_4_n_0 ,\random_in_range[27]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[27]_i_6 
       (.CI(\random_in_range_reg[23]_i_6_n_0 ),
        .CO({\random_in_range_reg[27]_i_6_n_0 ,\random_in_range_reg[27]_i_6_n_1 ,\random_in_range_reg[27]_i_6_n_2 ,\random_in_range_reg[27]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_63,prod__2_n_64,prod__2_n_65,prod__2_n_66}),
        .O(p_0_in[27:24]),
        .S({\random_in_range[27]_i_7_n_0 ,\random_in_range[27]_i_8_n_0 ,\random_in_range[27]_i_9_n_0 ,\random_in_range[27]_i_10_n_0 }));
  FDCE \random_in_range_reg[28] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[31]_i_1_n_7 ),
        .Q(\random_in_range_reg[31]_0 [28]));
  FDCE \random_in_range_reg[29] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[31]_i_1_n_6 ),
        .Q(\random_in_range_reg[31]_0 [29]));
  FDCE \random_in_range_reg[2] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[3]_i_1_n_5 ),
        .Q(\random_in_range_reg[31]_0 [2]));
  FDCE \random_in_range_reg[30] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[31]_i_1_n_5 ),
        .Q(\random_in_range_reg[31]_0 [30]));
  FDCE \random_in_range_reg[31] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[31]_i_1_n_4 ),
        .Q(\random_in_range_reg[31]_0 [31]));
  CARRY4 \random_in_range_reg[31]_i_1 
       (.CI(\random_in_range_reg[27]_i_1_n_0 ),
        .CO({\NLW_random_in_range_reg[31]_i_1_CO_UNCONNECTED [3],\random_in_range_reg[31]_i_1_n_1 ,\random_in_range_reg[31]_i_1_n_2 ,\random_in_range_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,low_reg[30:28]}),
        .O({\random_in_range_reg[31]_i_1_n_4 ,\random_in_range_reg[31]_i_1_n_5 ,\random_in_range_reg[31]_i_1_n_6 ,\random_in_range_reg[31]_i_1_n_7 }),
        .S({\random_in_range[31]_i_2_n_0 ,\random_in_range[31]_i_3_n_0 ,\random_in_range[31]_i_4_n_0 ,\random_in_range[31]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[31]_i_6 
       (.CI(\random_in_range_reg[27]_i_6_n_0 ),
        .CO({\NLW_random_in_range_reg[31]_i_6_CO_UNCONNECTED [3],\random_in_range_reg[31]_i_6_n_1 ,\random_in_range_reg[31]_i_6_n_2 ,\random_in_range_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,prod__2_n_60,prod__2_n_61,prod__2_n_62}),
        .O(p_0_in[31:28]),
        .S({\random_in_range[31]_i_7_n_0 ,\random_in_range[31]_i_8_n_0 ,\random_in_range[31]_i_9_n_0 ,\random_in_range[31]_i_10_n_0 }));
  FDCE \random_in_range_reg[3] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[3]_i_1_n_4 ),
        .Q(\random_in_range_reg[31]_0 [3]));
  CARRY4 \random_in_range_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\random_in_range_reg[3]_i_1_n_0 ,\random_in_range_reg[3]_i_1_n_1 ,\random_in_range_reg[3]_i_1_n_2 ,\random_in_range_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(low_reg[3:0]),
        .O({\random_in_range_reg[3]_i_1_n_4 ,\random_in_range_reg[3]_i_1_n_5 ,\random_in_range_reg[3]_i_1_n_6 ,\random_in_range_reg[3]_i_1_n_7 }),
        .S({\random_in_range[3]_i_2_n_0 ,\random_in_range[3]_i_3_n_0 ,\random_in_range[3]_i_4_n_0 ,\random_in_range[3]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[3]_i_12 
       (.CI(\random_in_range_reg[3]_i_17_n_0 ),
        .CO({\random_in_range_reg[3]_i_12_n_0 ,\random_in_range_reg[3]_i_12_n_1 ,\random_in_range_reg[3]_i_12_n_2 ,\random_in_range_reg[3]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_95,prod__2_n_96,prod__2_n_97,prod__2_n_98}),
        .O(\NLW_random_in_range_reg[3]_i_12_O_UNCONNECTED [3:0]),
        .S({\random_in_range[3]_i_18_n_0 ,\random_in_range[3]_i_19_n_0 ,\random_in_range[3]_i_20_n_0 ,\random_in_range[3]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[3]_i_17 
       (.CI(\random_in_range_reg[3]_i_22_n_0 ),
        .CO({\random_in_range_reg[3]_i_17_n_0 ,\random_in_range_reg[3]_i_17_n_1 ,\random_in_range_reg[3]_i_17_n_2 ,\random_in_range_reg[3]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_99,prod__2_n_100,prod__2_n_101,prod__2_n_102}),
        .O(\NLW_random_in_range_reg[3]_i_17_O_UNCONNECTED [3:0]),
        .S({\random_in_range[3]_i_23_n_0 ,\random_in_range[3]_i_24_n_0 ,\random_in_range[3]_i_25_n_0 ,\random_in_range[3]_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[3]_i_22 
       (.CI(1'b0),
        .CO({\random_in_range_reg[3]_i_22_n_0 ,\random_in_range_reg[3]_i_22_n_1 ,\random_in_range_reg[3]_i_22_n_2 ,\random_in_range_reg[3]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_103,prod__2_n_104,prod__2_n_105,1'b0}),
        .O(\NLW_random_in_range_reg[3]_i_22_O_UNCONNECTED [3:0]),
        .S({\random_in_range[3]_i_27_n_0 ,\random_in_range[3]_i_28_n_0 ,\random_in_range[3]_i_29_n_0 ,prod__1_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[3]_i_6 
       (.CI(\random_in_range_reg[3]_i_7_n_0 ),
        .CO({\random_in_range_reg[3]_i_6_n_0 ,\random_in_range_reg[3]_i_6_n_1 ,\random_in_range_reg[3]_i_6_n_2 ,\random_in_range_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_87,prod__2_n_88,prod__2_n_89,prod__2_n_90}),
        .O(p_0_in[3:0]),
        .S({\random_in_range[3]_i_8_n_0 ,\random_in_range[3]_i_9_n_0 ,\random_in_range[3]_i_10_n_0 ,\random_in_range[3]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[3]_i_7 
       (.CI(\random_in_range_reg[3]_i_12_n_0 ),
        .CO({\random_in_range_reg[3]_i_7_n_0 ,\random_in_range_reg[3]_i_7_n_1 ,\random_in_range_reg[3]_i_7_n_2 ,\random_in_range_reg[3]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_91,prod__2_n_92,prod__2_n_93,prod__2_n_94}),
        .O(\NLW_random_in_range_reg[3]_i_7_O_UNCONNECTED [3:0]),
        .S({\random_in_range[3]_i_13_n_0 ,\random_in_range[3]_i_14_n_0 ,\random_in_range[3]_i_15_n_0 ,\random_in_range[3]_i_16_n_0 }));
  FDCE \random_in_range_reg[4] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[7]_i_1_n_7 ),
        .Q(\random_in_range_reg[31]_0 [4]));
  FDCE \random_in_range_reg[5] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[7]_i_1_n_6 ),
        .Q(\random_in_range_reg[31]_0 [5]));
  FDCE \random_in_range_reg[6] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[7]_i_1_n_5 ),
        .Q(\random_in_range_reg[31]_0 [6]));
  FDCE \random_in_range_reg[7] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[7]_i_1_n_4 ),
        .Q(\random_in_range_reg[31]_0 [7]));
  CARRY4 \random_in_range_reg[7]_i_1 
       (.CI(\random_in_range_reg[3]_i_1_n_0 ),
        .CO({\random_in_range_reg[7]_i_1_n_0 ,\random_in_range_reg[7]_i_1_n_1 ,\random_in_range_reg[7]_i_1_n_2 ,\random_in_range_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(low_reg[7:4]),
        .O({\random_in_range_reg[7]_i_1_n_4 ,\random_in_range_reg[7]_i_1_n_5 ,\random_in_range_reg[7]_i_1_n_6 ,\random_in_range_reg[7]_i_1_n_7 }),
        .S({\random_in_range[7]_i_2_n_0 ,\random_in_range[7]_i_3_n_0 ,\random_in_range[7]_i_4_n_0 ,\random_in_range[7]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \random_in_range_reg[7]_i_6 
       (.CI(\random_in_range_reg[3]_i_6_n_0 ),
        .CO({\random_in_range_reg[7]_i_6_n_0 ,\random_in_range_reg[7]_i_6_n_1 ,\random_in_range_reg[7]_i_6_n_2 ,\random_in_range_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({prod__2_n_83,prod__2_n_84,prod__2_n_85,prod__2_n_86}),
        .O(p_0_in[7:4]),
        .S({\random_in_range[7]_i_7_n_0 ,\random_in_range[7]_i_8_n_0 ,\random_in_range[7]_i_9_n_0 ,\random_in_range[7]_i_10_n_0 }));
  FDCE \random_in_range_reg[8] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[11]_i_1_n_7 ),
        .Q(\random_in_range_reg[31]_0 [8]));
  FDCE \random_in_range_reg[9] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(\random_in_range_reg[11]_i_1_n_6 ),
        .Q(\random_in_range_reg[31]_0 [9]));
  FDCE \random_raw_reg[0] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(out_bit_reg),
        .Q(\random_raw_reg[31]_0 [0]));
  FDCE \random_raw_reg[10] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[10]),
        .Q(\random_raw_reg[31]_0 [10]));
  FDCE \random_raw_reg[11] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[11]),
        .Q(\random_raw_reg[31]_0 [11]));
  FDCE \random_raw_reg[12] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[12]),
        .Q(\random_raw_reg[31]_0 [12]));
  FDCE \random_raw_reg[13] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[13]),
        .Q(\random_raw_reg[31]_0 [13]));
  FDCE \random_raw_reg[14] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[14]),
        .Q(\random_raw_reg[31]_0 [14]));
  FDCE \random_raw_reg[15] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[15]),
        .Q(\random_raw_reg[31]_0 [15]));
  FDCE \random_raw_reg[16] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[16]),
        .Q(\random_raw_reg[31]_0 [16]));
  FDCE \random_raw_reg[17] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[17]),
        .Q(\random_raw_reg[31]_0 [17]));
  FDCE \random_raw_reg[18] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[18]),
        .Q(\random_raw_reg[31]_0 [18]));
  FDCE \random_raw_reg[19] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[19]),
        .Q(\random_raw_reg[31]_0 [19]));
  FDCE \random_raw_reg[1] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[1]),
        .Q(\random_raw_reg[31]_0 [1]));
  FDCE \random_raw_reg[20] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[20]),
        .Q(\random_raw_reg[31]_0 [20]));
  FDCE \random_raw_reg[21] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[21]),
        .Q(\random_raw_reg[31]_0 [21]));
  FDCE \random_raw_reg[22] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[22]),
        .Q(\random_raw_reg[31]_0 [22]));
  FDCE \random_raw_reg[23] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[23]),
        .Q(\random_raw_reg[31]_0 [23]));
  FDCE \random_raw_reg[24] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[24]),
        .Q(\random_raw_reg[31]_0 [24]));
  FDCE \random_raw_reg[25] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[25]),
        .Q(\random_raw_reg[31]_0 [25]));
  FDCE \random_raw_reg[26] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[26]),
        .Q(\random_raw_reg[31]_0 [26]));
  FDCE \random_raw_reg[27] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[27]),
        .Q(\random_raw_reg[31]_0 [27]));
  FDCE \random_raw_reg[28] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[28]),
        .Q(\random_raw_reg[31]_0 [28]));
  FDCE \random_raw_reg[29] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[29]),
        .Q(\random_raw_reg[31]_0 [29]));
  FDCE \random_raw_reg[2] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[2]),
        .Q(\random_raw_reg[31]_0 [2]));
  FDCE \random_raw_reg[30] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[30]),
        .Q(\random_raw_reg[31]_0 [30]));
  FDCE \random_raw_reg[31] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[31]),
        .Q(\random_raw_reg[31]_0 [31]));
  FDCE \random_raw_reg[3] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[3]),
        .Q(\random_raw_reg[31]_0 [3]));
  FDCE \random_raw_reg[4] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[4]),
        .Q(\random_raw_reg[31]_0 [4]));
  FDCE \random_raw_reg[5] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[5]),
        .Q(\random_raw_reg[31]_0 [5]));
  FDCE \random_raw_reg[6] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[6]),
        .Q(\random_raw_reg[31]_0 [6]));
  FDCE \random_raw_reg[7] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[7]),
        .Q(\random_raw_reg[31]_0 [7]));
  FDCE \random_raw_reg[8] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[8]),
        .Q(\random_raw_reg[31]_0 [8]));
  FDCE \random_raw_reg[9] 
       (.C(s00_axi_aclk),
        .CE(u_vn_n_4),
        .CLR(SR),
        .D(p_0_in__0[9]),
        .Q(\random_raw_reg[31]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rct_fail_i_3
       (.I0(run_len[9]),
        .I1(run_len[12]),
        .O(rct_fail_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rct_fail_i_4
       (.I0(run_len[7]),
        .I1(run_len[8]),
        .I2(run_len[10]),
        .I3(run_len[11]),
        .O(rct_fail_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    rct_fail_i_5
       (.I0(run_len[13]),
        .I1(run_len[15]),
        .I2(run_len[14]),
        .O(rct_fail_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rct_fail_i_6
       (.I0(run_len[0]),
        .I1(run_len[1]),
        .I2(run_len[3]),
        .I3(run_len[4]),
        .I4(run_len[5]),
        .I5(run_len[2]),
        .O(rct_fail_i_6_n_0));
  FDCE rct_fail_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(rct_fail_reg_0),
        .Q(D[1]));
  FDCE ro_sync_0_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ro_mix),
        .Q(ro_sync_0));
  FDCE ro_sync_1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ro_sync_0),
        .Q(ro_sync_1));
  design_1_axi_trng_0_0_ring_oscillator \ros[0].u_ro 
       (.n_inferred_i_4_0(\apt_ones_reg[0]_0 ),
        .out(ro_bits[0]));
  design_1_axi_trng_0_0_ring_oscillator_0 \ros[1].u_ro 
       (.n_inferred_i_1__5(\ros[1].u_ro_n_0 ),
        .n_inferred_i_4__0_0(\apt_ones_reg[0]_0 ),
        .ro_sync_0_reg({ro_bits[7:6],ro_bits[0]}));
  design_1_axi_trng_0_0_ring_oscillator_1 \ros[2].u_ro 
       (.n_inferred_i_4__1_0(\apt_ones_reg[0]_0 ),
        .ro_mix(ro_mix),
        .ro_sync_0_reg(ro_bits[5:3]),
        .ro_sync_0_reg_0(\ros[1].u_ro_n_0 ));
  design_1_axi_trng_0_0_ring_oscillator_2 \ros[3].u_ro 
       (.n_inferred_i_4__2_0(\apt_ones_reg[0]_0 ),
        .out(ro_bits[3]));
  design_1_axi_trng_0_0_ring_oscillator_3 \ros[4].u_ro 
       (.n_inferred_i_4__3_0(\apt_ones_reg[0]_0 ),
        .out(ro_bits[4]));
  design_1_axi_trng_0_0_ring_oscillator_4 \ros[5].u_ro 
       (.n_inferred_i_4__4_0(\apt_ones_reg[0]_0 ),
        .out(ro_bits[5]));
  design_1_axi_trng_0_0_ring_oscillator_5 \ros[6].u_ro 
       (.n_inferred_i_4__5_0(\apt_ones_reg[0]_0 ),
        .out(ro_bits[6]));
  design_1_axi_trng_0_0_ring_oscillator_6 \ros[7].u_ro 
       (.n_inferred_i_4__6_0(\apt_ones_reg[0]_0 ),
        .out(ro_bits[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 run_len0_carry
       (.CI(1'b0),
        .CO({run_len0_carry_n_0,run_len0_carry_n_1,run_len0_carry_n_2,run_len0_carry_n_3}),
        .CYINIT(run_len[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(run_len0[4:1]),
        .S(run_len[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 run_len0_carry__0
       (.CI(run_len0_carry_n_0),
        .CO({run_len0_carry__0_n_0,run_len0_carry__0_n_1,run_len0_carry__0_n_2,run_len0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(run_len0[8:5]),
        .S(run_len[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 run_len0_carry__1
       (.CI(run_len0_carry__0_n_0),
        .CO({run_len0_carry__1_n_0,run_len0_carry__1_n_1,run_len0_carry__1_n_2,run_len0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(run_len0[12:9]),
        .S(run_len[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 run_len0_carry__2
       (.CI(run_len0_carry__1_n_0),
        .CO({NLW_run_len0_carry__2_CO_UNCONNECTED[3:2],run_len0_carry__2_n_2,run_len0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_run_len0_carry__2_O_UNCONNECTED[3],run_len0[15:13]}),
        .S({1'b0,run_len[15:13]}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \run_len[15]_i_2 
       (.I0(\run_len[15]_i_3_n_0 ),
        .I1(\run_len[15]_i_4_n_0 ),
        .I2(\run_len[15]_i_5_n_0 ),
        .I3(\run_len[15]_i_6_n_0 ),
        .O(\run_len[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \run_len[15]_i_3 
       (.I0(run_len[5]),
        .I1(run_len[6]),
        .I2(run_len[15]),
        .I3(run_len[8]),
        .O(\run_len[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \run_len[15]_i_4 
       (.I0(run_len[13]),
        .I1(run_len[14]),
        .I2(run_len[1]),
        .I3(run_len[12]),
        .O(\run_len[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \run_len[15]_i_5 
       (.I0(run_len[9]),
        .I1(run_len[10]),
        .I2(run_len[11]),
        .I3(run_len[0]),
        .O(\run_len[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \run_len[15]_i_6 
       (.I0(run_len[2]),
        .I1(run_len[3]),
        .I2(run_len[4]),
        .I3(run_len[7]),
        .O(\run_len[15]_i_6_n_0 ));
  FDCE \run_len_reg[0] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_25),
        .Q(run_len[0]));
  FDCE \run_len_reg[10] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_15),
        .Q(run_len[10]));
  FDCE \run_len_reg[11] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_14),
        .Q(run_len[11]));
  FDCE \run_len_reg[12] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_13),
        .Q(run_len[12]));
  FDCE \run_len_reg[13] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_12),
        .Q(run_len[13]));
  FDCE \run_len_reg[14] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_11),
        .Q(run_len[14]));
  FDCE \run_len_reg[15] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_10),
        .Q(run_len[15]));
  FDCE \run_len_reg[1] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_24),
        .Q(run_len[1]));
  FDCE \run_len_reg[2] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_23),
        .Q(run_len[2]));
  FDCE \run_len_reg[3] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_22),
        .Q(run_len[3]));
  FDCE \run_len_reg[4] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_21),
        .Q(run_len[4]));
  FDCE \run_len_reg[5] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_20),
        .Q(run_len[5]));
  FDCE \run_len_reg[6] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_19),
        .Q(run_len[6]));
  FDCE \run_len_reg[7] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_18),
        .Q(run_len[7]));
  FDCE \run_len_reg[8] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_17),
        .Q(run_len[8]));
  FDCE \run_len_reg[9] 
       (.C(s00_axi_aclk),
        .CE(last_bit1),
        .CLR(SR),
        .D(u_vn_n_16),
        .Q(run_len[9]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sample_stb_i_1
       (.I0(\apt_ones_reg[0]_0 ),
        .I1(divcnt1),
        .O(sample_stb));
  FDCE sample_stb_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(sample_stb),
        .Q(sample_stb_reg_0));
  CARRY4 scaled1_carry
       (.CI(1'b0),
        .CO({scaled1_carry_n_0,scaled1_carry_n_1,scaled1_carry_n_2,scaled1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_scaled1_carry_O_UNCONNECTED[3:0]),
        .S({scaled1_carry_i_1_n_0,scaled1_carry_i_2_n_0,scaled1_carry_i_3_n_0,scaled1_carry_i_4_n_0}));
  CARRY4 scaled1_carry__0
       (.CI(scaled1_carry_n_0),
        .CO({scaled1_carry__0_n_0,scaled1_carry__0_n_1,scaled1_carry__0_n_2,scaled1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_scaled1_carry__0_O_UNCONNECTED[3:0]),
        .S({scaled1_carry__0_i_1_n_0,scaled1_carry__0_i_2_n_0,scaled1_carry__0_i_3_n_0,scaled1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry__0_i_1
       (.I0(high_reg[21]),
        .I1(low_reg[21]),
        .I2(low_reg[23]),
        .I3(high_reg[23]),
        .I4(low_reg[22]),
        .I5(high_reg[22]),
        .O(scaled1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry__0_i_2
       (.I0(high_reg[18]),
        .I1(low_reg[18]),
        .I2(low_reg[20]),
        .I3(high_reg[20]),
        .I4(low_reg[19]),
        .I5(high_reg[19]),
        .O(scaled1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry__0_i_3
       (.I0(high_reg[15]),
        .I1(low_reg[15]),
        .I2(low_reg[17]),
        .I3(high_reg[17]),
        .I4(low_reg[16]),
        .I5(high_reg[16]),
        .O(scaled1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry__0_i_4
       (.I0(high_reg[12]),
        .I1(low_reg[12]),
        .I2(low_reg[14]),
        .I3(high_reg[14]),
        .I4(low_reg[13]),
        .I5(high_reg[13]),
        .O(scaled1_carry__0_i_4_n_0));
  CARRY4 scaled1_carry__1
       (.CI(scaled1_carry__0_n_0),
        .CO({NLW_scaled1_carry__1_CO_UNCONNECTED[3],scaled1_carry__1_n_1,scaled1_carry__1_n_2,scaled1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_scaled1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,scaled1_carry__1_i_1_n_0,scaled1_carry__1_i_2_n_0,scaled1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    scaled1_carry__1_i_1
       (.I0(high_reg[30]),
        .I1(low_reg[30]),
        .I2(high_reg[31]),
        .I3(low_reg[31]),
        .O(scaled1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry__1_i_2
       (.I0(high_reg[27]),
        .I1(low_reg[27]),
        .I2(low_reg[29]),
        .I3(high_reg[29]),
        .I4(low_reg[28]),
        .I5(high_reg[28]),
        .O(scaled1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry__1_i_3
       (.I0(high_reg[24]),
        .I1(low_reg[24]),
        .I2(low_reg[26]),
        .I3(high_reg[26]),
        .I4(low_reg[25]),
        .I5(high_reg[25]),
        .O(scaled1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry_i_1
       (.I0(high_reg[9]),
        .I1(low_reg[9]),
        .I2(low_reg[11]),
        .I3(high_reg[11]),
        .I4(low_reg[10]),
        .I5(high_reg[10]),
        .O(scaled1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry_i_2
       (.I0(high_reg[6]),
        .I1(low_reg[6]),
        .I2(low_reg[8]),
        .I3(high_reg[8]),
        .I4(low_reg[7]),
        .I5(high_reg[7]),
        .O(scaled1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry_i_3
       (.I0(high_reg[3]),
        .I1(low_reg[3]),
        .I2(low_reg[5]),
        .I3(high_reg[5]),
        .I4(low_reg[4]),
        .I5(high_reg[4]),
        .O(scaled1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    scaled1_carry_i_4
       (.I0(high_reg[0]),
        .I1(low_reg[0]),
        .I2(low_reg[2]),
        .I3(high_reg[2]),
        .I4(low_reg[1]),
        .I5(high_reg[1]),
        .O(scaled1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 span_carry
       (.CI(1'b0),
        .CO({span_carry_n_0,span_carry_n_1,span_carry_n_2,span_carry_n_3}),
        .CYINIT(1'b1),
        .DI(high_reg[3:0]),
        .O(span0_out[3:0]),
        .S({span_carry_i_1_n_0,span_carry_i_2_n_0,span_carry_i_3_n_0,span_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 span_carry__0
       (.CI(span_carry_n_0),
        .CO({span_carry__0_n_0,span_carry__0_n_1,span_carry__0_n_2,span_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(high_reg[7:4]),
        .O(span0_out[7:4]),
        .S({span_carry__0_i_1_n_0,span_carry__0_i_2_n_0,span_carry__0_i_3_n_0,span_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__0_i_1
       (.I0(high_reg[7]),
        .I1(low_reg[7]),
        .O(span_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__0_i_2
       (.I0(high_reg[6]),
        .I1(low_reg[6]),
        .O(span_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__0_i_3
       (.I0(high_reg[5]),
        .I1(low_reg[5]),
        .O(span_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__0_i_4
       (.I0(high_reg[4]),
        .I1(low_reg[4]),
        .O(span_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 span_carry__1
       (.CI(span_carry__0_n_0),
        .CO({span_carry__1_n_0,span_carry__1_n_1,span_carry__1_n_2,span_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(high_reg[11:8]),
        .O(span0_out[11:8]),
        .S({span_carry__1_i_1_n_0,span_carry__1_i_2_n_0,span_carry__1_i_3_n_0,span_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__1_i_1
       (.I0(high_reg[11]),
        .I1(low_reg[11]),
        .O(span_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__1_i_2
       (.I0(high_reg[10]),
        .I1(low_reg[10]),
        .O(span_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__1_i_3
       (.I0(high_reg[9]),
        .I1(low_reg[9]),
        .O(span_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__1_i_4
       (.I0(high_reg[8]),
        .I1(low_reg[8]),
        .O(span_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 span_carry__2
       (.CI(span_carry__1_n_0),
        .CO({span_carry__2_n_0,span_carry__2_n_1,span_carry__2_n_2,span_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(high_reg[15:12]),
        .O(span0_out[15:12]),
        .S({span_carry__2_i_1_n_0,span_carry__2_i_2_n_0,span_carry__2_i_3_n_0,span_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__2_i_1
       (.I0(high_reg[15]),
        .I1(low_reg[15]),
        .O(span_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__2_i_2
       (.I0(high_reg[14]),
        .I1(low_reg[14]),
        .O(span_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__2_i_3
       (.I0(high_reg[13]),
        .I1(low_reg[13]),
        .O(span_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__2_i_4
       (.I0(high_reg[12]),
        .I1(low_reg[12]),
        .O(span_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 span_carry__3
       (.CI(span_carry__2_n_0),
        .CO({span_carry__3_n_0,span_carry__3_n_1,span_carry__3_n_2,span_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(high_reg[19:16]),
        .O(span0_out[19:16]),
        .S({span_carry__3_i_1_n_0,span_carry__3_i_2_n_0,span_carry__3_i_3_n_0,span_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__3_i_1
       (.I0(high_reg[19]),
        .I1(low_reg[19]),
        .O(span_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__3_i_2
       (.I0(high_reg[18]),
        .I1(low_reg[18]),
        .O(span_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__3_i_3
       (.I0(high_reg[17]),
        .I1(low_reg[17]),
        .O(span_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__3_i_4
       (.I0(high_reg[16]),
        .I1(low_reg[16]),
        .O(span_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 span_carry__4
       (.CI(span_carry__3_n_0),
        .CO({span_carry__4_n_0,span_carry__4_n_1,span_carry__4_n_2,span_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(high_reg[23:20]),
        .O(span0_out[23:20]),
        .S({span_carry__4_i_1_n_0,span_carry__4_i_2_n_0,span_carry__4_i_3_n_0,span_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__4_i_1
       (.I0(high_reg[23]),
        .I1(low_reg[23]),
        .O(span_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__4_i_2
       (.I0(high_reg[22]),
        .I1(low_reg[22]),
        .O(span_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__4_i_3
       (.I0(high_reg[21]),
        .I1(low_reg[21]),
        .O(span_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__4_i_4
       (.I0(high_reg[20]),
        .I1(low_reg[20]),
        .O(span_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 span_carry__5
       (.CI(span_carry__4_n_0),
        .CO({span_carry__5_n_0,span_carry__5_n_1,span_carry__5_n_2,span_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(high_reg[27:24]),
        .O(span0_out[27:24]),
        .S({span_carry__5_i_1_n_0,span_carry__5_i_2_n_0,span_carry__5_i_3_n_0,span_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__5_i_1
       (.I0(high_reg[27]),
        .I1(low_reg[27]),
        .O(span_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__5_i_2
       (.I0(high_reg[26]),
        .I1(low_reg[26]),
        .O(span_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__5_i_3
       (.I0(high_reg[25]),
        .I1(low_reg[25]),
        .O(span_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__5_i_4
       (.I0(high_reg[24]),
        .I1(low_reg[24]),
        .O(span_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 span_carry__6
       (.CI(span_carry__5_n_0),
        .CO({NLW_span_carry__6_CO_UNCONNECTED[3],span_carry__6_n_1,span_carry__6_n_2,span_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,high_reg[30:28]}),
        .O(span0_out[31:28]),
        .S({span_carry__6_i_1_n_0,span_carry__6_i_2_n_0,span_carry__6_i_3_n_0,span_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__6_i_1
       (.I0(high_reg[31]),
        .I1(low_reg[31]),
        .O(span_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__6_i_2
       (.I0(high_reg[30]),
        .I1(low_reg[30]),
        .O(span_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__6_i_3
       (.I0(high_reg[29]),
        .I1(low_reg[29]),
        .O(span_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry__6_i_4
       (.I0(high_reg[28]),
        .I1(low_reg[28]),
        .O(span_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry_i_1
       (.I0(high_reg[3]),
        .I1(low_reg[3]),
        .O(span_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry_i_2
       (.I0(high_reg[2]),
        .I1(low_reg[2]),
        .O(span_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry_i_3
       (.I0(high_reg[1]),
        .I1(low_reg[1]),
        .O(span_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    span_carry_i_4
       (.I0(high_reg[0]),
        .I1(low_reg[0]),
        .O(span_carry_i_4_n_0));
  design_1_axi_trng_0_0_von_neumann u_vn
       (.D(D[0]),
        .E(u_vn_n_4),
        .Q(acc_cnt),
        .\apt_ones_reg[0] (\apt_ones_reg[0]_0 ),
        .\apt_ones_reg[0]_0 (\apt_count_reg[9]_0 ),
        .first_bit(first_bit),
        .first_bit_reg_0(first_bit_reg),
        .have_first(have_first),
        .have_first_reg_0(have_first_reg),
        .health_ok_reg(acc_cnt0),
        .out_bit_reg_0(out_bit_reg),
        .out_bit_reg_1({u_vn_n_10,u_vn_n_11,u_vn_n_12,u_vn_n_13,u_vn_n_14,u_vn_n_15,u_vn_n_16,u_vn_n_17,u_vn_n_18,u_vn_n_19,u_vn_n_20,u_vn_n_21,u_vn_n_22,u_vn_n_23,u_vn_n_24,u_vn_n_25}),
        .out_bit_reg_2(out_bit_reg_0),
        .out_valid_reg_0(out_valid_reg),
        .out_valid_reg_1(u_vn_n_6),
        .out_valid_reg_2(last_bit1),
        .out_valid_reg_3(sample_stb_reg_0),
        .rct_fail_reg(rct_fail_i_3_n_0),
        .rct_fail_reg_0(rct_fail_i_4_n_0),
        .rct_fail_reg_1(rct_fail_i_5_n_0),
        .rct_fail_reg_2({run_len[6],run_len[0]}),
        .rct_fail_reg_3(rct_fail_i_6_n_0),
        .ro_sync_1(ro_sync_1),
        .run_len0(run_len0),
        .\run_len_reg[0] (last_bit_reg_0),
        .\run_len_reg[0]_0 (\run_len[15]_i_2_n_0 ),
        .\run_len_reg[6] (\run_len_reg[6]_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg0_reg[0] (u_vn_n_7));
  FDCE valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(u_vn_n_4),
        .Q(E));
endmodule

(* ORIG_REF_NAME = "von_neumann" *) 
module design_1_axi_trng_0_0_von_neumann
   (out_valid_reg_0,
    first_bit,
    have_first,
    out_bit_reg_0,
    E,
    health_ok_reg,
    out_valid_reg_1,
    \slv_reg0_reg[0] ,
    \run_len_reg[6] ,
    out_valid_reg_2,
    out_bit_reg_1,
    s00_axi_aclk,
    out_valid_reg_3,
    ro_sync_1,
    have_first_reg_0,
    first_bit_reg_0,
    out_bit_reg_2,
    Q,
    D,
    \apt_ones_reg[0] ,
    s00_axi_aresetn,
    \apt_ones_reg[0]_0 ,
    rct_fail_reg,
    rct_fail_reg_0,
    rct_fail_reg_1,
    rct_fail_reg_2,
    rct_fail_reg_3,
    \run_len_reg[0] ,
    \run_len_reg[0]_0 ,
    run_len0);
  output out_valid_reg_0;
  output first_bit;
  output have_first;
  output out_bit_reg_0;
  output [0:0]E;
  output [0:0]health_ok_reg;
  output [0:0]out_valid_reg_1;
  output [0:0]\slv_reg0_reg[0] ;
  output \run_len_reg[6] ;
  output [0:0]out_valid_reg_2;
  output [15:0]out_bit_reg_1;
  input s00_axi_aclk;
  input out_valid_reg_3;
  input ro_sync_1;
  input have_first_reg_0;
  input first_bit_reg_0;
  input out_bit_reg_2;
  input [4:0]Q;
  input [0:0]D;
  input [0:0]\apt_ones_reg[0] ;
  input s00_axi_aresetn;
  input \apt_ones_reg[0]_0 ;
  input rct_fail_reg;
  input rct_fail_reg_0;
  input rct_fail_reg_1;
  input [1:0]rct_fail_reg_2;
  input rct_fail_reg_3;
  input \run_len_reg[0] ;
  input \run_len_reg[0]_0 ;
  input [14:0]run_len0;

  wire [0:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire \__0/i__n_0 ;
  wire [0:0]\apt_ones_reg[0] ;
  wire \apt_ones_reg[0]_0 ;
  wire first_bit;
  wire first_bit_reg_0;
  wire have_first;
  wire have_first_reg_0;
  wire [0:0]health_ok_reg;
  wire out_bit_reg_0;
  wire [15:0]out_bit_reg_1;
  wire out_bit_reg_2;
  wire out_valid_i_1_n_0;
  wire out_valid_reg_0;
  wire [0:0]out_valid_reg_1;
  wire [0:0]out_valid_reg_2;
  wire out_valid_reg_3;
  wire rct_fail_reg;
  wire rct_fail_reg_0;
  wire rct_fail_reg_1;
  wire [1:0]rct_fail_reg_2;
  wire rct_fail_reg_3;
  wire ro_sync_1;
  wire [14:0]run_len0;
  wire \run_len_reg[0] ;
  wire \run_len_reg[0]_0 ;
  wire \run_len_reg[6] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [0:0]\slv_reg0_reg[0] ;

  LUT4 #(
    .INIT(16'h2800)) 
    \__0/i_ 
       (.I0(out_valid_reg_3),
        .I1(ro_sync_1),
        .I2(first_bit),
        .I3(have_first),
        .O(\__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \acc_cnt[4]_i_1 
       (.I0(out_valid_reg_0),
        .I1(D),
        .I2(\apt_ones_reg[0] ),
        .O(out_valid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \acc_reg[31]_i_1 
       (.I0(D),
        .I1(\apt_ones_reg[0] ),
        .I2(out_valid_reg_0),
        .O(health_ok_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \apt_count[15]_i_1 
       (.I0(out_valid_reg_0),
        .I1(\apt_ones_reg[0] ),
        .O(out_valid_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \apt_ones[15]_i_1 
       (.I0(\apt_ones_reg[0] ),
        .I1(out_valid_reg_0),
        .I2(out_bit_reg_0),
        .I3(\apt_ones_reg[0]_0 ),
        .O(\slv_reg0_reg[0] ));
  FDCE first_bit_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(out_valid_i_1_n_0),
        .D(first_bit_reg_0),
        .Q(first_bit));
  FDCE have_first_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(out_valid_i_1_n_0),
        .D(have_first_reg_0),
        .Q(have_first));
  FDCE out_bit_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(out_valid_i_1_n_0),
        .D(out_bit_reg_2),
        .Q(out_bit_reg_0));
  LUT2 #(
    .INIT(4'h7)) 
    out_valid_i_1
       (.I0(\apt_ones_reg[0] ),
        .I1(s00_axi_aresetn),
        .O(out_valid_i_1_n_0));
  FDCE out_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(out_valid_i_1_n_0),
        .D(\__0/i__n_0 ),
        .Q(out_valid_reg_0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
    rct_fail_i_2
       (.I0(out_valid_reg_2),
        .I1(rct_fail_reg),
        .I2(rct_fail_reg_0),
        .I3(rct_fail_reg_1),
        .I4(rct_fail_reg_2[1]),
        .I5(rct_fail_reg_3),
        .O(\run_len_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7DFF)) 
    \run_len[0]_i_1 
       (.I0(rct_fail_reg_2[0]),
        .I1(out_bit_reg_0),
        .I2(\run_len_reg[0] ),
        .I3(\run_len_reg[0]_0 ),
        .O(out_bit_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[10]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[9]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[11]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[10]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[12]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[11]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[13]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[12]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[14]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[13]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[15]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[14]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[1]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[0]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[2]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[1]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[3]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[2]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[4]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[3]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[5]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[4]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[6]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[5]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[7]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[6]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[8]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[7]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \run_len[9]_i_1 
       (.I0(\run_len_reg[0]_0 ),
        .I1(run_len0[8]),
        .I2(out_bit_reg_0),
        .I3(\run_len_reg[0] ),
        .O(out_bit_reg_1[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    valid_i_1
       (.I0(health_ok_reg),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(E));
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
