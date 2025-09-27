-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Sep 27 03:54:54 2025
-- Host        : Emanuel running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/emari/Desktop/mbv-axi-slave-ip-repo/vivado-axi-pulsegen/vivado-axi-pulsegen.gen/sources_1/bd/design_1/ip/design_1_axi_pulsegen_0_0/design_1_axi_pulsegen_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_pulsegen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_pulsegen_0_0_pulsegen is
  port (
    pulse_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \width_reg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \width_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \period_reg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_pulsegen_0_0_pulsegen : entity is "pulsegen";
end design_1_axi_pulsegen_0_0_pulsegen;

architecture STRUCTURE of design_1_axi_pulsegen_0_0_pulsegen is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal counter0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal counter1 : STD_LOGIC;
  signal \counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_1\ : STD_LOGIC;
  signal \counter1_carry__0_n_2\ : STD_LOGIC;
  signal \counter1_carry__0_n_3\ : STD_LOGIC;
  signal \counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_1\ : STD_LOGIC;
  signal \counter1_carry__1_n_2\ : STD_LOGIC;
  signal \counter1_carry__1_n_3\ : STD_LOGIC;
  signal \counter1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_n_1\ : STD_LOGIC;
  signal \counter1_carry__2_n_2\ : STD_LOGIC;
  signal \counter1_carry__2_n_3\ : STD_LOGIC;
  signal counter1_carry_i_1_n_0 : STD_LOGIC;
  signal counter1_carry_i_2_n_0 : STD_LOGIC;
  signal counter1_carry_i_3_n_0 : STD_LOGIC;
  signal counter1_carry_i_4_n_0 : STD_LOGIC;
  signal counter1_carry_i_5_n_0 : STD_LOGIC;
  signal counter1_carry_i_6_n_0 : STD_LOGIC;
  signal counter1_carry_i_7_n_0 : STD_LOGIC;
  signal counter1_carry_i_8_n_0 : STD_LOGIC;
  signal counter1_carry_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal counter2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_n_1\ : STD_LOGIC;
  signal \counter2_carry__0_n_2\ : STD_LOGIC;
  signal \counter2_carry__0_n_3\ : STD_LOGIC;
  signal \counter2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_n_1\ : STD_LOGIC;
  signal \counter2_carry__1_n_2\ : STD_LOGIC;
  signal \counter2_carry__1_n_3\ : STD_LOGIC;
  signal \counter2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_n_1\ : STD_LOGIC;
  signal \counter2_carry__2_n_2\ : STD_LOGIC;
  signal \counter2_carry__2_n_3\ : STD_LOGIC;
  signal \counter2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__3_n_0\ : STD_LOGIC;
  signal \counter2_carry__3_n_1\ : STD_LOGIC;
  signal \counter2_carry__3_n_2\ : STD_LOGIC;
  signal \counter2_carry__3_n_3\ : STD_LOGIC;
  signal \counter2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__4_n_0\ : STD_LOGIC;
  signal \counter2_carry__4_n_1\ : STD_LOGIC;
  signal \counter2_carry__4_n_2\ : STD_LOGIC;
  signal \counter2_carry__4_n_3\ : STD_LOGIC;
  signal \counter2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__5_n_0\ : STD_LOGIC;
  signal \counter2_carry__5_n_1\ : STD_LOGIC;
  signal \counter2_carry__5_n_2\ : STD_LOGIC;
  signal \counter2_carry__5_n_3\ : STD_LOGIC;
  signal \counter2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__6_n_2\ : STD_LOGIC;
  signal \counter2_carry__6_n_3\ : STD_LOGIC;
  signal counter2_carry_i_1_n_0 : STD_LOGIC;
  signal counter2_carry_i_2_n_0 : STD_LOGIC;
  signal counter2_carry_i_3_n_0 : STD_LOGIC;
  signal counter2_carry_i_4_n_0 : STD_LOGIC;
  signal counter2_carry_n_0 : STD_LOGIC;
  signal counter2_carry_n_1 : STD_LOGIC;
  signal counter2_carry_n_2 : STD_LOGIC;
  signal counter2_carry_n_3 : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal period_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \period_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal period_reg_1 : STD_LOGIC;
  signal \pulse_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__0_n_1\ : STD_LOGIC;
  signal \pulse_out0_carry__0_n_2\ : STD_LOGIC;
  signal \pulse_out0_carry__0_n_3\ : STD_LOGIC;
  signal \pulse_out0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__1_n_1\ : STD_LOGIC;
  signal \pulse_out0_carry__1_n_2\ : STD_LOGIC;
  signal \pulse_out0_carry__1_n_3\ : STD_LOGIC;
  signal \pulse_out0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_n_0\ : STD_LOGIC;
  signal \pulse_out0_carry__2_n_1\ : STD_LOGIC;
  signal \pulse_out0_carry__2_n_2\ : STD_LOGIC;
  signal \pulse_out0_carry__2_n_3\ : STD_LOGIC;
  signal pulse_out0_carry_i_1_n_0 : STD_LOGIC;
  signal pulse_out0_carry_i_2_n_0 : STD_LOGIC;
  signal pulse_out0_carry_i_3_n_0 : STD_LOGIC;
  signal pulse_out0_carry_i_4_n_0 : STD_LOGIC;
  signal pulse_out0_carry_i_5_n_0 : STD_LOGIC;
  signal pulse_out0_carry_i_6_n_0 : STD_LOGIC;
  signal pulse_out0_carry_i_7_n_0 : STD_LOGIC;
  signal pulse_out0_carry_i_8_n_0 : STD_LOGIC;
  signal pulse_out0_carry_n_0 : STD_LOGIC;
  signal pulse_out0_carry_n_1 : STD_LOGIC;
  signal pulse_out0_carry_n_2 : STD_LOGIC;
  signal pulse_out0_carry_n_3 : STD_LOGIC;
  signal pulse_out_i_1_n_0 : STD_LOGIC;
  signal width_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \width_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \width_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \width_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \width_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \width_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \width_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \width_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal width_reg_0 : STD_LOGIC;
  signal NLW_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pulse_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse_out0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse_out0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse_out0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of counter1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter1_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter2_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_2\ : label is 35;
  attribute COMPARATOR_THRESHOLD of pulse_out0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pulse_out0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pulse_out0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pulse_out0_carry__2\ : label is 11;
begin
  SR(0) <= \^sr\(0);
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter1_carry_n_0,
      CO(2) => counter1_carry_n_1,
      CO(1) => counter1_carry_n_2,
      CO(0) => counter1_carry_n_3,
      CYINIT => '0',
      DI(3) => counter1_carry_i_1_n_0,
      DI(2) => counter1_carry_i_2_n_0,
      DI(1) => counter1_carry_i_3_n_0,
      DI(0) => counter1_carry_i_4_n_0,
      O(3 downto 0) => NLW_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter1_carry_i_5_n_0,
      S(2) => counter1_carry_i_6_n_0,
      S(1) => counter1_carry_i_7_n_0,
      S(0) => counter1_carry_i_8_n_0
    );
\counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter1_carry_n_0,
      CO(3) => \counter1_carry__0_n_0\,
      CO(2) => \counter1_carry__0_n_1\,
      CO(1) => \counter1_carry__0_n_2\,
      CO(0) => \counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \counter1_carry__0_i_1_n_0\,
      DI(2) => \counter1_carry__0_i_2_n_0\,
      DI(1) => \counter1_carry__0_i_3_n_0\,
      DI(0) => \counter1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__0_i_5_n_0\,
      S(2) => \counter1_carry__0_i_6_n_0\,
      S(1) => \counter1_carry__0_i_7_n_0\,
      S(0) => \counter1_carry__0_i_8_n_0\
    );
\counter1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(15),
      I1 => counter(15),
      I2 => counter2(14),
      I3 => counter(14),
      O => \counter1_carry__0_i_1_n_0\
    );
\counter1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(13),
      I1 => counter(13),
      I2 => counter2(12),
      I3 => counter(12),
      O => \counter1_carry__0_i_2_n_0\
    );
\counter1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(11),
      I1 => counter(11),
      I2 => counter2(10),
      I3 => counter(10),
      O => \counter1_carry__0_i_3_n_0\
    );
\counter1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(9),
      I1 => counter(9),
      I2 => counter2(8),
      I3 => counter(8),
      O => \counter1_carry__0_i_4_n_0\
    );
\counter1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(15),
      I1 => counter(15),
      I2 => counter2(14),
      I3 => counter(14),
      O => \counter1_carry__0_i_5_n_0\
    );
\counter1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(13),
      I1 => counter(13),
      I2 => counter2(12),
      I3 => counter(12),
      O => \counter1_carry__0_i_6_n_0\
    );
\counter1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(11),
      I1 => counter(11),
      I2 => counter2(10),
      I3 => counter(10),
      O => \counter1_carry__0_i_7_n_0\
    );
\counter1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(9),
      I1 => counter(9),
      I2 => counter2(8),
      I3 => counter(8),
      O => \counter1_carry__0_i_8_n_0\
    );
\counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__0_n_0\,
      CO(3) => \counter1_carry__1_n_0\,
      CO(2) => \counter1_carry__1_n_1\,
      CO(1) => \counter1_carry__1_n_2\,
      CO(0) => \counter1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \counter1_carry__1_i_1_n_0\,
      DI(2) => \counter1_carry__1_i_2_n_0\,
      DI(1) => \counter1_carry__1_i_3_n_0\,
      DI(0) => \counter1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__1_i_5_n_0\,
      S(2) => \counter1_carry__1_i_6_n_0\,
      S(1) => \counter1_carry__1_i_7_n_0\,
      S(0) => \counter1_carry__1_i_8_n_0\
    );
\counter1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(23),
      I1 => counter(23),
      I2 => counter2(22),
      I3 => counter(22),
      O => \counter1_carry__1_i_1_n_0\
    );
\counter1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(21),
      I1 => counter(21),
      I2 => counter2(20),
      I3 => counter(20),
      O => \counter1_carry__1_i_2_n_0\
    );
\counter1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(19),
      I1 => counter(19),
      I2 => counter2(18),
      I3 => counter(18),
      O => \counter1_carry__1_i_3_n_0\
    );
\counter1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(17),
      I1 => counter(17),
      I2 => counter2(16),
      I3 => counter(16),
      O => \counter1_carry__1_i_4_n_0\
    );
\counter1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(23),
      I1 => counter(23),
      I2 => counter2(22),
      I3 => counter(22),
      O => \counter1_carry__1_i_5_n_0\
    );
\counter1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(21),
      I1 => counter(21),
      I2 => counter2(20),
      I3 => counter(20),
      O => \counter1_carry__1_i_6_n_0\
    );
\counter1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(19),
      I1 => counter(19),
      I2 => counter2(18),
      I3 => counter(18),
      O => \counter1_carry__1_i_7_n_0\
    );
\counter1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(17),
      I1 => counter(17),
      I2 => counter2(16),
      I3 => counter(16),
      O => \counter1_carry__1_i_8_n_0\
    );
\counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__1_n_0\,
      CO(3) => counter1,
      CO(2) => \counter1_carry__2_n_1\,
      CO(1) => \counter1_carry__2_n_2\,
      CO(0) => \counter1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \counter1_carry__2_i_1_n_0\,
      DI(2) => \counter1_carry__2_i_2_n_0\,
      DI(1) => \counter1_carry__2_i_3_n_0\,
      DI(0) => \counter1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__2_i_5_n_0\,
      S(2) => \counter1_carry__2_i_6_n_0\,
      S(1) => \counter1_carry__2_i_7_n_0\,
      S(0) => \counter1_carry__2_i_8_n_0\
    );
\counter1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(31),
      I1 => counter(31),
      I2 => counter2(30),
      I3 => counter(30),
      O => \counter1_carry__2_i_1_n_0\
    );
\counter1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(29),
      I1 => counter(29),
      I2 => counter2(28),
      I3 => counter(28),
      O => \counter1_carry__2_i_2_n_0\
    );
\counter1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(27),
      I1 => counter(27),
      I2 => counter2(26),
      I3 => counter(26),
      O => \counter1_carry__2_i_3_n_0\
    );
\counter1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(25),
      I1 => counter(25),
      I2 => counter2(24),
      I3 => counter(24),
      O => \counter1_carry__2_i_4_n_0\
    );
\counter1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(31),
      I1 => counter(31),
      I2 => counter2(30),
      I3 => counter(30),
      O => \counter1_carry__2_i_5_n_0\
    );
\counter1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(29),
      I1 => counter(29),
      I2 => counter2(28),
      I3 => counter(28),
      O => \counter1_carry__2_i_6_n_0\
    );
\counter1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(27),
      I1 => counter(27),
      I2 => counter2(26),
      I3 => counter(26),
      O => \counter1_carry__2_i_7_n_0\
    );
\counter1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(25),
      I1 => counter(25),
      I2 => counter2(24),
      I3 => counter(24),
      O => \counter1_carry__2_i_8_n_0\
    );
counter1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(7),
      I1 => counter(7),
      I2 => counter2(6),
      I3 => counter(6),
      O => counter1_carry_i_1_n_0
    );
counter1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(5),
      I1 => counter(5),
      I2 => counter2(4),
      I3 => counter(4),
      O => counter1_carry_i_2_n_0
    );
counter1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => counter2(3),
      I1 => counter(3),
      I2 => counter2(2),
      I3 => counter(2),
      O => counter1_carry_i_3_n_0
    );
counter1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => counter2(1),
      I1 => counter(1),
      I2 => counter(0),
      I3 => period_reg(0),
      O => counter1_carry_i_4_n_0
    );
counter1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(7),
      I1 => counter(7),
      I2 => counter2(6),
      I3 => counter(6),
      O => counter1_carry_i_5_n_0
    );
counter1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(5),
      I1 => counter(5),
      I2 => counter2(4),
      I3 => counter(4),
      O => counter1_carry_i_6_n_0
    );
counter1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter2(3),
      I1 => counter(3),
      I2 => counter2(2),
      I3 => counter(2),
      O => counter1_carry_i_7_n_0
    );
counter1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => counter(0),
      I1 => period_reg(0),
      I2 => counter2(1),
      I3 => counter(1),
      O => counter1_carry_i_8_n_0
    );
counter2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter2_carry_n_0,
      CO(2) => counter2_carry_n_1,
      CO(1) => counter2_carry_n_2,
      CO(0) => counter2_carry_n_3,
      CYINIT => period_reg(0),
      DI(3 downto 0) => period_reg(4 downto 1),
      O(3 downto 0) => counter2(4 downto 1),
      S(3) => counter2_carry_i_1_n_0,
      S(2) => counter2_carry_i_2_n_0,
      S(1) => counter2_carry_i_3_n_0,
      S(0) => counter2_carry_i_4_n_0
    );
\counter2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter2_carry_n_0,
      CO(3) => \counter2_carry__0_n_0\,
      CO(2) => \counter2_carry__0_n_1\,
      CO(1) => \counter2_carry__0_n_2\,
      CO(0) => \counter2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_reg(8 downto 5),
      O(3 downto 0) => counter2(8 downto 5),
      S(3) => \counter2_carry__0_i_1_n_0\,
      S(2) => \counter2_carry__0_i_2_n_0\,
      S(1) => \counter2_carry__0_i_3_n_0\,
      S(0) => \counter2_carry__0_i_4_n_0\
    );
\counter2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(8),
      O => \counter2_carry__0_i_1_n_0\
    );
\counter2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(7),
      O => \counter2_carry__0_i_2_n_0\
    );
\counter2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(6),
      O => \counter2_carry__0_i_3_n_0\
    );
\counter2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(5),
      O => \counter2_carry__0_i_4_n_0\
    );
\counter2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__0_n_0\,
      CO(3) => \counter2_carry__1_n_0\,
      CO(2) => \counter2_carry__1_n_1\,
      CO(1) => \counter2_carry__1_n_2\,
      CO(0) => \counter2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_reg(12 downto 9),
      O(3 downto 0) => counter2(12 downto 9),
      S(3) => \counter2_carry__1_i_1_n_0\,
      S(2) => \counter2_carry__1_i_2_n_0\,
      S(1) => \counter2_carry__1_i_3_n_0\,
      S(0) => \counter2_carry__1_i_4_n_0\
    );
\counter2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(12),
      O => \counter2_carry__1_i_1_n_0\
    );
\counter2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(11),
      O => \counter2_carry__1_i_2_n_0\
    );
\counter2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(10),
      O => \counter2_carry__1_i_3_n_0\
    );
\counter2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(9),
      O => \counter2_carry__1_i_4_n_0\
    );
\counter2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__1_n_0\,
      CO(3) => \counter2_carry__2_n_0\,
      CO(2) => \counter2_carry__2_n_1\,
      CO(1) => \counter2_carry__2_n_2\,
      CO(0) => \counter2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_reg(16 downto 13),
      O(3 downto 0) => counter2(16 downto 13),
      S(3) => \counter2_carry__2_i_1_n_0\,
      S(2) => \counter2_carry__2_i_2_n_0\,
      S(1) => \counter2_carry__2_i_3_n_0\,
      S(0) => \counter2_carry__2_i_4_n_0\
    );
\counter2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(16),
      O => \counter2_carry__2_i_1_n_0\
    );
\counter2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(15),
      O => \counter2_carry__2_i_2_n_0\
    );
\counter2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(14),
      O => \counter2_carry__2_i_3_n_0\
    );
\counter2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(13),
      O => \counter2_carry__2_i_4_n_0\
    );
\counter2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__2_n_0\,
      CO(3) => \counter2_carry__3_n_0\,
      CO(2) => \counter2_carry__3_n_1\,
      CO(1) => \counter2_carry__3_n_2\,
      CO(0) => \counter2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_reg(20 downto 17),
      O(3 downto 0) => counter2(20 downto 17),
      S(3) => \counter2_carry__3_i_1_n_0\,
      S(2) => \counter2_carry__3_i_2_n_0\,
      S(1) => \counter2_carry__3_i_3_n_0\,
      S(0) => \counter2_carry__3_i_4_n_0\
    );
\counter2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(20),
      O => \counter2_carry__3_i_1_n_0\
    );
\counter2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(19),
      O => \counter2_carry__3_i_2_n_0\
    );
\counter2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(18),
      O => \counter2_carry__3_i_3_n_0\
    );
\counter2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(17),
      O => \counter2_carry__3_i_4_n_0\
    );
\counter2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__3_n_0\,
      CO(3) => \counter2_carry__4_n_0\,
      CO(2) => \counter2_carry__4_n_1\,
      CO(1) => \counter2_carry__4_n_2\,
      CO(0) => \counter2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_reg(24 downto 21),
      O(3 downto 0) => counter2(24 downto 21),
      S(3) => \counter2_carry__4_i_1_n_0\,
      S(2) => \counter2_carry__4_i_2_n_0\,
      S(1) => \counter2_carry__4_i_3_n_0\,
      S(0) => \counter2_carry__4_i_4_n_0\
    );
\counter2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(24),
      O => \counter2_carry__4_i_1_n_0\
    );
\counter2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(23),
      O => \counter2_carry__4_i_2_n_0\
    );
\counter2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(22),
      O => \counter2_carry__4_i_3_n_0\
    );
\counter2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(21),
      O => \counter2_carry__4_i_4_n_0\
    );
\counter2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__4_n_0\,
      CO(3) => \counter2_carry__5_n_0\,
      CO(2) => \counter2_carry__5_n_1\,
      CO(1) => \counter2_carry__5_n_2\,
      CO(0) => \counter2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_reg(28 downto 25),
      O(3 downto 0) => counter2(28 downto 25),
      S(3) => \counter2_carry__5_i_1_n_0\,
      S(2) => \counter2_carry__5_i_2_n_0\,
      S(1) => \counter2_carry__5_i_3_n_0\,
      S(0) => \counter2_carry__5_i_4_n_0\
    );
\counter2_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(28),
      O => \counter2_carry__5_i_1_n_0\
    );
\counter2_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(27),
      O => \counter2_carry__5_i_2_n_0\
    );
\counter2_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(26),
      O => \counter2_carry__5_i_3_n_0\
    );
\counter2_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(25),
      O => \counter2_carry__5_i_4_n_0\
    );
\counter2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_counter2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter2_carry__6_n_2\,
      CO(0) => \counter2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => period_reg(30 downto 29),
      O(3) => \NLW_counter2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => counter2(31 downto 29),
      S(3) => '0',
      S(2) => \counter2_carry__6_i_1_n_0\,
      S(1) => \counter2_carry__6_i_2_n_0\,
      S(0) => \counter2_carry__6_i_3_n_0\
    );
\counter2_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(31),
      O => \counter2_carry__6_i_1_n_0\
    );
\counter2_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(30),
      O => \counter2_carry__6_i_2_n_0\
    );
\counter2_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(29),
      O => \counter2_carry__6_i_3_n_0\
    );
counter2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(4),
      O => counter2_carry_i_1_n_0
    );
counter2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(3),
      O => counter2_carry_i_2_n_0
    );
counter2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(2),
      O => counter2_carry_i_3_n_0
    );
counter2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_reg(1),
      O => counter2_carry_i_4_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter(0),
      O => p_0_in(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(10),
      O => p_0_in(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(11),
      O => p_0_in(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(12),
      O => p_0_in(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(13),
      O => p_0_in(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(14),
      O => p_0_in(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(15),
      O => p_0_in(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(16),
      O => p_0_in(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(17),
      O => p_0_in(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(18),
      O => p_0_in(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(19),
      O => p_0_in(19)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(1),
      O => p_0_in(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(20),
      O => p_0_in(20)
    );
\counter[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(21),
      O => p_0_in(21)
    );
\counter[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(22),
      O => p_0_in(22)
    );
\counter[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(23),
      O => p_0_in(23)
    );
\counter[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(24),
      O => p_0_in(24)
    );
\counter[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(25),
      O => p_0_in(25)
    );
\counter[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(26),
      O => p_0_in(26)
    );
\counter[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(27),
      O => p_0_in(27)
    );
\counter[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(28),
      O => p_0_in(28)
    );
\counter[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(29),
      O => p_0_in(29)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(2),
      O => p_0_in(2)
    );
\counter[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(30),
      O => p_0_in(30)
    );
\counter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(31),
      O => p_0_in(31)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(3),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(4),
      O => p_0_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(5),
      O => p_0_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(6),
      O => p_0_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(7),
      O => p_0_in(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(8),
      O => p_0_in(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => counter1,
      I2 => counter0(9),
      O => p_0_in(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(12),
      Q => counter(12)
    );
\counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_2_n_0\,
      CO(3) => \counter_reg[12]_i_2_n_0\,
      CO(2) => \counter_reg[12]_i_2_n_1\,
      CO(1) => \counter_reg[12]_i_2_n_2\,
      CO(0) => \counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(16),
      Q => counter(16)
    );
\counter_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_2_n_0\,
      CO(3) => \counter_reg[16]_i_2_n_0\,
      CO(2) => \counter_reg[16]_i_2_n_1\,
      CO(1) => \counter_reg[16]_i_2_n_2\,
      CO(0) => \counter_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(19),
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(1),
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(20),
      Q => counter(20)
    );
\counter_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_2_n_0\,
      CO(3) => \counter_reg[20]_i_2_n_0\,
      CO(2) => \counter_reg[20]_i_2_n_1\,
      CO(1) => \counter_reg[20]_i_2_n_2\,
      CO(0) => \counter_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter0(20 downto 17),
      S(3 downto 0) => counter(20 downto 17)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(21),
      Q => counter(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(22),
      Q => counter(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(23),
      Q => counter(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(24),
      Q => counter(24)
    );
\counter_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_2_n_0\,
      CO(3) => \counter_reg[24]_i_2_n_0\,
      CO(2) => \counter_reg[24]_i_2_n_1\,
      CO(1) => \counter_reg[24]_i_2_n_2\,
      CO(0) => \counter_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter0(24 downto 21),
      S(3 downto 0) => counter(24 downto 21)
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(25),
      Q => counter(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(26),
      Q => counter(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(27),
      Q => counter(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(28),
      Q => counter(28)
    );
\counter_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_2_n_0\,
      CO(3) => \counter_reg[28]_i_2_n_0\,
      CO(2) => \counter_reg[28]_i_2_n_1\,
      CO(1) => \counter_reg[28]_i_2_n_2\,
      CO(0) => \counter_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter0(28 downto 25),
      S(3 downto 0) => counter(28 downto 25)
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(29),
      Q => counter(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(2),
      Q => counter(2)
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(30),
      Q => counter(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(31),
      Q => counter(31)
    );
\counter_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[31]_i_2_n_2\,
      CO(0) => \counter_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => counter0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => counter(31 downto 29)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(4),
      Q => counter(4)
    );
\counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_2_n_0\,
      CO(2) => \counter_reg[4]_i_2_n_1\,
      CO(1) => \counter_reg[4]_i_2_n_2\,
      CO(0) => \counter_reg[4]_i_2_n_3\,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(8),
      Q => counter(8)
    );
\counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_2_n_0\,
      CO(3) => \counter_reg[8]_i_2_n_0\,
      CO(2) => \counter_reg[8]_i_2_n_1\,
      CO(1) => \counter_reg[8]_i_2_n_2\,
      CO(0) => \counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => p_0_in(9),
      Q => counter(9)
    );
\period_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => \period_reg[31]_i_3_n_0\,
      I2 => \period_reg[31]_i_4_n_0\,
      I3 => \period_reg[31]_i_5_n_0\,
      O => period_reg_1
    );
\period_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \period_reg_reg[31]_0\(2),
      I1 => \period_reg_reg[31]_0\(5),
      I2 => \period_reg_reg[31]_0\(6),
      I3 => \period_reg_reg[31]_0\(4),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \period_reg_reg[31]_0\(3),
      O => \period_reg[31]_i_2_n_0\
    );
\period_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \period_reg_reg[31]_0\(7),
      I1 => \period_reg_reg[31]_0\(10),
      I2 => \period_reg_reg[31]_0\(11),
      I3 => \period_reg_reg[31]_0\(9),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \period_reg_reg[31]_0\(8),
      O => \period_reg[31]_i_3_n_0\
    );
\period_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \period_reg_reg[31]_0\(12),
      I1 => \period_reg_reg[31]_0\(15),
      I2 => \period_reg_reg[31]_0\(16),
      I3 => \period_reg_reg[31]_0\(14),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \period_reg_reg[31]_0\(13),
      O => \period_reg[31]_i_4_n_0\
    );
\period_reg[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFCFFFC"
    )
        port map (
      I0 => \period_reg_reg[31]_0\(0),
      I1 => \period_reg[31]_i_6_n_0\,
      I2 => \period_reg[31]_i_7_n_0\,
      I3 => \period_reg[31]_i_8_n_0\,
      I4 => \period_reg_reg[31]_0\(1),
      I5 => \width_reg_reg[0]_0\(0),
      O => \period_reg[31]_i_5_n_0\
    );
\period_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \period_reg_reg[31]_0\(22),
      I1 => \period_reg_reg[31]_0\(25),
      I2 => \period_reg_reg[31]_0\(26),
      I3 => \period_reg_reg[31]_0\(24),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \period_reg_reg[31]_0\(23),
      O => \period_reg[31]_i_6_n_0\
    );
\period_reg[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \period_reg_reg[31]_0\(27),
      I1 => \period_reg_reg[31]_0\(30),
      I2 => \period_reg_reg[31]_0\(31),
      I3 => \period_reg_reg[31]_0\(29),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \period_reg_reg[31]_0\(28),
      O => \period_reg[31]_i_7_n_0\
    );
\period_reg[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \period_reg_reg[31]_0\(17),
      I1 => \period_reg_reg[31]_0\(20),
      I2 => \period_reg_reg[31]_0\(21),
      I3 => \period_reg_reg[31]_0\(19),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \period_reg_reg[31]_0\(18),
      O => \period_reg[31]_i_8_n_0\
    );
\period_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(0),
      Q => period_reg(0)
    );
\period_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(10),
      Q => period_reg(10)
    );
\period_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(11),
      Q => period_reg(11)
    );
\period_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(12),
      Q => period_reg(12)
    );
\period_reg_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(13),
      PRE => \^sr\(0),
      Q => period_reg(13)
    );
\period_reg_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(14),
      PRE => \^sr\(0),
      Q => period_reg(14)
    );
\period_reg_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(15),
      PRE => \^sr\(0),
      Q => period_reg(15)
    );
\period_reg_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(16),
      PRE => \^sr\(0),
      Q => period_reg(16)
    );
\period_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(17),
      Q => period_reg(17)
    );
\period_reg_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(18),
      PRE => \^sr\(0),
      Q => period_reg(18)
    );
\period_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(19),
      Q => period_reg(19)
    );
\period_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(1),
      Q => period_reg(1)
    );
\period_reg_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(20),
      PRE => \^sr\(0),
      Q => period_reg(20)
    );
\period_reg_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(21),
      PRE => \^sr\(0),
      Q => period_reg(21)
    );
\period_reg_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(22),
      PRE => \^sr\(0),
      Q => period_reg(22)
    );
\period_reg_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(23),
      PRE => \^sr\(0),
      Q => period_reg(23)
    );
\period_reg_reg[24]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(24),
      PRE => \^sr\(0),
      Q => period_reg(24)
    );
\period_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(25),
      Q => period_reg(25)
    );
\period_reg_reg[26]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(26),
      PRE => \^sr\(0),
      Q => period_reg(26)
    );
\period_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(27),
      Q => period_reg(27)
    );
\period_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(28),
      Q => period_reg(28)
    );
\period_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(29),
      Q => period_reg(29)
    );
\period_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(2),
      Q => period_reg(2)
    );
\period_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(30),
      Q => period_reg(30)
    );
\period_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(31),
      Q => period_reg(31)
    );
\period_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(3),
      Q => period_reg(3)
    );
\period_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(4),
      Q => period_reg(4)
    );
\period_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(5),
      Q => period_reg(5)
    );
\period_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(6),
      Q => period_reg(6)
    );
\period_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(7),
      Q => period_reg(7)
    );
\period_reg_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      D => \period_reg_reg[31]_0\(8),
      PRE => \^sr\(0),
      Q => period_reg(8)
    );
\period_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => period_reg_1,
      CLR => \^sr\(0),
      D => \period_reg_reg[31]_0\(9),
      Q => period_reg(9)
    );
pulse_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pulse_out0_carry_n_0,
      CO(2) => pulse_out0_carry_n_1,
      CO(1) => pulse_out0_carry_n_2,
      CO(0) => pulse_out0_carry_n_3,
      CYINIT => '0',
      DI(3) => pulse_out0_carry_i_1_n_0,
      DI(2) => pulse_out0_carry_i_2_n_0,
      DI(1) => pulse_out0_carry_i_3_n_0,
      DI(0) => pulse_out0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pulse_out0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pulse_out0_carry_i_5_n_0,
      S(2) => pulse_out0_carry_i_6_n_0,
      S(1) => pulse_out0_carry_i_7_n_0,
      S(0) => pulse_out0_carry_i_8_n_0
    );
\pulse_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pulse_out0_carry_n_0,
      CO(3) => \pulse_out0_carry__0_n_0\,
      CO(2) => \pulse_out0_carry__0_n_1\,
      CO(1) => \pulse_out0_carry__0_n_2\,
      CO(0) => \pulse_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pulse_out0_carry__0_i_1_n_0\,
      DI(2) => \pulse_out0_carry__0_i_2_n_0\,
      DI(1) => \pulse_out0_carry__0_i_3_n_0\,
      DI(0) => \pulse_out0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pulse_out0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pulse_out0_carry__0_i_5_n_0\,
      S(2) => \pulse_out0_carry__0_i_6_n_0\,
      S(1) => \pulse_out0_carry__0_i_7_n_0\,
      S(0) => \pulse_out0_carry__0_i_8_n_0\
    );
\pulse_out0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(15),
      I1 => counter(15),
      I2 => width_reg(14),
      I3 => counter(14),
      O => \pulse_out0_carry__0_i_1_n_0\
    );
\pulse_out0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(13),
      I1 => counter(13),
      I2 => width_reg(12),
      I3 => counter(12),
      O => \pulse_out0_carry__0_i_2_n_0\
    );
\pulse_out0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(11),
      I1 => counter(11),
      I2 => width_reg(10),
      I3 => counter(10),
      O => \pulse_out0_carry__0_i_3_n_0\
    );
\pulse_out0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(9),
      I1 => counter(9),
      I2 => width_reg(8),
      I3 => counter(8),
      O => \pulse_out0_carry__0_i_4_n_0\
    );
\pulse_out0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(15),
      I1 => counter(15),
      I2 => width_reg(14),
      I3 => counter(14),
      O => \pulse_out0_carry__0_i_5_n_0\
    );
\pulse_out0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(13),
      I1 => counter(13),
      I2 => width_reg(12),
      I3 => counter(12),
      O => \pulse_out0_carry__0_i_6_n_0\
    );
\pulse_out0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(11),
      I1 => counter(11),
      I2 => width_reg(10),
      I3 => counter(10),
      O => \pulse_out0_carry__0_i_7_n_0\
    );
\pulse_out0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(9),
      I1 => counter(9),
      I2 => width_reg(8),
      I3 => counter(8),
      O => \pulse_out0_carry__0_i_8_n_0\
    );
\pulse_out0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_out0_carry__0_n_0\,
      CO(3) => \pulse_out0_carry__1_n_0\,
      CO(2) => \pulse_out0_carry__1_n_1\,
      CO(1) => \pulse_out0_carry__1_n_2\,
      CO(0) => \pulse_out0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \pulse_out0_carry__1_i_1_n_0\,
      DI(2) => \pulse_out0_carry__1_i_2_n_0\,
      DI(1) => \pulse_out0_carry__1_i_3_n_0\,
      DI(0) => \pulse_out0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_pulse_out0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pulse_out0_carry__1_i_5_n_0\,
      S(2) => \pulse_out0_carry__1_i_6_n_0\,
      S(1) => \pulse_out0_carry__1_i_7_n_0\,
      S(0) => \pulse_out0_carry__1_i_8_n_0\
    );
\pulse_out0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(23),
      I1 => counter(23),
      I2 => width_reg(22),
      I3 => counter(22),
      O => \pulse_out0_carry__1_i_1_n_0\
    );
\pulse_out0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(21),
      I1 => counter(21),
      I2 => width_reg(20),
      I3 => counter(20),
      O => \pulse_out0_carry__1_i_2_n_0\
    );
\pulse_out0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(19),
      I1 => counter(19),
      I2 => width_reg(18),
      I3 => counter(18),
      O => \pulse_out0_carry__1_i_3_n_0\
    );
\pulse_out0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(17),
      I1 => counter(17),
      I2 => width_reg(16),
      I3 => counter(16),
      O => \pulse_out0_carry__1_i_4_n_0\
    );
\pulse_out0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(23),
      I1 => counter(23),
      I2 => width_reg(22),
      I3 => counter(22),
      O => \pulse_out0_carry__1_i_5_n_0\
    );
\pulse_out0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(21),
      I1 => counter(21),
      I2 => width_reg(20),
      I3 => counter(20),
      O => \pulse_out0_carry__1_i_6_n_0\
    );
\pulse_out0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(19),
      I1 => counter(19),
      I2 => width_reg(18),
      I3 => counter(18),
      O => \pulse_out0_carry__1_i_7_n_0\
    );
\pulse_out0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(17),
      I1 => counter(17),
      I2 => width_reg(16),
      I3 => counter(16),
      O => \pulse_out0_carry__1_i_8_n_0\
    );
\pulse_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_out0_carry__1_n_0\,
      CO(3) => \pulse_out0_carry__2_n_0\,
      CO(2) => \pulse_out0_carry__2_n_1\,
      CO(1) => \pulse_out0_carry__2_n_2\,
      CO(0) => \pulse_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \pulse_out0_carry__2_i_1_n_0\,
      DI(2) => \pulse_out0_carry__2_i_2_n_0\,
      DI(1) => \pulse_out0_carry__2_i_3_n_0\,
      DI(0) => \pulse_out0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_pulse_out0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pulse_out0_carry__2_i_5_n_0\,
      S(2) => \pulse_out0_carry__2_i_6_n_0\,
      S(1) => \pulse_out0_carry__2_i_7_n_0\,
      S(0) => \pulse_out0_carry__2_i_8_n_0\
    );
\pulse_out0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(31),
      I1 => counter(31),
      I2 => width_reg(30),
      I3 => counter(30),
      O => \pulse_out0_carry__2_i_1_n_0\
    );
\pulse_out0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(29),
      I1 => counter(29),
      I2 => width_reg(28),
      I3 => counter(28),
      O => \pulse_out0_carry__2_i_2_n_0\
    );
\pulse_out0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(27),
      I1 => counter(27),
      I2 => width_reg(26),
      I3 => counter(26),
      O => \pulse_out0_carry__2_i_3_n_0\
    );
\pulse_out0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(25),
      I1 => counter(25),
      I2 => width_reg(24),
      I3 => counter(24),
      O => \pulse_out0_carry__2_i_4_n_0\
    );
\pulse_out0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(31),
      I1 => counter(31),
      I2 => width_reg(30),
      I3 => counter(30),
      O => \pulse_out0_carry__2_i_5_n_0\
    );
\pulse_out0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(29),
      I1 => counter(29),
      I2 => width_reg(28),
      I3 => counter(28),
      O => \pulse_out0_carry__2_i_6_n_0\
    );
\pulse_out0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(27),
      I1 => counter(27),
      I2 => width_reg(26),
      I3 => counter(26),
      O => \pulse_out0_carry__2_i_7_n_0\
    );
\pulse_out0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(25),
      I1 => counter(25),
      I2 => width_reg(24),
      I3 => counter(24),
      O => \pulse_out0_carry__2_i_8_n_0\
    );
pulse_out0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(7),
      I1 => counter(7),
      I2 => width_reg(6),
      I3 => counter(6),
      O => pulse_out0_carry_i_1_n_0
    );
pulse_out0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(5),
      I1 => counter(5),
      I2 => width_reg(4),
      I3 => counter(4),
      O => pulse_out0_carry_i_2_n_0
    );
pulse_out0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(3),
      I1 => counter(3),
      I2 => width_reg(2),
      I3 => counter(2),
      O => pulse_out0_carry_i_3_n_0
    );
pulse_out0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => width_reg(1),
      I1 => counter(1),
      I2 => width_reg(0),
      I3 => counter(0),
      O => pulse_out0_carry_i_4_n_0
    );
pulse_out0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(7),
      I1 => counter(7),
      I2 => width_reg(6),
      I3 => counter(6),
      O => pulse_out0_carry_i_5_n_0
    );
pulse_out0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(5),
      I1 => counter(5),
      I2 => width_reg(4),
      I3 => counter(4),
      O => pulse_out0_carry_i_6_n_0
    );
pulse_out0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(3),
      I1 => counter(3),
      I2 => width_reg(2),
      I3 => counter(2),
      O => pulse_out0_carry_i_7_n_0
    );
pulse_out0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_reg(1),
      I1 => counter(1),
      I2 => width_reg(0),
      I3 => counter(0),
      O => pulse_out0_carry_i_8_n_0
    );
pulse_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \pulse_out0_carry__2_n_0\,
      O => pulse_out_i_1_n_0
    );
pulse_out_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
pulse_out_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => pulse_out_i_1_n_0,
      Q => pulse_out
    );
\width_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \width_reg[31]_i_2_n_0\,
      I1 => \width_reg[31]_i_3_n_0\,
      I2 => \width_reg[31]_i_4_n_0\,
      I3 => \width_reg[31]_i_5_n_0\,
      O => width_reg_0
    );
\width_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \width_reg_reg[31]_0\(2),
      I1 => \width_reg_reg[31]_0\(5),
      I2 => \width_reg_reg[31]_0\(6),
      I3 => \width_reg_reg[31]_0\(4),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \width_reg_reg[31]_0\(3),
      O => \width_reg[31]_i_2_n_0\
    );
\width_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \width_reg_reg[31]_0\(7),
      I1 => \width_reg_reg[31]_0\(10),
      I2 => \width_reg_reg[31]_0\(11),
      I3 => \width_reg_reg[31]_0\(9),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \width_reg_reg[31]_0\(8),
      O => \width_reg[31]_i_3_n_0\
    );
\width_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \width_reg_reg[31]_0\(12),
      I1 => \width_reg_reg[31]_0\(15),
      I2 => \width_reg_reg[31]_0\(16),
      I3 => \width_reg_reg[31]_0\(14),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \width_reg_reg[31]_0\(13),
      O => \width_reg[31]_i_4_n_0\
    );
\width_reg[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFFFEFFFC"
    )
        port map (
      I0 => \width_reg_reg[31]_0\(0),
      I1 => \width_reg[31]_i_6_n_0\,
      I2 => \width_reg[31]_i_7_n_0\,
      I3 => \width_reg[31]_i_8_n_0\,
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \width_reg_reg[31]_0\(1),
      O => \width_reg[31]_i_5_n_0\
    );
\width_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \width_reg_reg[31]_0\(22),
      I1 => \width_reg_reg[31]_0\(25),
      I2 => \width_reg_reg[31]_0\(26),
      I3 => \width_reg_reg[31]_0\(24),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \width_reg_reg[31]_0\(23),
      O => \width_reg[31]_i_6_n_0\
    );
\width_reg[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \width_reg_reg[31]_0\(27),
      I1 => \width_reg_reg[31]_0\(30),
      I2 => \width_reg_reg[31]_0\(31),
      I3 => \width_reg_reg[31]_0\(29),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \width_reg_reg[31]_0\(28),
      O => \width_reg[31]_i_7_n_0\
    );
\width_reg[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \width_reg_reg[31]_0\(17),
      I1 => \width_reg_reg[31]_0\(20),
      I2 => \width_reg_reg[31]_0\(21),
      I3 => \width_reg_reg[31]_0\(19),
      I4 => \width_reg_reg[0]_0\(0),
      I5 => \width_reg_reg[31]_0\(18),
      O => \width_reg[31]_i_8_n_0\
    );
\width_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(0),
      Q => width_reg(0)
    );
\width_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(10),
      Q => width_reg(10)
    );
\width_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(11),
      Q => width_reg(11)
    );
\width_reg_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(12),
      PRE => \^sr\(0),
      Q => width_reg(12)
    );
\width_reg_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(13),
      PRE => \^sr\(0),
      Q => width_reg(13)
    );
\width_reg_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(14),
      PRE => \^sr\(0),
      Q => width_reg(14)
    );
\width_reg_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(15),
      PRE => \^sr\(0),
      Q => width_reg(15)
    );
\width_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(16),
      Q => width_reg(16)
    );
\width_reg_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(17),
      PRE => \^sr\(0),
      Q => width_reg(17)
    );
\width_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(18),
      Q => width_reg(18)
    );
\width_reg_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(19),
      PRE => \^sr\(0),
      Q => width_reg(19)
    );
\width_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(1),
      Q => width_reg(1)
    );
\width_reg_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(20),
      PRE => \^sr\(0),
      Q => width_reg(20)
    );
\width_reg_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(21),
      PRE => \^sr\(0),
      Q => width_reg(21)
    );
\width_reg_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(22),
      PRE => \^sr\(0),
      Q => width_reg(22)
    );
\width_reg_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(23),
      PRE => \^sr\(0),
      Q => width_reg(23)
    );
\width_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(24),
      Q => width_reg(24)
    );
\width_reg_reg[25]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(25),
      PRE => \^sr\(0),
      Q => width_reg(25)
    );
\width_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(26),
      Q => width_reg(26)
    );
\width_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(27),
      Q => width_reg(27)
    );
\width_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(28),
      Q => width_reg(28)
    );
\width_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(29),
      Q => width_reg(29)
    );
\width_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(2),
      Q => width_reg(2)
    );
\width_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(30),
      Q => width_reg(30)
    );
\width_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(31),
      Q => width_reg(31)
    );
\width_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(3),
      Q => width_reg(3)
    );
\width_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(4),
      Q => width_reg(4)
    );
\width_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(5),
      Q => width_reg(5)
    );
\width_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(6),
      Q => width_reg(6)
    );
\width_reg_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      D => \width_reg_reg[31]_0\(7),
      PRE => \^sr\(0),
      Q => width_reg(7)
    );
\width_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(8),
      Q => width_reg(8)
    );
\width_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => width_reg_0,
      CLR => \^sr\(0),
      D => \width_reg_reg[31]_0\(9),
      Q => width_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_pulsegen_0_0_axi_pulsegen_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    pulse_out : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_pulsegen_0_0_axi_pulsegen_slave_lite_v1_0_S00_AXI : entity is "axi_pulsegen_slave_lite_v1_0_S00_AXI";
end design_1_axi_pulsegen_0_0_axi_pulsegen_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of design_1_axi_pulsegen_0_0_axi_pulsegen_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal pulsegen_inst_n_1 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
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
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair17";
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
      R => pulsegen_inst_n_1
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => pulsegen_inst_n_1
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
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
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
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
      R => pulsegen_inst_n_1
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => pulsegen_inst_n_1
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_aresetn,
      I2 => axi_arready0,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_aresetn,
      I2 => axi_arready0,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
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
      R => pulsegen_inst_n_1
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => state_write(1),
      I2 => state_write(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
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
      I2 => state_write(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => pulsegen_inst_n_1
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => pulsegen_inst_n_1
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC4FFCF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(1),
      I3 => s00_axi_wvalid,
      I4 => state_write(0),
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => pulsegen_inst_n_1
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF3838C3FF0000"
    )
        port map (
      I0 => \axi_awready0__0\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_wvalid,
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
      R => pulsegen_inst_n_1
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
      R => pulsegen_inst_n_1
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
      R => pulsegen_inst_n_1
    );
pulsegen_inst: entity work.design_1_axi_pulsegen_0_0_pulsegen
     port map (
      Q(0) => slv_reg0(0),
      SR(0) => pulsegen_inst_n_1,
      \period_reg_reg[31]_0\(31 downto 0) => slv_reg2(31 downto 0),
      pulse_out => pulse_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \width_reg_reg[0]_0\(0) => slv_reg1(0),
      \width_reg_reg[31]_0\(31 downto 0) => slv_reg3(31 downto 0)
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(0),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => slv_reg1(0),
      I4 => slv_reg3(0),
      I5 => slv_reg0(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(10),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[10]\,
      I4 => slv_reg3(10),
      I5 => \slv_reg0_reg_n_0_[10]\,
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(11),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[11]\,
      I4 => slv_reg3(11),
      I5 => \slv_reg0_reg_n_0_[11]\,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(12),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[12]\,
      I4 => slv_reg3(12),
      I5 => \slv_reg0_reg_n_0_[12]\,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(13),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[13]\,
      I4 => slv_reg3(13),
      I5 => \slv_reg0_reg_n_0_[13]\,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(14),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[14]\,
      I4 => slv_reg3(14),
      I5 => \slv_reg0_reg_n_0_[14]\,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(15),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[15]\,
      I4 => slv_reg3(15),
      I5 => \slv_reg0_reg_n_0_[15]\,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(16),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[16]\,
      I4 => slv_reg3(16),
      I5 => \slv_reg0_reg_n_0_[16]\,
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(17),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[17]\,
      I4 => slv_reg3(17),
      I5 => \slv_reg0_reg_n_0_[17]\,
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(18),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[18]\,
      I4 => slv_reg3(18),
      I5 => \slv_reg0_reg_n_0_[18]\,
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(19),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[19]\,
      I4 => slv_reg3(19),
      I5 => \slv_reg0_reg_n_0_[19]\,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(1),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[1]\,
      I4 => slv_reg3(1),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(20),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[20]\,
      I4 => slv_reg3(20),
      I5 => \slv_reg0_reg_n_0_[20]\,
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(21),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[21]\,
      I4 => slv_reg3(21),
      I5 => \slv_reg0_reg_n_0_[21]\,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(22),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[22]\,
      I4 => slv_reg3(22),
      I5 => \slv_reg0_reg_n_0_[22]\,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(23),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[23]\,
      I4 => slv_reg3(23),
      I5 => \slv_reg0_reg_n_0_[23]\,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(24),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[24]\,
      I4 => slv_reg3(24),
      I5 => \slv_reg0_reg_n_0_[24]\,
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(25),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[25]\,
      I4 => slv_reg3(25),
      I5 => \slv_reg0_reg_n_0_[25]\,
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(26),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[26]\,
      I4 => slv_reg3(26),
      I5 => \slv_reg0_reg_n_0_[26]\,
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(27),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[27]\,
      I4 => slv_reg3(27),
      I5 => \slv_reg0_reg_n_0_[27]\,
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(28),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[28]\,
      I4 => slv_reg3(28),
      I5 => \slv_reg0_reg_n_0_[28]\,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(29),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[29]\,
      I4 => slv_reg3(29),
      I5 => \slv_reg0_reg_n_0_[29]\,
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[2]\,
      I4 => slv_reg3(2),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(30),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[30]\,
      I4 => slv_reg3(30),
      I5 => \slv_reg0_reg_n_0_[30]\,
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[31]\,
      I4 => slv_reg3(31),
      I5 => \slv_reg0_reg_n_0_[31]\,
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[3]\,
      I4 => slv_reg3(3),
      I5 => \slv_reg0_reg_n_0_[3]\,
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[4]\,
      I4 => slv_reg3(4),
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(5),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[5]\,
      I4 => slv_reg3(5),
      I5 => \slv_reg0_reg_n_0_[5]\,
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(6),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[6]\,
      I4 => slv_reg3(6),
      I5 => \slv_reg0_reg_n_0_[6]\,
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(7),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[7]\,
      I4 => slv_reg3(7),
      I5 => \slv_reg0_reg_n_0_[7]\,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(8),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[8]\,
      I4 => slv_reg3(8),
      I5 => \slv_reg0_reg_n_0_[8]\,
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => slv_reg2(9),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => slv_reg3(9),
      I5 => \slv_reg0_reg_n_0_[9]\,
      O => s00_axi_rdata(9)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => pulsegen_inst_n_1
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(1),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(2),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(3),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(0),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => pulsegen_inst_n_1
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => pulsegen_inst_n_1
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg3[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => pulsegen_inst_n_1
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => pulsegen_inst_n_1
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => \slv_reg3[31]_i_2_n_0\,
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => \slv_reg3[31]_i_2_n_0\,
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => \slv_reg3[31]_i_2_n_0\,
      O => p_1_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => \slv_reg3[31]_i_2_n_0\,
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => pulsegen_inst_n_1
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => pulsegen_inst_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_pulsegen_0_0_axi_pulsegen is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    pulse_out : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_pulsegen_0_0_axi_pulsegen : entity is "axi_pulsegen";
end design_1_axi_pulsegen_0_0_axi_pulsegen;

architecture STRUCTURE of design_1_axi_pulsegen_0_0_axi_pulsegen is
begin
axi_pulsegen_slave_lite_v1_0_S00_AXI_inst: entity work.design_1_axi_pulsegen_0_0_axi_pulsegen_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      pulse_out => pulse_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_pulsegen_0_0 is
  port (
    pulse_out : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_pulsegen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_pulsegen_0_0 : entity is "design_1_axi_pulsegen_0_0,axi_pulsegen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_pulsegen_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_pulsegen_0_0 : entity is "axi_pulsegen,Vivado 2025.1";
end design_1_axi_pulsegen_0_0;

architecture STRUCTURE of design_1_axi_pulsegen_0_0 is
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
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
inst: entity work.design_1_axi_pulsegen_0_0_axi_pulsegen
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      pulse_out => pulse_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
