-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Nov 15 23:28:39 2025
-- Host        : Emanuel running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_perceptron_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_perceptron_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_binary_perceptron is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    y : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \b_o_reg[7]_0\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \st1_carry__0_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x1 : in STD_LOGIC;
    x2 : in STD_LOGIC;
    \delta_r_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    s00_axi_rdata_1_sp_1 : in STD_LOGIC;
    s00_axi_rdata_2_sp_1 : in STD_LOGIC;
    s00_axi_rdata_3_sp_1 : in STD_LOGIC;
    s00_axi_rdata_4_sp_1 : in STD_LOGIC;
    s00_axi_rdata_5_sp_1 : in STD_LOGIC;
    s00_axi_rdata_6_sp_1 : in STD_LOGIC;
    s00_axi_rdata_7_sp_1 : in STD_LOGIC;
    s00_axi_rdata_8_sp_1 : in STD_LOGIC;
    s00_axi_rdata_9_sp_1 : in STD_LOGIC;
    s00_axi_rdata_10_sp_1 : in STD_LOGIC;
    s00_axi_rdata_11_sp_1 : in STD_LOGIC;
    s00_axi_rdata_12_sp_1 : in STD_LOGIC;
    s00_axi_rdata_13_sp_1 : in STD_LOGIC;
    s00_axi_rdata_14_sp_1 : in STD_LOGIC;
    s00_axi_rdata_15_sp_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_binary_perceptron;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_binary_perceptron is
  signal \FSM_sequential_st[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[2]_i_2_n_0\ : STD_LOGIC;
  signal any_error_in_ep_i_1_n_0 : STD_LOGIC;
  signal any_error_in_ep_i_2_n_0 : STD_LOGIC;
  signal any_error_in_ep_i_3_n_0 : STD_LOGIC;
  signal any_error_in_ep_i_4_n_0 : STD_LOGIC;
  signal any_error_in_ep_reg_n_0 : STD_LOGIC;
  signal b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \b0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \b0_carry__0_n_1\ : STD_LOGIC;
  signal \b0_carry__0_n_2\ : STD_LOGIC;
  signal \b0_carry__0_n_3\ : STD_LOGIC;
  signal b0_carry_i_1_n_0 : STD_LOGIC;
  signal b0_carry_i_2_n_0 : STD_LOGIC;
  signal b0_carry_i_3_n_0 : STD_LOGIC;
  signal b0_carry_i_4_n_0 : STD_LOGIC;
  signal b0_carry_n_0 : STD_LOGIC;
  signal b0_carry_n_1 : STD_LOGIC;
  signal b0_carry_n_2 : STD_LOGIC;
  signal b0_carry_n_3 : STD_LOGIC;
  signal \b[7]_i_1_n_0\ : STD_LOGIC;
  signal \b[7]_i_3_n_0\ : STD_LOGIC;
  signal \b[7]_i_4_n_0\ : STD_LOGIC;
  signal b_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \b_o_reg_n_0_[0]\ : STD_LOGIC;
  signal \b_o_reg_n_0_[1]\ : STD_LOGIC;
  signal \b_o_reg_n_0_[2]\ : STD_LOGIC;
  signal \b_o_reg_n_0_[3]\ : STD_LOGIC;
  signal \b_o_reg_n_0_[4]\ : STD_LOGIC;
  signal \b_o_reg_n_0_[5]\ : STD_LOGIC;
  signal \b_o_reg_n_0_[6]\ : STD_LOGIC;
  signal \b_o_reg_n_0_[7]\ : STD_LOGIC;
  signal \b_reg_n_0_[0]\ : STD_LOGIC;
  signal \b_reg_n_0_[1]\ : STD_LOGIC;
  signal \b_reg_n_0_[2]\ : STD_LOGIC;
  signal \b_reg_n_0_[3]\ : STD_LOGIC;
  signal \b_reg_n_0_[4]\ : STD_LOGIC;
  signal \b_reg_n_0_[5]\ : STD_LOGIC;
  signal \b_reg_n_0_[6]\ : STD_LOGIC;
  signal \b_reg_n_0_[7]\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal converged : STD_LOGIC;
  signal converged_i_1_n_0 : STD_LOGIC;
  signal converged_i_2_n_0 : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal delta_c : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal delta_c10_in : STD_LOGIC;
  signal delta_c2 : STD_LOGIC;
  signal delta_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \delta_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \delta_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \delta_r[6]_i_2_n_0\ : STD_LOGIC;
  signal \delta_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \delta_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \delta_r[7]_i_4_n_0\ : STD_LOGIC;
  signal delta_r_0 : STD_LOGIC;
  signal epoch_count : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \epoch_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \epoch_count_reg_n_0_[9]\ : STD_LOGIC;
  signal in21 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal \pat_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \pat_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal s : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_10_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_11_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_12_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_13_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_14_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_15_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_1_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_2_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_3_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_4_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_5_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_6_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_7_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_8_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_9_sn_1 : STD_LOGIC;
  signal \s_pred__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__0_n_1\ : STD_LOGIC;
  signal \s_pred__0_carry__0_n_2\ : STD_LOGIC;
  signal \s_pred__0_carry__0_n_3\ : STD_LOGIC;
  signal \s_pred__0_carry__0_n_4\ : STD_LOGIC;
  signal \s_pred__0_carry__0_n_5\ : STD_LOGIC;
  signal \s_pred__0_carry__0_n_6\ : STD_LOGIC;
  signal \s_pred__0_carry__0_n_7\ : STD_LOGIC;
  signal \s_pred__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry__1_n_2\ : STD_LOGIC;
  signal \s_pred__0_carry__1_n_7\ : STD_LOGIC;
  signal \s_pred__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry_n_0\ : STD_LOGIC;
  signal \s_pred__0_carry_n_1\ : STD_LOGIC;
  signal \s_pred__0_carry_n_2\ : STD_LOGIC;
  signal \s_pred__0_carry_n_3\ : STD_LOGIC;
  signal \s_pred__0_carry_n_4\ : STD_LOGIC;
  signal \s_pred__0_carry_n_5\ : STD_LOGIC;
  signal \s_pred__0_carry_n_6\ : STD_LOGIC;
  signal \s_pred__0_carry_n_7\ : STD_LOGIC;
  signal \s_train__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__0_n_1\ : STD_LOGIC;
  signal \s_train__0_carry__0_n_2\ : STD_LOGIC;
  signal \s_train__0_carry__0_n_3\ : STD_LOGIC;
  signal \s_train__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \s_train__0_carry__1_n_2\ : STD_LOGIC;
  signal \s_train__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \s_train__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \s_train__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \s_train__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \s_train__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \s_train__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \s_train__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \s_train__0_carry_n_0\ : STD_LOGIC;
  signal \s_train__0_carry_n_1\ : STD_LOGIC;
  signal \s_train__0_carry_n_2\ : STD_LOGIC;
  signal \s_train__0_carry_n_3\ : STD_LOGIC;
  signal st : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \st1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \st1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \st1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \st1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \st1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \st1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \st1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \st1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \st1_carry__0_n_0\ : STD_LOGIC;
  signal \st1_carry__0_n_1\ : STD_LOGIC;
  signal \st1_carry__0_n_2\ : STD_LOGIC;
  signal \st1_carry__0_n_3\ : STD_LOGIC;
  signal st1_carry_i_1_n_0 : STD_LOGIC;
  signal st1_carry_i_2_n_0 : STD_LOGIC;
  signal st1_carry_i_3_n_0 : STD_LOGIC;
  signal st1_carry_i_4_n_0 : STD_LOGIC;
  signal st1_carry_i_5_n_0 : STD_LOGIC;
  signal st1_carry_i_6_n_0 : STD_LOGIC;
  signal st1_carry_i_7_n_0 : STD_LOGIC;
  signal st1_carry_i_8_n_0 : STD_LOGIC;
  signal st1_carry_n_0 : STD_LOGIC;
  signal st1_carry_n_1 : STD_LOGIC;
  signal st1_carry_n_2 : STD_LOGIC;
  signal st1_carry_n_3 : STD_LOGIC;
  signal \st2_carry__0_n_0\ : STD_LOGIC;
  signal \st2_carry__0_n_1\ : STD_LOGIC;
  signal \st2_carry__0_n_2\ : STD_LOGIC;
  signal \st2_carry__0_n_3\ : STD_LOGIC;
  signal \st2_carry__1_n_0\ : STD_LOGIC;
  signal \st2_carry__1_n_1\ : STD_LOGIC;
  signal \st2_carry__1_n_2\ : STD_LOGIC;
  signal \st2_carry__1_n_3\ : STD_LOGIC;
  signal \st2_carry__2_n_2\ : STD_LOGIC;
  signal \st2_carry__2_n_3\ : STD_LOGIC;
  signal st2_carry_n_0 : STD_LOGIC;
  signal st2_carry_n_1 : STD_LOGIC;
  signal st2_carry_n_2 : STD_LOGIC;
  signal st2_carry_n_3 : STD_LOGIC;
  signal step_fn_return : STD_LOGIC;
  signal \sum_dbg[9]_i_1_n_0\ : STD_LOGIC;
  signal sx1 : STD_LOGIC;
  signal sx1_r_reg_n_0 : STD_LOGIC;
  signal sx2 : STD_LOGIC;
  signal sx2_r : STD_LOGIC;
  signal w1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w10 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \w10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \w10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \w10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \w10_carry__0_n_1\ : STD_LOGIC;
  signal \w10_carry__0_n_2\ : STD_LOGIC;
  signal \w10_carry__0_n_3\ : STD_LOGIC;
  signal w10_carry_i_1_n_0 : STD_LOGIC;
  signal w10_carry_i_2_n_0 : STD_LOGIC;
  signal w10_carry_i_3_n_0 : STD_LOGIC;
  signal w10_carry_i_4_n_0 : STD_LOGIC;
  signal w10_carry_n_0 : STD_LOGIC;
  signal w10_carry_n_1 : STD_LOGIC;
  signal w10_carry_n_2 : STD_LOGIC;
  signal w10_carry_n_3 : STD_LOGIC;
  signal \w1[7]_i_1_n_0\ : STD_LOGIC;
  signal \w1[7]_i_3_n_0\ : STD_LOGIC;
  signal w1_o0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w1_o[7]_i_1_n_0\ : STD_LOGIC;
  signal \w1_reg_n_0_[0]\ : STD_LOGIC;
  signal \w1_reg_n_0_[1]\ : STD_LOGIC;
  signal \w1_reg_n_0_[2]\ : STD_LOGIC;
  signal \w1_reg_n_0_[3]\ : STD_LOGIC;
  signal \w1_reg_n_0_[4]\ : STD_LOGIC;
  signal \w1_reg_n_0_[5]\ : STD_LOGIC;
  signal \w1_reg_n_0_[6]\ : STD_LOGIC;
  signal \w1_reg_n_0_[7]\ : STD_LOGIC;
  signal w2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w20 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \w20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \w20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \w20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \w20_carry__0_n_1\ : STD_LOGIC;
  signal \w20_carry__0_n_2\ : STD_LOGIC;
  signal \w20_carry__0_n_3\ : STD_LOGIC;
  signal w20_carry_i_1_n_0 : STD_LOGIC;
  signal w20_carry_i_2_n_0 : STD_LOGIC;
  signal w20_carry_i_3_n_0 : STD_LOGIC;
  signal w20_carry_i_4_n_0 : STD_LOGIC;
  signal w20_carry_n_0 : STD_LOGIC;
  signal w20_carry_n_1 : STD_LOGIC;
  signal w20_carry_n_2 : STD_LOGIC;
  signal w20_carry_n_3 : STD_LOGIC;
  signal w20_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \w2[7]_i_1_n_0\ : STD_LOGIC;
  signal \w2[7]_i_3_n_0\ : STD_LOGIC;
  signal \w2[7]_i_4_n_0\ : STD_LOGIC;
  signal \w2[7]_i_5_n_0\ : STD_LOGIC;
  signal w2_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^y\ : STD_LOGIC;
  signal y_i_3_n_0 : STD_LOGIC;
  signal \NLW_b0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_pred__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_pred__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_train__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_train__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_st1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_st1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_st2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_st2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_w10_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_w20_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_st[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_st[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_st[2]_i_2\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[0]\ : label is "S_IDLE:000,S_UPDATE:011,S_SAMPLE:010,S_CHECK:100,S_EPOCH:001,S_DONE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[1]\ : label is "S_IDLE:000,S_UPDATE:011,S_SAMPLE:010,S_CHECK:100,S_EPOCH:001,S_DONE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[2]\ : label is "S_IDLE:000,S_UPDATE:011,S_SAMPLE:010,S_CHECK:100,S_EPOCH:001,S_DONE:101";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of b0_carry : label is 35;
  attribute ADDER_THRESHOLD of \b0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \b[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \b[7]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \delta_r[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \delta_r[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \delta_r[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \delta_r[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \epoch_count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \epoch_count[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \epoch_count[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \epoch_count[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \epoch_count[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \epoch_count[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \epoch_count[15]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \epoch_count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \epoch_count[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \epoch_count[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \epoch_count[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \epoch_count[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \epoch_count[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \epoch_count[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \epoch_count[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \epoch_count[9]_i_1\ : label is "soft_lutpair9";
  attribute HLUTNM : string;
  attribute HLUTNM of \s_pred__0_carry_i_3\ : label is "lutpair0";
  attribute HLUTNM of \s_pred__0_carry_i_7\ : label is "lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of st1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \st1_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD of st2_carry : label is 35;
  attribute ADDER_THRESHOLD of \st2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \st2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \st2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of w10_carry : label is 35;
  attribute ADDER_THRESHOLD of \w10_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \w1[7]_i_3\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD of w20_carry : label is 35;
  attribute ADDER_THRESHOLD of \w20_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \w2[7]_i_3\ : label is "soft_lutpair5";
begin
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
  s00_axi_rdata_10_sn_1 <= s00_axi_rdata_10_sp_1;
  s00_axi_rdata_11_sn_1 <= s00_axi_rdata_11_sp_1;
  s00_axi_rdata_12_sn_1 <= s00_axi_rdata_12_sp_1;
  s00_axi_rdata_13_sn_1 <= s00_axi_rdata_13_sp_1;
  s00_axi_rdata_14_sn_1 <= s00_axi_rdata_14_sp_1;
  s00_axi_rdata_15_sn_1 <= s00_axi_rdata_15_sp_1;
  s00_axi_rdata_1_sn_1 <= s00_axi_rdata_1_sp_1;
  s00_axi_rdata_2_sn_1 <= s00_axi_rdata_2_sp_1;
  s00_axi_rdata_3_sn_1 <= s00_axi_rdata_3_sp_1;
  s00_axi_rdata_4_sn_1 <= s00_axi_rdata_4_sp_1;
  s00_axi_rdata_5_sn_1 <= s00_axi_rdata_5_sp_1;
  s00_axi_rdata_6_sn_1 <= s00_axi_rdata_6_sp_1;
  s00_axi_rdata_7_sn_1 <= s00_axi_rdata_7_sp_1;
  s00_axi_rdata_8_sn_1 <= s00_axi_rdata_8_sp_1;
  s00_axi_rdata_9_sn_1 <= s00_axi_rdata_9_sp_1;
  y <= \^y\;
\FSM_sequential_st[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A05E"
    )
        port map (
      I0 => st(2),
      I1 => Q(0),
      I2 => st(1),
      I3 => st(0),
      O => \FSM_sequential_st[0]_i_1_n_0\
    );
\FSM_sequential_st[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F70FFF00"
    )
        port map (
      I0 => sx2,
      I1 => sx1,
      I2 => st(2),
      I3 => st(1),
      I4 => st(0),
      O => \FSM_sequential_st[1]_i_1_n_0\
    );
\FSM_sequential_st[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F0000FF00BB00"
    )
        port map (
      I0 => \st1_carry__0_n_0\,
      I1 => any_error_in_ep_reg_n_0,
      I2 => \FSM_sequential_st[2]_i_2_n_0\,
      I3 => st(2),
      I4 => st(1),
      I5 => st(0),
      O => \FSM_sequential_st[2]_i_1_n_0\
    );
\FSM_sequential_st[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sx1,
      I1 => sx2,
      O => \FSM_sequential_st[2]_i_2_n_0\
    );
\FSM_sequential_st_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \FSM_sequential_st[0]_i_1_n_0\,
      Q => st(0)
    );
\FSM_sequential_st_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \FSM_sequential_st[1]_i_1_n_0\,
      Q => st(1)
    );
\FSM_sequential_st_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \FSM_sequential_st[2]_i_1_n_0\,
      Q => st(2)
    );
any_error_in_ep_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEE00004440"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => any_error_in_ep_i_2_n_0,
      I3 => any_error_in_ep_i_3_n_0,
      I4 => any_error_in_ep_i_4_n_0,
      I5 => any_error_in_ep_reg_n_0,
      O => any_error_in_ep_i_1_n_0
    );
any_error_in_ep_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFEFF00FE00"
    )
        port map (
      I0 => \delta_r_reg[7]_0\(1),
      I1 => \delta_r_reg[7]_0\(0),
      I2 => \delta_r_reg[7]_0\(2),
      I3 => delta_c2,
      I4 => \delta_r_reg[7]_0\(3),
      I5 => delta_c10_in,
      O => any_error_in_ep_i_2_n_0
    );
any_error_in_ep_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delta_c(7),
      I1 => delta_c(4),
      I2 => delta_c(6),
      I3 => delta_c(5),
      O => any_error_in_ep_i_3_n_0
    );
any_error_in_ep_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C1"
    )
        port map (
      I0 => Q(0),
      I1 => st(1),
      I2 => st(0),
      O => any_error_in_ep_i_4_n_0
    );
any_error_in_ep_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => any_error_in_ep_i_1_n_0,
      Q => any_error_in_ep_reg_n_0
    );
b0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => b0_carry_n_0,
      CO(2) => b0_carry_n_1,
      CO(1) => b0_carry_n_2,
      CO(0) => b0_carry_n_3,
      CYINIT => '0',
      DI(3) => \b_reg_n_0_[3]\,
      DI(2) => \b_reg_n_0_[2]\,
      DI(1) => \b_reg_n_0_[1]\,
      DI(0) => \b_reg_n_0_[0]\,
      O(3 downto 0) => b0(3 downto 0),
      S(3) => b0_carry_i_1_n_0,
      S(2) => b0_carry_i_2_n_0,
      S(1) => b0_carry_i_3_n_0,
      S(0) => b0_carry_i_4_n_0
    );
\b0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => b0_carry_n_0,
      CO(3) => \NLW_b0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \b0_carry__0_n_1\,
      CO(1) => \b0_carry__0_n_2\,
      CO(0) => \b0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \b_reg_n_0_[6]\,
      DI(1) => \b_reg_n_0_[5]\,
      DI(0) => \b_reg_n_0_[4]\,
      O(3 downto 0) => b0(7 downto 4),
      S(3) => \b0_carry__0_i_1_n_0\,
      S(2) => \b0_carry__0_i_2_n_0\,
      S(1) => \b0_carry__0_i_3_n_0\,
      S(0) => \b0_carry__0_i_4_n_0\
    );
\b0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \b_reg_n_0_[7]\,
      I1 => delta_r(7),
      O => \b0_carry__0_i_1_n_0\
    );
\b0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \b_reg_n_0_[6]\,
      I1 => delta_r(6),
      O => \b0_carry__0_i_2_n_0\
    );
\b0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \b_reg_n_0_[5]\,
      I1 => delta_r(5),
      O => \b0_carry__0_i_3_n_0\
    );
\b0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \b_reg_n_0_[4]\,
      I1 => delta_r(4),
      O => \b0_carry__0_i_4_n_0\
    );
b0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \b_reg_n_0_[3]\,
      I1 => delta_r(3),
      O => b0_carry_i_1_n_0
    );
b0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \b_reg_n_0_[2]\,
      I1 => delta_r(2),
      O => b0_carry_i_2_n_0
    );
b0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \b_reg_n_0_[1]\,
      I1 => delta_r(1),
      O => b0_carry_i_3_n_0
    );
b0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \b_reg_n_0_[0]\,
      I1 => delta_r(0),
      O => b0_carry_i_4_n_0
    );
\b[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b[7]_i_3_n_0\,
      I3 => b0(0),
      I4 => \b_o_reg[7]_0\(17),
      I5 => \b[7]_i_4_n_0\,
      O => b(0)
    );
\b[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b[7]_i_3_n_0\,
      I3 => b0(1),
      I4 => \b_o_reg[7]_0\(18),
      I5 => \b[7]_i_4_n_0\,
      O => b(1)
    );
\b[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b[7]_i_3_n_0\,
      I3 => b0(2),
      I4 => \b_o_reg[7]_0\(19),
      I5 => \b[7]_i_4_n_0\,
      O => b(2)
    );
\b[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b[7]_i_3_n_0\,
      I3 => b0(3),
      I4 => \b_o_reg[7]_0\(20),
      I5 => \b[7]_i_4_n_0\,
      O => b(3)
    );
\b[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b[7]_i_3_n_0\,
      I3 => b0(4),
      I4 => \b_o_reg[7]_0\(21),
      I5 => \b[7]_i_4_n_0\,
      O => b(4)
    );
\b[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b[7]_i_3_n_0\,
      I3 => b0(5),
      I4 => \b_o_reg[7]_0\(22),
      I5 => \b[7]_i_4_n_0\,
      O => b(5)
    );
\b[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b[7]_i_3_n_0\,
      I3 => b0(6),
      I4 => \b_o_reg[7]_0\(23),
      I5 => \b[7]_i_4_n_0\,
      O => b(6)
    );
\b[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0070"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b_o_reg[7]_0\(0),
      I3 => busy_reg_n_0,
      I4 => \b[7]_i_3_n_0\,
      O => \b[7]_i_1_n_0\
    );
\b[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \b[7]_i_3_n_0\,
      I3 => b0(7),
      I4 => \b_o_reg[7]_0\(24),
      I5 => \b[7]_i_4_n_0\,
      O => b(7)
    );
\b[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st(0),
      I1 => st(1),
      I2 => st(2),
      I3 => \w2[7]_i_4_n_0\,
      O => \b[7]_i_3_n_0\
    );
\b[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"343C"
    )
        port map (
      I0 => \w2[7]_i_4_n_0\,
      I1 => st(1),
      I2 => st(2),
      I3 => st(0),
      O => \b[7]_i_4_n_0\
    );
\b_o[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \b_reg_n_0_[0]\,
      I1 => \b_o_reg[7]_0\(17),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => b_o(0)
    );
\b_o[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \b_reg_n_0_[1]\,
      I1 => \b_o_reg[7]_0\(18),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => b_o(1)
    );
\b_o[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \b_reg_n_0_[2]\,
      I1 => \b_o_reg[7]_0\(19),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => b_o(2)
    );
\b_o[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \b_reg_n_0_[3]\,
      I1 => \b_o_reg[7]_0\(20),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => b_o(3)
    );
\b_o[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \b_reg_n_0_[4]\,
      I1 => \b_o_reg[7]_0\(21),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => b_o(4)
    );
\b_o[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \b_reg_n_0_[5]\,
      I1 => \b_o_reg[7]_0\(22),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => b_o(5)
    );
\b_o[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \b_reg_n_0_[6]\,
      I1 => \b_o_reg[7]_0\(23),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => b_o(6)
    );
\b_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \b_reg_n_0_[7]\,
      I1 => \b_o_reg[7]_0\(24),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => b_o(7)
    );
\b_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b_o(0),
      Q => \b_o_reg_n_0_[0]\
    );
\b_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b_o(1),
      Q => \b_o_reg_n_0_[1]\
    );
\b_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b_o(2),
      Q => \b_o_reg_n_0_[2]\
    );
\b_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b_o(3),
      Q => \b_o_reg_n_0_[3]\
    );
\b_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b_o(4),
      Q => \b_o_reg_n_0_[4]\
    );
\b_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b_o(5),
      Q => \b_o_reg_n_0_[5]\
    );
\b_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b_o(6),
      Q => \b_o_reg_n_0_[6]\
    );
\b_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b_o(7),
      Q => \b_o_reg_n_0_[7]\
    );
\b_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \b[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b(0),
      Q => \b_reg_n_0_[0]\
    );
\b_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \b[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b(1),
      Q => \b_reg_n_0_[1]\
    );
\b_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \b[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b(2),
      Q => \b_reg_n_0_[2]\
    );
\b_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \b[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b(3),
      Q => \b_reg_n_0_[3]\
    );
\b_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \b[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b(4),
      Q => \b_reg_n_0_[4]\
    );
\b_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \b[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b(5),
      Q => \b_reg_n_0_[5]\
    );
\b_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \b[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b(6),
      Q => \b_reg_n_0_[6]\
    );
\b_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \b[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => b(7),
      Q => \b_reg_n_0_[7]\
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3FE0002"
    )
        port map (
      I0 => Q(0),
      I1 => st(2),
      I2 => st(1),
      I3 => st(0),
      I4 => busy_reg_n_0,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => busy_i_1_n_0,
      Q => busy_reg_n_0
    );
converged_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => any_error_in_ep_reg_n_0,
      I3 => converged_i_2_n_0,
      I4 => converged,
      O => converged_i_1_n_0
    );
converged_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D000D000F0000"
    )
        port map (
      I0 => any_error_in_ep_reg_n_0,
      I1 => \st1_carry__0_n_0\,
      I2 => st(1),
      I3 => st(0),
      I4 => Q(0),
      I5 => st(2),
      O => converged_i_2_n_0
    );
converged_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => converged_i_1_n_0,
      Q => converged
    );
\delta_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => delta_c10_in,
      I1 => \delta_r_reg[7]_0\(0),
      I2 => delta_c2,
      O => delta_c(0)
    );
\delta_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F048"
    )
        port map (
      I0 => \delta_r_reg[7]_0\(0),
      I1 => delta_c2,
      I2 => \delta_r_reg[7]_0\(1),
      I3 => delta_c10_in,
      O => delta_c(1)
    );
\delta_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0010E0"
    )
        port map (
      I0 => \delta_r_reg[7]_0\(0),
      I1 => \delta_r_reg[7]_0\(1),
      I2 => delta_c2,
      I3 => \delta_r_reg[7]_0\(2),
      I4 => delta_c10_in,
      O => delta_c(2)
    );
\delta_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000100FE00"
    )
        port map (
      I0 => \delta_r_reg[7]_0\(1),
      I1 => \delta_r_reg[7]_0\(0),
      I2 => \delta_r_reg[7]_0\(2),
      I3 => delta_c2,
      I4 => \delta_r_reg[7]_0\(3),
      I5 => delta_c10_in,
      O => delta_c(3)
    );
\delta_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFF0000"
    )
        port map (
      I0 => s(2),
      I1 => s(1),
      I2 => s(0),
      I3 => \delta_r[7]_i_4_n_0\,
      I4 => \s_train__0_carry__1_n_2\,
      I5 => p_1_in,
      O => delta_c2
    );
\delta_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF00000000"
    )
        port map (
      I0 => s(2),
      I1 => s(1),
      I2 => s(0),
      I3 => \delta_r[7]_i_4_n_0\,
      I4 => \s_train__0_carry__1_n_2\,
      I5 => p_1_in,
      O => delta_c10_in
    );
\delta_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FF2A0000001500"
    )
        port map (
      I0 => \delta_r[4]_i_2_n_0\,
      I1 => \delta_r[7]_i_3_n_0\,
      I2 => \delta_r[7]_i_4_n_0\,
      I3 => \s_train__0_carry__1_n_2\,
      I4 => p_1_in,
      I5 => \delta_r_reg[7]_0\(4),
      O => delta_c(4)
    );
\delta_r[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \delta_r_reg[7]_0\(2),
      I1 => \delta_r_reg[7]_0\(0),
      I2 => \delta_r_reg[7]_0\(1),
      I3 => \delta_r_reg[7]_0\(3),
      O => \delta_r[4]_i_2_n_0\
    );
\delta_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FF2A0000001500"
    )
        port map (
      I0 => \delta_r[5]_i_2_n_0\,
      I1 => \delta_r[7]_i_3_n_0\,
      I2 => \delta_r[7]_i_4_n_0\,
      I3 => \s_train__0_carry__1_n_2\,
      I4 => p_1_in,
      I5 => \delta_r_reg[7]_0\(5),
      O => delta_c(5)
    );
\delta_r[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \delta_r_reg[7]_0\(3),
      I1 => \delta_r_reg[7]_0\(1),
      I2 => \delta_r_reg[7]_0\(0),
      I3 => \delta_r_reg[7]_0\(2),
      I4 => \delta_r_reg[7]_0\(4),
      O => \delta_r[5]_i_2_n_0\
    );
\delta_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FF2A0000001500"
    )
        port map (
      I0 => \delta_r[6]_i_2_n_0\,
      I1 => \delta_r[7]_i_3_n_0\,
      I2 => \delta_r[7]_i_4_n_0\,
      I3 => \s_train__0_carry__1_n_2\,
      I4 => p_1_in,
      I5 => \delta_r_reg[7]_0\(6),
      O => delta_c(6)
    );
\delta_r[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \delta_r_reg[7]_0\(4),
      I1 => \delta_r_reg[7]_0\(2),
      I2 => \delta_r_reg[7]_0\(0),
      I3 => \delta_r_reg[7]_0\(1),
      I4 => \delta_r_reg[7]_0\(3),
      I5 => \delta_r_reg[7]_0\(5),
      O => \delta_r[6]_i_2_n_0\
    );
\delta_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FF2A0000001500"
    )
        port map (
      I0 => \delta_r[7]_i_2_n_0\,
      I1 => \delta_r[7]_i_3_n_0\,
      I2 => \delta_r[7]_i_4_n_0\,
      I3 => \s_train__0_carry__1_n_2\,
      I4 => p_1_in,
      I5 => \delta_r_reg[7]_0\(7),
      O => delta_c(7)
    );
\delta_r[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delta_r[6]_i_2_n_0\,
      I1 => \delta_r_reg[7]_0\(6),
      O => \delta_r[7]_i_2_n_0\
    );
\delta_r[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s(2),
      I1 => s(1),
      I2 => s(0),
      O => \delta_r[7]_i_3_n_0\
    );
\delta_r[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s(3),
      I1 => s(4),
      I2 => s(5),
      I3 => s(6),
      I4 => s(8),
      I5 => s(7),
      O => \delta_r[7]_i_4_n_0\
    );
\delta_r[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFC0A0A0CFC0"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => sx1,
      I3 => Q(1),
      I4 => sx2,
      I5 => Q(2),
      O => p_1_in
    );
\delta_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => delta_c(0),
      Q => delta_r(0)
    );
\delta_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => delta_c(1),
      Q => delta_r(1)
    );
\delta_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => delta_c(2),
      Q => delta_r(2)
    );
\delta_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => delta_c(3),
      Q => delta_r(3)
    );
\delta_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => delta_c(4),
      Q => delta_r(4)
    );
\delta_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => delta_c(5),
      Q => delta_r(5)
    );
\delta_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => delta_c(6),
      Q => delta_r(6)
    );
\delta_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => delta_c(7),
      Q => delta_r(7)
    );
\epoch_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st(2),
      I1 => \epoch_count_reg_n_0_[0]\,
      O => epoch_count(0)
    );
\epoch_count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(10),
      O => epoch_count(10)
    );
\epoch_count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(11),
      O => epoch_count(11)
    );
\epoch_count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(12),
      O => epoch_count(12)
    );
\epoch_count[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(13),
      O => epoch_count(13)
    );
\epoch_count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(14),
      O => epoch_count(14)
    );
\epoch_count[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => Q(0),
      I1 => st(2),
      I2 => st(0),
      I3 => st(1),
      O => \epoch_count[15]_i_1_n_0\
    );
\epoch_count[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(15),
      O => epoch_count(15)
    );
\epoch_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(1),
      O => epoch_count(1)
    );
\epoch_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(2),
      O => epoch_count(2)
    );
\epoch_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(3),
      O => epoch_count(3)
    );
\epoch_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(4),
      O => epoch_count(4)
    );
\epoch_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(5),
      O => epoch_count(5)
    );
\epoch_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(6),
      O => epoch_count(6)
    );
\epoch_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(7),
      O => epoch_count(7)
    );
\epoch_count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(8),
      O => epoch_count(8)
    );
\epoch_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => st(2),
      I1 => in21(9),
      O => epoch_count(9)
    );
\epoch_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(0),
      Q => \epoch_count_reg_n_0_[0]\
    );
\epoch_count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(10),
      Q => \epoch_count_reg_n_0_[10]\
    );
\epoch_count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(11),
      Q => \epoch_count_reg_n_0_[11]\
    );
\epoch_count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(12),
      Q => \epoch_count_reg_n_0_[12]\
    );
\epoch_count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(13),
      Q => \epoch_count_reg_n_0_[13]\
    );
\epoch_count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(14),
      Q => \epoch_count_reg_n_0_[14]\
    );
\epoch_count_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(15),
      Q => \epoch_count_reg_n_0_[15]\
    );
\epoch_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(1),
      Q => \epoch_count_reg_n_0_[1]\
    );
\epoch_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(2),
      Q => \epoch_count_reg_n_0_[2]\
    );
\epoch_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(3),
      Q => \epoch_count_reg_n_0_[3]\
    );
\epoch_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(4),
      Q => \epoch_count_reg_n_0_[4]\
    );
\epoch_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(5),
      Q => \epoch_count_reg_n_0_[5]\
    );
\epoch_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(6),
      Q => \epoch_count_reg_n_0_[6]\
    );
\epoch_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(7),
      Q => \epoch_count_reg_n_0_[7]\
    );
\epoch_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(8),
      Q => \epoch_count_reg_n_0_[8]\
    );
\epoch_count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \epoch_count[15]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => epoch_count(9),
      Q => \epoch_count_reg_n_0_[9]\
    );
\pat_idx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AADAAADAAA00AA0A"
    )
        port map (
      I0 => sx2,
      I1 => sx1,
      I2 => st(0),
      I3 => st(2),
      I4 => Q(0),
      I5 => st(1),
      O => \pat_idx[0]_i_1_n_0\
    );
\pat_idx[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCECCCECCC00CC0C"
    )
        port map (
      I0 => sx2,
      I1 => sx1,
      I2 => st(0),
      I3 => st(2),
      I4 => Q(0),
      I5 => st(1),
      O => \pat_idx[1]_i_1_n_0\
    );
\pat_idx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \pat_idx[0]_i_1_n_0\,
      Q => sx2
    );
\pat_idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \pat_idx[1]_i_1_n_0\,
      Q => sx1
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_0_sn_1,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(0),
      I1 => \^y\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => converged,
      I5 => \b_o_reg_n_0_[0]\,
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC00AAAA0C00AAAA"
    )
        port map (
      I0 => s00_axi_rdata_10_sn_1,
      I1 => data5(10),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => data7(10),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => data5(11),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => s00_axi_rdata_11_sn_1,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => data5(12),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => s00_axi_rdata_12_sn_1,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => data5(13),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => s00_axi_rdata_13_sn_1,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => data5(14),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => s00_axi_rdata_14_sn_1,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => data5(15),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => s00_axi_rdata_15_sn_1,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_1_sn_1,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \b_o_reg_n_0_[1]\,
      I1 => data5(1),
      I2 => data7(1),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_2_sn_1,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \b_o_reg_n_0_[2]\,
      I1 => data5(2),
      I2 => data7(2),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_3_sn_1,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \b_o_reg_n_0_[3]\,
      I1 => data5(3),
      I2 => data7(3),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_4_sn_1,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \b_o_reg_n_0_[4]\,
      I1 => data5(4),
      I2 => data7(4),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_5_sn_1,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \b_o_reg_n_0_[5]\,
      I1 => data5(5),
      I2 => data7(5),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_6_sn_1,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \b_o_reg_n_0_[6]\,
      I1 => data5(6),
      I2 => data7(6),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_7_sn_1,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \b_o_reg_n_0_[7]\,
      I1 => data5(7),
      I2 => data7(7),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC00AAAA0C00AAAA"
    )
        port map (
      I0 => s00_axi_rdata_8_sn_1,
      I1 => data5(8),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => data7(8),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC00AAAA0C00AAAA"
    )
        port map (
      I0 => s00_axi_rdata_9_sn_1,
      I1 => data5(9),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(2),
      I5 => data7(9),
      O => s00_axi_rdata(9)
    );
\s_pred__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_pred__0_carry_n_0\,
      CO(2) => \s_pred__0_carry_n_1\,
      CO(1) => \s_pred__0_carry_n_2\,
      CO(0) => \s_pred__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \s_pred__0_carry_i_1_n_0\,
      DI(2) => \s_pred__0_carry_i_2_n_0\,
      DI(1) => \s_pred__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \s_pred__0_carry_n_4\,
      O(2) => \s_pred__0_carry_n_5\,
      O(1) => \s_pred__0_carry_n_6\,
      O(0) => \s_pred__0_carry_n_7\,
      S(3) => \s_pred__0_carry_i_4_n_0\,
      S(2) => \s_pred__0_carry_i_5_n_0\,
      S(1) => \s_pred__0_carry_i_6_n_0\,
      S(0) => \s_pred__0_carry_i_7_n_0\
    );
\s_pred__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_pred__0_carry_n_0\,
      CO(3) => \s_pred__0_carry__0_n_0\,
      CO(2) => \s_pred__0_carry__0_n_1\,
      CO(1) => \s_pred__0_carry__0_n_2\,
      CO(0) => \s_pred__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \s_pred__0_carry__0_i_1_n_0\,
      DI(2) => \s_pred__0_carry__0_i_2_n_0\,
      DI(1) => \s_pred__0_carry__0_i_3_n_0\,
      DI(0) => \s_pred__0_carry__0_i_4_n_0\,
      O(3) => \s_pred__0_carry__0_n_4\,
      O(2) => \s_pred__0_carry__0_n_5\,
      O(1) => \s_pred__0_carry__0_n_6\,
      O(0) => \s_pred__0_carry__0_n_7\,
      S(3) => \s_pred__0_carry__0_i_5_n_0\,
      S(2) => \s_pred__0_carry__0_i_6_n_0\,
      S(1) => \s_pred__0_carry__0_i_7_n_0\,
      S(0) => \s_pred__0_carry__0_i_8_n_0\
    );
\s_pred__0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87777888"
    )
        port map (
      I0 => \w1_reg_n_0_[7]\,
      I1 => x1,
      I2 => x2,
      I3 => w2(7),
      I4 => \b_reg_n_0_[7]\,
      O => \s_pred__0_carry__0_i_1_n_0\
    );
\s_pred__0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[5]\,
      I1 => x1,
      I2 => x2,
      I3 => w2(5),
      I4 => \b_reg_n_0_[5]\,
      O => \s_pred__0_carry__0_i_2_n_0\
    );
\s_pred__0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[4]\,
      I1 => x1,
      I2 => x2,
      I3 => w2(4),
      I4 => \b_reg_n_0_[4]\,
      O => \s_pred__0_carry__0_i_3_n_0\
    );
\s_pred__0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[3]\,
      I1 => x1,
      I2 => x2,
      I3 => w2(3),
      I4 => \b_reg_n_0_[3]\,
      O => \s_pred__0_carry__0_i_4_n_0\
    );
\s_pred__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56666AAA6AAA6AAA"
    )
        port map (
      I0 => \s_pred__0_carry__0_i_1_n_0\,
      I1 => \b_reg_n_0_[6]\,
      I2 => w2(6),
      I3 => x2,
      I4 => x1,
      I5 => \w1_reg_n_0_[6]\,
      O => \s_pred__0_carry__0_i_5_n_0\
    );
\s_pred__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_pred__0_carry__0_i_2_n_0\,
      I1 => \b_reg_n_0_[6]\,
      I2 => w2(6),
      I3 => x2,
      I4 => x1,
      I5 => \w1_reg_n_0_[6]\,
      O => \s_pred__0_carry__0_i_6_n_0\
    );
\s_pred__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_pred__0_carry__0_i_3_n_0\,
      I1 => \b_reg_n_0_[5]\,
      I2 => w2(5),
      I3 => x2,
      I4 => x1,
      I5 => \w1_reg_n_0_[5]\,
      O => \s_pred__0_carry__0_i_7_n_0\
    );
\s_pred__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_pred__0_carry__0_i_4_n_0\,
      I1 => \b_reg_n_0_[4]\,
      I2 => w2(4),
      I3 => x2,
      I4 => x1,
      I5 => \w1_reg_n_0_[4]\,
      O => \s_pred__0_carry__0_i_8_n_0\
    );
\s_pred__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_pred__0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_s_pred__0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_pred__0_carry__1_n_2\,
      CO(0) => \NLW_s_pred__0_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \s_pred__0_carry__1_i_1_n_0\,
      O(3 downto 1) => \NLW_s_pred__0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \s_pred__0_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \s_pred__0_carry__1_i_2_n_0\
    );
\s_pred__0_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00878787"
    )
        port map (
      I0 => x2,
      I1 => w2(7),
      I2 => \b_reg_n_0_[7]\,
      I3 => \w1_reg_n_0_[7]\,
      I4 => x1,
      O => \s_pred__0_carry__1_i_1_n_0\
    );
\s_pred__0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFF888"
    )
        port map (
      I0 => x1,
      I1 => \w1_reg_n_0_[7]\,
      I2 => x2,
      I3 => w2(7),
      I4 => \b_reg_n_0_[7]\,
      O => \s_pred__0_carry__1_i_2_n_0\
    );
\s_pred__0_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[2]\,
      I1 => x1,
      I2 => x2,
      I3 => w2(2),
      I4 => \b_reg_n_0_[2]\,
      O => \s_pred__0_carry_i_1_n_0\
    );
\s_pred__0_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[1]\,
      I1 => x1,
      I2 => x2,
      I3 => w2(1),
      I4 => \b_reg_n_0_[1]\,
      O => \s_pred__0_carry_i_2_n_0\
    );
\s_pred__0_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[0]\,
      I1 => x1,
      I2 => x2,
      I3 => w2(0),
      I4 => \b_reg_n_0_[0]\,
      O => \s_pred__0_carry_i_3_n_0\
    );
\s_pred__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_pred__0_carry_i_1_n_0\,
      I1 => \b_reg_n_0_[3]\,
      I2 => w2(3),
      I3 => x2,
      I4 => x1,
      I5 => \w1_reg_n_0_[3]\,
      O => \s_pred__0_carry_i_4_n_0\
    );
\s_pred__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_pred__0_carry_i_2_n_0\,
      I1 => \b_reg_n_0_[2]\,
      I2 => w2(2),
      I3 => x2,
      I4 => x1,
      I5 => \w1_reg_n_0_[2]\,
      O => \s_pred__0_carry_i_5_n_0\
    );
\s_pred__0_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_pred__0_carry_i_3_n_0\,
      I1 => \b_reg_n_0_[1]\,
      I2 => w2(1),
      I3 => x2,
      I4 => x1,
      I5 => \w1_reg_n_0_[1]\,
      O => \s_pred__0_carry_i_6_n_0\
    );
\s_pred__0_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87777888"
    )
        port map (
      I0 => \w1_reg_n_0_[0]\,
      I1 => x1,
      I2 => x2,
      I3 => w2(0),
      I4 => \b_reg_n_0_[0]\,
      O => \s_pred__0_carry_i_7_n_0\
    );
\s_train__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_train__0_carry_n_0\,
      CO(2) => \s_train__0_carry_n_1\,
      CO(1) => \s_train__0_carry_n_2\,
      CO(0) => \s_train__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \s_train__0_carry_i_1_n_0\,
      DI(2) => \s_train__0_carry_i_2_n_0\,
      DI(1) => \s_train__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => s(3 downto 0),
      S(3) => \s_train__0_carry_i_4_n_0\,
      S(2) => \s_train__0_carry_i_5_n_0\,
      S(1) => \s_train__0_carry_i_6_n_0\,
      S(0) => \s_train__0_carry_i_7_n_0\
    );
\s_train__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_train__0_carry_n_0\,
      CO(3) => \s_train__0_carry__0_n_0\,
      CO(2) => \s_train__0_carry__0_n_1\,
      CO(1) => \s_train__0_carry__0_n_2\,
      CO(0) => \s_train__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \s_train__0_carry__0_i_1_n_0\,
      DI(2) => \s_train__0_carry__0_i_2_n_0\,
      DI(1) => \s_train__0_carry__0_i_3_n_0\,
      DI(0) => \s_train__0_carry__0_i_4_n_0\,
      O(3 downto 0) => s(7 downto 4),
      S(3) => \s_train__0_carry__0_i_5_n_0\,
      S(2) => \s_train__0_carry__0_i_6_n_0\,
      S(1) => \s_train__0_carry__0_i_7_n_0\,
      S(0) => \s_train__0_carry__0_i_8_n_0\
    );
\s_train__0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87777888"
    )
        port map (
      I0 => \w1_reg_n_0_[7]\,
      I1 => sx1,
      I2 => sx2,
      I3 => w2(7),
      I4 => \b_reg_n_0_[7]\,
      O => \s_train__0_carry__0_i_1_n_0\
    );
\s_train__0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[5]\,
      I1 => sx1,
      I2 => sx2,
      I3 => w2(5),
      I4 => \b_reg_n_0_[5]\,
      O => \s_train__0_carry__0_i_2_n_0\
    );
\s_train__0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[4]\,
      I1 => sx1,
      I2 => sx2,
      I3 => w2(4),
      I4 => \b_reg_n_0_[4]\,
      O => \s_train__0_carry__0_i_3_n_0\
    );
\s_train__0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[3]\,
      I1 => sx1,
      I2 => sx2,
      I3 => w2(3),
      I4 => \b_reg_n_0_[3]\,
      O => \s_train__0_carry__0_i_4_n_0\
    );
\s_train__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56666AAA6AAA6AAA"
    )
        port map (
      I0 => \s_train__0_carry__0_i_1_n_0\,
      I1 => \b_reg_n_0_[6]\,
      I2 => w2(6),
      I3 => sx2,
      I4 => sx1,
      I5 => \w1_reg_n_0_[6]\,
      O => \s_train__0_carry__0_i_5_n_0\
    );
\s_train__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_train__0_carry__0_i_2_n_0\,
      I1 => \b_reg_n_0_[6]\,
      I2 => w2(6),
      I3 => sx2,
      I4 => sx1,
      I5 => \w1_reg_n_0_[6]\,
      O => \s_train__0_carry__0_i_6_n_0\
    );
\s_train__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_train__0_carry__0_i_3_n_0\,
      I1 => \b_reg_n_0_[5]\,
      I2 => w2(5),
      I3 => sx2,
      I4 => sx1,
      I5 => \w1_reg_n_0_[5]\,
      O => \s_train__0_carry__0_i_7_n_0\
    );
\s_train__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_train__0_carry__0_i_4_n_0\,
      I1 => \b_reg_n_0_[4]\,
      I2 => w2(4),
      I3 => sx2,
      I4 => sx1,
      I5 => \w1_reg_n_0_[4]\,
      O => \s_train__0_carry__0_i_8_n_0\
    );
\s_train__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_train__0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_s_train__0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_train__0_carry__1_n_2\,
      CO(0) => \NLW_s_train__0_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \s_train__0_carry__1_i_1_n_0\,
      O(3 downto 1) => \NLW_s_train__0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => s(8),
      S(3 downto 1) => B"001",
      S(0) => \s_train__0_carry__1_i_2_n_0\
    );
\s_train__0_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00878787"
    )
        port map (
      I0 => sx2,
      I1 => w2(7),
      I2 => \b_reg_n_0_[7]\,
      I3 => \w1_reg_n_0_[7]\,
      I4 => sx1,
      O => \s_train__0_carry__1_i_1_n_0\
    );
\s_train__0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFF888"
    )
        port map (
      I0 => sx1,
      I1 => \w1_reg_n_0_[7]\,
      I2 => sx2,
      I3 => w2(7),
      I4 => \b_reg_n_0_[7]\,
      O => \s_train__0_carry__1_i_2_n_0\
    );
\s_train__0_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[2]\,
      I1 => sx1,
      I2 => sx2,
      I3 => w2(2),
      I4 => \b_reg_n_0_[2]\,
      O => \s_train__0_carry_i_1_n_0\
    );
\s_train__0_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[1]\,
      I1 => sx1,
      I2 => sx2,
      I3 => w2(1),
      I4 => \b_reg_n_0_[1]\,
      O => \s_train__0_carry_i_2_n_0\
    );
\s_train__0_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => \w1_reg_n_0_[0]\,
      I1 => sx1,
      I2 => sx2,
      I3 => w2(0),
      I4 => \b_reg_n_0_[0]\,
      O => \s_train__0_carry_i_3_n_0\
    );
\s_train__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_train__0_carry_i_1_n_0\,
      I1 => \b_reg_n_0_[3]\,
      I2 => w2(3),
      I3 => sx2,
      I4 => sx1,
      I5 => \w1_reg_n_0_[3]\,
      O => \s_train__0_carry_i_4_n_0\
    );
\s_train__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_train__0_carry_i_2_n_0\,
      I1 => \b_reg_n_0_[2]\,
      I2 => w2(2),
      I3 => sx2,
      I4 => sx1,
      I5 => \w1_reg_n_0_[2]\,
      O => \s_train__0_carry_i_5_n_0\
    );
\s_train__0_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \s_train__0_carry_i_3_n_0\,
      I1 => \b_reg_n_0_[1]\,
      I2 => w2(1),
      I3 => sx2,
      I4 => sx1,
      I5 => \w1_reg_n_0_[1]\,
      O => \s_train__0_carry_i_6_n_0\
    );
\s_train__0_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87777888"
    )
        port map (
      I0 => \w1_reg_n_0_[0]\,
      I1 => sx1,
      I2 => sx2,
      I3 => w2(0),
      I4 => \b_reg_n_0_[0]\,
      O => \s_train__0_carry_i_7_n_0\
    );
st1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => st1_carry_n_0,
      CO(2) => st1_carry_n_1,
      CO(1) => st1_carry_n_2,
      CO(0) => st1_carry_n_3,
      CYINIT => '1',
      DI(3) => st1_carry_i_1_n_0,
      DI(2) => st1_carry_i_2_n_0,
      DI(1) => st1_carry_i_3_n_0,
      DI(0) => st1_carry_i_4_n_0,
      O(3 downto 0) => NLW_st1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => st1_carry_i_5_n_0,
      S(2) => st1_carry_i_6_n_0,
      S(1) => st1_carry_i_7_n_0,
      S(0) => st1_carry_i_8_n_0
    );
\st1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => st1_carry_n_0,
      CO(3) => \st1_carry__0_n_0\,
      CO(2) => \st1_carry__0_n_1\,
      CO(1) => \st1_carry__0_n_2\,
      CO(0) => \st1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \st1_carry__0_i_1_n_0\,
      DI(2) => \st1_carry__0_i_2_n_0\,
      DI(1) => \st1_carry__0_i_3_n_0\,
      DI(0) => \st1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_st1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \st1_carry__0_i_5_n_0\,
      S(2) => \st1_carry__0_i_6_n_0\,
      S(1) => \st1_carry__0_i_7_n_0\,
      S(0) => \st1_carry__0_i_8_n_0\
    );
\st1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in21(14),
      I1 => \st1_carry__0_0\(14),
      I2 => \st1_carry__0_0\(15),
      I3 => in21(15),
      O => \st1_carry__0_i_1_n_0\
    );
\st1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in21(12),
      I1 => \st1_carry__0_0\(12),
      I2 => \st1_carry__0_0\(13),
      I3 => in21(13),
      O => \st1_carry__0_i_2_n_0\
    );
\st1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in21(10),
      I1 => \st1_carry__0_0\(10),
      I2 => \st1_carry__0_0\(11),
      I3 => in21(11),
      O => \st1_carry__0_i_3_n_0\
    );
\st1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in21(8),
      I1 => \st1_carry__0_0\(8),
      I2 => \st1_carry__0_0\(9),
      I3 => in21(9),
      O => \st1_carry__0_i_4_n_0\
    );
\st1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \st1_carry__0_0\(15),
      I1 => in21(15),
      I2 => in21(14),
      I3 => \st1_carry__0_0\(14),
      O => \st1_carry__0_i_5_n_0\
    );
\st1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \st1_carry__0_0\(13),
      I1 => in21(13),
      I2 => in21(12),
      I3 => \st1_carry__0_0\(12),
      O => \st1_carry__0_i_6_n_0\
    );
\st1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \st1_carry__0_0\(11),
      I1 => in21(11),
      I2 => in21(10),
      I3 => \st1_carry__0_0\(10),
      O => \st1_carry__0_i_7_n_0\
    );
\st1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \st1_carry__0_0\(9),
      I1 => in21(9),
      I2 => in21(8),
      I3 => \st1_carry__0_0\(8),
      O => \st1_carry__0_i_8_n_0\
    );
st1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in21(6),
      I1 => \st1_carry__0_0\(6),
      I2 => \st1_carry__0_0\(7),
      I3 => in21(7),
      O => st1_carry_i_1_n_0
    );
st1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in21(4),
      I1 => \st1_carry__0_0\(4),
      I2 => \st1_carry__0_0\(5),
      I3 => in21(5),
      O => st1_carry_i_2_n_0
    );
st1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in21(2),
      I1 => \st1_carry__0_0\(2),
      I2 => \st1_carry__0_0\(3),
      I3 => in21(3),
      O => st1_carry_i_3_n_0
    );
st1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => \st1_carry__0_0\(0),
      I1 => \epoch_count_reg_n_0_[0]\,
      I2 => \st1_carry__0_0\(1),
      I3 => in21(1),
      O => st1_carry_i_4_n_0
    );
st1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \st1_carry__0_0\(7),
      I1 => in21(7),
      I2 => in21(6),
      I3 => \st1_carry__0_0\(6),
      O => st1_carry_i_5_n_0
    );
st1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \st1_carry__0_0\(5),
      I1 => in21(5),
      I2 => in21(4),
      I3 => \st1_carry__0_0\(4),
      O => st1_carry_i_6_n_0
    );
st1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \st1_carry__0_0\(3),
      I1 => in21(3),
      I2 => in21(2),
      I3 => \st1_carry__0_0\(2),
      O => st1_carry_i_7_n_0
    );
st1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \st1_carry__0_0\(1),
      I1 => in21(1),
      I2 => \st1_carry__0_0\(0),
      I3 => \epoch_count_reg_n_0_[0]\,
      O => st1_carry_i_8_n_0
    );
st2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => st2_carry_n_0,
      CO(2) => st2_carry_n_1,
      CO(1) => st2_carry_n_2,
      CO(0) => st2_carry_n_3,
      CYINIT => \epoch_count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in21(4 downto 1),
      S(3) => \epoch_count_reg_n_0_[4]\,
      S(2) => \epoch_count_reg_n_0_[3]\,
      S(1) => \epoch_count_reg_n_0_[2]\,
      S(0) => \epoch_count_reg_n_0_[1]\
    );
\st2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => st2_carry_n_0,
      CO(3) => \st2_carry__0_n_0\,
      CO(2) => \st2_carry__0_n_1\,
      CO(1) => \st2_carry__0_n_2\,
      CO(0) => \st2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in21(8 downto 5),
      S(3) => \epoch_count_reg_n_0_[8]\,
      S(2) => \epoch_count_reg_n_0_[7]\,
      S(1) => \epoch_count_reg_n_0_[6]\,
      S(0) => \epoch_count_reg_n_0_[5]\
    );
\st2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \st2_carry__0_n_0\,
      CO(3) => \st2_carry__1_n_0\,
      CO(2) => \st2_carry__1_n_1\,
      CO(1) => \st2_carry__1_n_2\,
      CO(0) => \st2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in21(12 downto 9),
      S(3) => \epoch_count_reg_n_0_[12]\,
      S(2) => \epoch_count_reg_n_0_[11]\,
      S(1) => \epoch_count_reg_n_0_[10]\,
      S(0) => \epoch_count_reg_n_0_[9]\
    );
\st2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \st2_carry__1_n_0\,
      CO(3 downto 2) => \NLW_st2_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \st2_carry__2_n_2\,
      CO(0) => \st2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_st2_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in21(15 downto 13),
      S(3) => '0',
      S(2) => \epoch_count_reg_n_0_[15]\,
      S(1) => \epoch_count_reg_n_0_[14]\,
      S(0) => \epoch_count_reg_n_0_[13]\
    );
\sum_dbg[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_pred__0_carry__1_n_2\,
      O => \sum_dbg[9]_i_1_n_0\
    );
\sum_dbg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry_n_7\,
      Q => data7(1)
    );
\sum_dbg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry_n_6\,
      Q => data7(2)
    );
\sum_dbg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry_n_5\,
      Q => data7(3)
    );
\sum_dbg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry_n_4\,
      Q => data7(4)
    );
\sum_dbg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry__0_n_7\,
      Q => data7(5)
    );
\sum_dbg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry__0_n_6\,
      Q => data7(6)
    );
\sum_dbg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry__0_n_5\,
      Q => data7(7)
    );
\sum_dbg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry__0_n_4\,
      Q => data7(8)
    );
\sum_dbg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \s_pred__0_carry__1_n_7\,
      Q => data7(9)
    );
\sum_dbg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \sum_dbg[9]_i_1_n_0\,
      Q => data7(10)
    );
sx1_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => st(0),
      O => delta_r_0
    );
sx1_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => sx1,
      Q => sx1_r_reg_n_0
    );
sx2_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => delta_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => sx2,
      Q => sx2_r
    );
w10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => w10_carry_n_0,
      CO(2) => w10_carry_n_1,
      CO(1) => w10_carry_n_2,
      CO(0) => w10_carry_n_3,
      CYINIT => '0',
      DI(3) => \w1_reg_n_0_[3]\,
      DI(2) => \w1_reg_n_0_[2]\,
      DI(1) => \w1_reg_n_0_[1]\,
      DI(0) => \w1_reg_n_0_[0]\,
      O(3 downto 0) => w10(3 downto 0),
      S(3) => w10_carry_i_1_n_0,
      S(2) => w10_carry_i_2_n_0,
      S(1) => w10_carry_i_3_n_0,
      S(0) => w10_carry_i_4_n_0
    );
\w10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => w10_carry_n_0,
      CO(3) => \NLW_w10_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \w10_carry__0_n_1\,
      CO(1) => \w10_carry__0_n_2\,
      CO(0) => \w10_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \w1_reg_n_0_[6]\,
      DI(1) => \w1_reg_n_0_[5]\,
      DI(0) => \w1_reg_n_0_[4]\,
      O(3 downto 0) => w10(7 downto 4),
      S(3) => \w10_carry__0_i_1_n_0\,
      S(2) => \w10_carry__0_i_2_n_0\,
      S(1) => \w10_carry__0_i_3_n_0\,
      S(0) => \w10_carry__0_i_4_n_0\
    );
\w10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[7]\,
      I1 => delta_r(7),
      O => \w10_carry__0_i_1_n_0\
    );
\w10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[6]\,
      I1 => delta_r(6),
      O => \w10_carry__0_i_2_n_0\
    );
\w10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[5]\,
      I1 => delta_r(5),
      O => \w10_carry__0_i_3_n_0\
    );
\w10_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[4]\,
      I1 => delta_r(4),
      O => \w10_carry__0_i_4_n_0\
    );
w10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[3]\,
      I1 => delta_r(3),
      O => w10_carry_i_1_n_0
    );
w10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[2]\,
      I1 => delta_r(2),
      O => w10_carry_i_2_n_0
    );
w10_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[1]\,
      I1 => delta_r(1),
      O => w10_carry_i_3_n_0
    );
w10_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w1_reg_n_0_[0]\,
      I1 => delta_r(0),
      O => w10_carry_i_4_n_0
    );
\w1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w10(0),
      I1 => \w1[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(1),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w1(0)
    );
\w1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w10(1),
      I1 => \w1[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(2),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w1(1)
    );
\w1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w10(2),
      I1 => \w1[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(3),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w1(2)
    );
\w1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w10(3),
      I1 => \w1[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(4),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w1(3)
    );
\w1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w10(4),
      I1 => \w1[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(5),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w1(4)
    );
\w1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w10(5),
      I1 => \w1[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(6),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w1(5)
    );
\w1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w10(6),
      I1 => \w1[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(7),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w1(6)
    );
\w1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100010003F3F1000"
    )
        port map (
      I0 => \w1[7]_i_3_n_0\,
      I1 => st(2),
      I2 => st(1),
      I3 => st(0),
      I4 => \b_o_reg[7]_0\(0),
      I5 => busy_reg_n_0,
      O => \w1[7]_i_1_n_0\
    );
\w1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w10(7),
      I1 => \w1[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(8),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w1(7)
    );
\w1[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \w2[7]_i_4_n_0\,
      I1 => sx1_r_reg_n_0,
      O => \w1[7]_i_3_n_0\
    );
\w1_o[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \w1_reg_n_0_[0]\,
      I1 => \b_o_reg[7]_0\(1),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w1_o0_in(0)
    );
\w1_o[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \w1_reg_n_0_[1]\,
      I1 => \b_o_reg[7]_0\(2),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w1_o0_in(1)
    );
\w1_o[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \w1_reg_n_0_[2]\,
      I1 => \b_o_reg[7]_0\(3),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w1_o0_in(2)
    );
\w1_o[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \w1_reg_n_0_[3]\,
      I1 => \b_o_reg[7]_0\(4),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w1_o0_in(3)
    );
\w1_o[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \w1_reg_n_0_[4]\,
      I1 => \b_o_reg[7]_0\(5),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w1_o0_in(4)
    );
\w1_o[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \w1_reg_n_0_[5]\,
      I1 => \b_o_reg[7]_0\(6),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w1_o0_in(5)
    );
\w1_o[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \w1_reg_n_0_[6]\,
      I1 => \b_o_reg[7]_0\(7),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w1_o0_in(6)
    );
\w1_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20203F20"
    )
        port map (
      I0 => st(0),
      I1 => st(1),
      I2 => st(2),
      I3 => \b_o_reg[7]_0\(0),
      I4 => busy_reg_n_0,
      O => \w1_o[7]_i_1_n_0\
    );
\w1_o[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \w1_reg_n_0_[7]\,
      I1 => \b_o_reg[7]_0\(8),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w1_o0_in(7)
    );
\w1_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1_o0_in(0),
      Q => data5(0)
    );
\w1_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1_o0_in(1),
      Q => data5(1)
    );
\w1_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1_o0_in(2),
      Q => data5(2)
    );
\w1_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1_o0_in(3),
      Q => data5(3)
    );
\w1_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1_o0_in(4),
      Q => data5(4)
    );
\w1_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1_o0_in(5),
      Q => data5(5)
    );
\w1_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1_o0_in(6),
      Q => data5(6)
    );
\w1_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1_o0_in(7),
      Q => data5(7)
    );
\w1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1(0),
      Q => \w1_reg_n_0_[0]\
    );
\w1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1(1),
      Q => \w1_reg_n_0_[1]\
    );
\w1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1(2),
      Q => \w1_reg_n_0_[2]\
    );
\w1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1(3),
      Q => \w1_reg_n_0_[3]\
    );
\w1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1(4),
      Q => \w1_reg_n_0_[4]\
    );
\w1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1(5),
      Q => \w1_reg_n_0_[5]\
    );
\w1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1(6),
      Q => \w1_reg_n_0_[6]\
    );
\w1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w1(7),
      Q => \w1_reg_n_0_[7]\
    );
w20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => w20_carry_n_0,
      CO(2) => w20_carry_n_1,
      CO(1) => w20_carry_n_2,
      CO(0) => w20_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => w2(3 downto 0),
      O(3 downto 0) => w20(3 downto 0),
      S(3) => w20_carry_i_1_n_0,
      S(2) => w20_carry_i_2_n_0,
      S(1) => w20_carry_i_3_n_0,
      S(0) => w20_carry_i_4_n_0
    );
\w20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => w20_carry_n_0,
      CO(3) => \NLW_w20_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \w20_carry__0_n_1\,
      CO(1) => \w20_carry__0_n_2\,
      CO(0) => \w20_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => w2(6 downto 4),
      O(3 downto 0) => w20(7 downto 4),
      S(3) => \w20_carry__0_i_1_n_0\,
      S(2) => \w20_carry__0_i_2_n_0\,
      S(1) => \w20_carry__0_i_3_n_0\,
      S(0) => \w20_carry__0_i_4_n_0\
    );
\w20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2(7),
      I1 => delta_r(7),
      O => \w20_carry__0_i_1_n_0\
    );
\w20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2(6),
      I1 => delta_r(6),
      O => \w20_carry__0_i_2_n_0\
    );
\w20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2(5),
      I1 => delta_r(5),
      O => \w20_carry__0_i_3_n_0\
    );
\w20_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2(4),
      I1 => delta_r(4),
      O => \w20_carry__0_i_4_n_0\
    );
w20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2(3),
      I1 => delta_r(3),
      O => w20_carry_i_1_n_0
    );
w20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2(2),
      I1 => delta_r(2),
      O => w20_carry_i_2_n_0
    );
w20_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2(1),
      I1 => delta_r(1),
      O => w20_carry_i_3_n_0
    );
w20_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2(0),
      I1 => delta_r(0),
      O => w20_carry_i_4_n_0
    );
\w2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w20(0),
      I1 => \w2[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(9),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w20_in(0)
    );
\w2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w20(1),
      I1 => \w2[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(10),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w20_in(1)
    );
\w2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w20(2),
      I1 => \w2[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(11),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w20_in(2)
    );
\w2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w20(3),
      I1 => \w2[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(12),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w20_in(3)
    );
\w2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w20(4),
      I1 => \w2[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(13),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w20_in(4)
    );
\w2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w20(5),
      I1 => \w2[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(14),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w20_in(5)
    );
\w2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w20(6),
      I1 => \w2[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(15),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w20_in(6)
    );
\w2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100010003F3F1000"
    )
        port map (
      I0 => \w2[7]_i_3_n_0\,
      I1 => st(2),
      I2 => st(1),
      I3 => st(0),
      I4 => \b_o_reg[7]_0\(0),
      I5 => busy_reg_n_0,
      O => \w2[7]_i_1_n_0\
    );
\w2[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E2F0F0F0F0F0"
    )
        port map (
      I0 => w20(7),
      I1 => \w2[7]_i_3_n_0\,
      I2 => \b_o_reg[7]_0\(16),
      I3 => st(0),
      I4 => st(2),
      I5 => st(1),
      O => w20_in(7)
    );
\w2[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sx2_r,
      I1 => \w2[7]_i_4_n_0\,
      O => \w2[7]_i_3_n_0\
    );
\w2[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => delta_r(7),
      I1 => delta_r(6),
      I2 => delta_r(4),
      I3 => delta_r(5),
      I4 => \w2[7]_i_5_n_0\,
      O => \w2[7]_i_4_n_0\
    );
\w2[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delta_r(1),
      I1 => delta_r(0),
      I2 => delta_r(3),
      I3 => delta_r(2),
      O => \w2[7]_i_5_n_0\
    );
\w2_o[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => w2(0),
      I1 => \b_o_reg[7]_0\(9),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w2_o(0)
    );
\w2_o[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => w2(1),
      I1 => \b_o_reg[7]_0\(10),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w2_o(1)
    );
\w2_o[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => w2(2),
      I1 => \b_o_reg[7]_0\(11),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w2_o(2)
    );
\w2_o[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => w2(3),
      I1 => \b_o_reg[7]_0\(12),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w2_o(3)
    );
\w2_o[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => w2(4),
      I1 => \b_o_reg[7]_0\(13),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w2_o(4)
    );
\w2_o[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => w2(5),
      I1 => \b_o_reg[7]_0\(14),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w2_o(5)
    );
\w2_o[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => w2(6),
      I1 => \b_o_reg[7]_0\(15),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w2_o(6)
    );
\w2_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => w2(7),
      I1 => \b_o_reg[7]_0\(16),
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      O => w2_o(7)
    );
\w2_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w2_o(0),
      Q => data5(8)
    );
\w2_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w2_o(1),
      Q => data5(9)
    );
\w2_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w2_o(2),
      Q => data5(10)
    );
\w2_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w2_o(3),
      Q => data5(11)
    );
\w2_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w2_o(4),
      Q => data5(12)
    );
\w2_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w2_o(5),
      Q => data5(13)
    );
\w2_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w2_o(6),
      Q => data5(14)
    );
\w2_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w1_o[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w2_o(7),
      Q => data5(15)
    );
\w2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w2[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w20_in(0),
      Q => w2(0)
    );
\w2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w2[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w20_in(1),
      Q => w2(1)
    );
\w2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w2[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w20_in(2),
      Q => w2(2)
    );
\w2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w2[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w20_in(3),
      Q => w2(3)
    );
\w2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w2[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w20_in(4),
      Q => w2(4)
    );
\w2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w2[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w20_in(5),
      Q => w2(5)
    );
\w2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w2[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w20_in(6),
      Q => w2(6)
    );
\w2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \w2[7]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => w20_in(7),
      Q => w2(7)
    );
y_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_pred__0_carry__0_n_7\,
      I1 => \s_pred__0_carry__0_n_6\,
      I2 => \s_pred__0_carry_n_5\,
      I3 => \s_pred__0_carry_n_4\,
      I4 => y_i_3_n_0,
      I5 => \s_pred__0_carry__1_n_2\,
      O => step_fn_return
    );
y_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
y_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_pred__0_carry__1_n_7\,
      I1 => \s_pred__0_carry_n_7\,
      I2 => \s_pred__0_carry_n_6\,
      I3 => \s_pred__0_carry__0_n_5\,
      I4 => \s_pred__0_carry__0_n_4\,
      O => y_i_3_n_0
    );
y_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => step_fn_return,
      Q => \^y\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    y : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    x1 : in STD_LOGIC;
    x2 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in9 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal perceptron_inst_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal targets : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_rdata[31]_INST_0\ : label is "soft_lutpair24";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => perceptron_inst_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => perceptron_inst_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => perceptron_inst_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => perceptron_inst_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => state_read(0),
      I4 => state_read(1),
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => perceptron_inst_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => perceptron_inst_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => perceptron_inst_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => perceptron_inst_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF4545"
    )
        port map (
      I0 => state_write(0),
      I1 => s00_axi_wvalid,
      I2 => state_write(1),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => perceptron_inst_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF2AA22F2AAF2AA"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      I2 => s00_axi_wvalid,
      I3 => state_write(1),
      I4 => \axi_awready0__0\,
      I5 => state_write(0),
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => perceptron_inst_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => perceptron_inst_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => perceptron_inst_n_0
    );
perceptron_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_binary_perceptron
     port map (
      Q(4) => \slv_reg0_reg_n_0_[7]\,
      Q(3) => \slv_reg0_reg_n_0_[6]\,
      Q(2 downto 1) => targets(1 downto 0),
      Q(0) => slv_reg0(0),
      \b_o_reg[7]_0\(24 downto 17) => in12(7 downto 0),
      \b_o_reg[7]_0\(16 downto 9) => in9(7 downto 0),
      \b_o_reg[7]_0\(8 downto 1) => in5(7 downto 0),
      \b_o_reg[7]_0\(0) => slv_reg3(0),
      \delta_r_reg[7]_0\(7 downto 0) => slv_reg2(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => perceptron_inst_n_0,
      s00_axi_rdata(15 downto 0) => s00_axi_rdata(15 downto 0),
      s00_axi_rdata_0_sp_1 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      s00_axi_rdata_10_sp_1 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      s00_axi_rdata_11_sp_1 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      s00_axi_rdata_12_sp_1 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      s00_axi_rdata_13_sp_1 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      s00_axi_rdata_14_sp_1 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      s00_axi_rdata_15_sp_1 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      s00_axi_rdata_1_sp_1 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      s00_axi_rdata_2_sp_1 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      s00_axi_rdata_3_sp_1 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      s00_axi_rdata_4_sp_1 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      s00_axi_rdata_5_sp_1 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      s00_axi_rdata_6_sp_1 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      s00_axi_rdata_7_sp_1 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      s00_axi_rdata_8_sp_1 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      s00_axi_rdata_9_sp_1 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      sel0(2 downto 0) => sel0(2 downto 0),
      \st1_carry__0_0\(15 downto 0) => slv_reg1(15 downto 0),
      x1 => x1,
      x2 => x2,
      y => y
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg3(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(0),
      I5 => slv_reg2(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => in5(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[10]\,
      I5 => slv_reg2(10),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => in5(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[11]\,
      I5 => slv_reg2(11),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => in5(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[12]\,
      I5 => slv_reg2(12),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => in5(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[13]\,
      I5 => slv_reg2(13),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => in5(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[14]\,
      I5 => slv_reg2(14),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => in5(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[15]\,
      I5 => slv_reg2(15),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => in9(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[16]\,
      I5 => slv_reg2(16),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => in9(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[17]\,
      I5 => slv_reg2(17),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => in9(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[18]\,
      I5 => slv_reg2(18),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => in9(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[19]\,
      I5 => slv_reg2(19),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => \slv_reg3_reg_n_0_[1]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[1]\,
      I5 => slv_reg2(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => in9(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[20]\,
      I5 => slv_reg2(20),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => in9(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[21]\,
      I5 => slv_reg2(21),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => in9(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[22]\,
      I5 => slv_reg2(22),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => in9(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[23]\,
      I5 => slv_reg2(23),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => in12(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[24]\,
      I5 => slv_reg2(24),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => in12(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[25]\,
      I5 => slv_reg2(25),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => in12(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[26]\,
      I5 => slv_reg2(26),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => in12(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[27]\,
      I5 => slv_reg2(27),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => in12(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[28]\,
      I5 => slv_reg2(28),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => in12(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[29]\,
      I5 => slv_reg2(29),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => \slv_reg3_reg_n_0_[2]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[2]\,
      I5 => slv_reg2(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => in12(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[30]\,
      I5 => slv_reg2(30),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => in12(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[31]\,
      I5 => slv_reg2(31),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => \slv_reg3_reg_n_0_[3]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[3]\,
      I5 => slv_reg2(3),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => \slv_reg3_reg_n_0_[4]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => targets(0),
      I5 => slv_reg2(4),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => \slv_reg3_reg_n_0_[5]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => targets(1),
      I5 => slv_reg2(5),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => \slv_reg3_reg_n_0_[6]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[6]\,
      I5 => slv_reg2(6),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => \slv_reg3_reg_n_0_[7]\,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[7]\,
      I5 => slv_reg2(7),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => in5(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[8]\,
      I5 => slv_reg2(8),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => in5(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[9]\,
      I5 => slv_reg2(9),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(1),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => targets(0),
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => targets(1),
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => perceptron_inst_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => perceptron_inst_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => perceptron_inst_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => perceptron_inst_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => perceptron_inst_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => perceptron_inst_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050300000003000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(1),
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => in5(2),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => in5(3),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => in5(4),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => in5(5),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => in5(6),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => in5(7),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => in9(0),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => in9(1),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => in9(2),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => in9(3),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => in9(4),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => in9(5),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => in9(6),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => in9(7),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => in12(0),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => in12(1),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => in12(2),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => in12(3),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => in12(4),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => in12(5),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => in12(6),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => in12(7),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => in5(0),
      R => perceptron_inst_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => in5(1),
      R => perceptron_inst_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    y : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    x1 : in STD_LOGIC;
    x2 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron is
begin
axi_perceptron_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      x1 => x1,
      x2 => x2,
      y => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    x1 : in STD_LOGIC;
    x2 : in STD_LOGIC;
    y : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_perceptron_0_0,axi_perceptron,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_perceptron,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perceptron
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      x1 => x1,
      x2 => x2,
      y => y
    );
end STRUCTURE;
