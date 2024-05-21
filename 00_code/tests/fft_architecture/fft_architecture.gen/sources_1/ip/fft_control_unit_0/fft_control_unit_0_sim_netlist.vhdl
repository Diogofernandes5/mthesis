-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue May 21 12:23:10 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/tests/fft_architecture/fft_architecture.gen/sources_1/ip/fft_control_unit_0/fft_control_unit_0_sim_netlist.vhdl
-- Design      : fft_control_unit_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_0_control_unit is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    start_i : in STD_LOGIC;
    src_sel_o : out STD_LOGIC;
    fft_ready_o : out STD_LOGIC;
    bram_we_o : out STD_LOGIC;
    bram_en_o : out STD_LOGIC;
    bf_ce_o : out STD_LOGIC;
    bram_addr_o : out STD_LOGIC_VECTOR ( 10 downto 0 );
    twiddle_addr_o : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute BRAM_SIZE : string;
  attribute BRAM_SIZE of fft_control_unit_0_control_unit : entity is "10'b1000000000";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_0_control_unit : entity is "control_unit";
  attribute S_BF_OPERATION : string;
  attribute S_BF_OPERATION of fft_control_unit_0_control_unit : entity is "3'b100";
  attribute S_CHECK_BF_COUNTER : string;
  attribute S_CHECK_BF_COUNTER of fft_control_unit_0_control_unit : entity is "3'b010";
  attribute S_IDLE : string;
  attribute S_IDLE of fft_control_unit_0_control_unit : entity is "3'b000";
  attribute S_READ_MEMORY : string;
  attribute S_READ_MEMORY of fft_control_unit_0_control_unit : entity is "3'b011";
  attribute S_SEND_RESULTS : string;
  attribute S_SEND_RESULTS of fft_control_unit_0_control_unit : entity is "3'b110";
  attribute S_STORE_INPUTS : string;
  attribute S_STORE_INPUTS of fft_control_unit_0_control_unit : entity is "3'b001";
  attribute S_WRITE_BACK : string;
  attribute S_WRITE_BACK of fft_control_unit_0_control_unit : entity is "3'b101";
end fft_control_unit_0_control_unit;

architecture STRUCTURE of fft_control_unit_0_control_unit is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal bf_counter : STD_LOGIC;
  signal \bf_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \bf_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \bf_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \bf_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \bf_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \cycle_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal cycle_delay_i_1_n_0 : STD_LOGIC;
  signal cycle_delay_reg_n_0 : STD_LOGIC;
  signal data_counter : STD_LOGIC;
  signal \data_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal fft_ready_o_i_1_n_0 : STD_LOGIC;
  signal fft_ready_o_i_2_n_0 : STD_LOGIC;
  signal fft_ready_o_i_3_n_0 : STD_LOGIC;
  signal nstate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_11\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_inv_i_1\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S_STORE_INPUTS:001,S_READ_MEMORY:100,S_CHECK_BF_COUNTER:010,S_BF_OPERATION:101,S_WRITE_BACK:110,S_SEND_RESULTS:011,S_IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S_STORE_INPUTS:001,S_READ_MEMORY:100,S_CHECK_BF_COUNTER:010,S_BF_OPERATION:101,S_WRITE_BACK:110,S_SEND_RESULTS:011,S_IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]_inv\ : label is "S_STORE_INPUTS:001,S_READ_MEMORY:100,S_CHECK_BF_COUNTER:010,S_BF_OPERATION:101,S_WRITE_BACK:110,S_SEND_RESULTS:011,S_IDLE:000";
  attribute inverted : string;
  attribute inverted of \FSM_sequential_state_reg[2]_inv\ : label is "yes";
  attribute SOFT_HLUTNM of \bf_counter[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bf_counter[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bf_counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bf_counter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bf_counter[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bf_counter[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bf_counter[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bf_counter[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bf_counter[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bram_addr_o[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bram_addr_o[10]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bram_addr_o[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_addr_o[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_addr_o[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bram_addr_o[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bram_addr_o[5]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bram_addr_o[6]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bram_addr_o[7]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bram_addr_o[8]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bram_addr_o[9]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of bram_we_o_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cycle_counter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cycle_counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of cycle_delay_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_counter[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_counter[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_counter[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_counter[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_counter[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_counter[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_counter[7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_counter[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_counter[8]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_counter[9]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of src_sel_o_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \twiddle_addr_o[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \twiddle_addr_o[10]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \twiddle_addr_o[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \twiddle_addr_o[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \twiddle_addr_o[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \twiddle_addr_o[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \twiddle_addr_o[5]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \twiddle_addr_o[6]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \twiddle_addr_o[7]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \twiddle_addr_o[8]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \twiddle_addr_o[9]_INST_0\ : label is "soft_lutpair17";
begin
  bram_en_o <= \<const0>\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEEEAEEFFFFEAEE"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_4_n_0\,
      I3 => \FSM_sequential_state[0]_i_5_n_0\,
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => \FSM_sequential_state[0]_i_6_n_0\,
      O => nstate(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FFD0"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_9_n_0\,
      I1 => \FSM_sequential_state[1]_i_10_n_0\,
      I2 => \data_counter_reg_n_0_[1]\,
      I3 => \data_counter_reg_n_0_[10]\,
      I4 => \FSM_sequential_state[1]_i_11_n_0\,
      I5 => \FSM_sequential_state[0]_i_7_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C00AC0CA"
    )
        port map (
      I0 => start_i,
      I1 => data_counter,
      I2 => state(0),
      I3 => state(1),
      I4 => \data_counter_reg_n_0_[1]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \data_counter_reg_n_0_[2]\,
      I1 => \data_counter_reg_n_0_[4]\,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => \data_counter_reg_n_0_[3]\,
      I4 => fft_ready_o_i_3_n_0,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F000000"
    )
        port map (
      I0 => data_counter,
      I1 => state(0),
      I2 => \data_counter_reg_n_0_[1]\,
      I3 => \data_counter_reg_n_0_[9]\,
      I4 => state(1),
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => data_counter,
      I3 => cycle_delay_reg_n_0,
      O => \FSM_sequential_state[0]_i_6_n_0\
    );
\FSM_sequential_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF7"
    )
        port map (
      I0 => state(0),
      I1 => \cycle_counter_reg_n_0_[2]\,
      I2 => \cycle_counter_reg_n_0_[1]\,
      I3 => \cycle_counter_reg_n_0_[0]\,
      I4 => data_counter,
      I5 => state(1),
      O => \FSM_sequential_state[0]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7700F000"
    )
        port map (
      I0 => fft_ready_o_i_2_n_0,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => state(1),
      I4 => state(0),
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => nstate(1)
    );
\FSM_sequential_state[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => \data_counter_reg_n_0_[7]\,
      I1 => \data_counter_reg_n_0_[2]\,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => \data_counter_reg_n_0_[8]\,
      I4 => \data_counter_reg_n_0_[9]\,
      I5 => \data_counter_reg_n_0_[3]\,
      O => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_counter,
      I1 => state(0),
      O => \FSM_sequential_state[1]_i_11_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_counter_reg_n_0_[9]\,
      I1 => \data_counter_reg_n_0_[1]\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[10]\,
      I1 => \bf_counter_reg_n_0_[6]\,
      I2 => \bf_counter_reg_n_0_[5]\,
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \FSM_sequential_state[1]_i_7_n_0\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_8_n_0\,
      I1 => \FSM_sequential_state[1]_i_9_n_0\,
      I2 => \FSM_sequential_state[1]_i_10_n_0\,
      I3 => \FSM_sequential_state[1]_i_11_n_0\,
      I4 => \data_counter_reg_n_0_[1]\,
      I5 => \data_counter_reg_n_0_[10]\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[0]\,
      I1 => \bf_counter_reg_n_0_[1]\,
      I2 => \bf_counter_reg_n_0_[9]\,
      I3 => \bf_counter_reg_n_0_[2]\,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[3]\,
      I1 => \bf_counter_reg_n_0_[4]\,
      I2 => \bf_counter_reg_n_0_[7]\,
      I3 => \bf_counter_reg_n_0_[8]\,
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555501000000"
    )
        port map (
      I0 => data_counter,
      I1 => \cycle_counter_reg_n_0_[0]\,
      I2 => \cycle_counter_reg_n_0_[1]\,
      I3 => \cycle_counter_reg_n_0_[2]\,
      I4 => state(0),
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \data_counter_reg_n_0_[6]\,
      I1 => \data_counter_reg_n_0_[5]\,
      I2 => \data_counter_reg_n_0_[4]\,
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\FSM_sequential_state[2]_inv_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFF0"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => state(0),
      I2 => data_counter,
      I3 => state(1),
      O => nstate(2)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => nstate(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => nstate(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]_inv\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => nstate(2),
      PRE => \FSM_sequential_state[1]_i_2_n_0\,
      Q => data_counter
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
bf_ce_o_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => state(0),
      I1 => \cycle_counter_reg_n_0_[2]\,
      I2 => \cycle_counter_reg_n_0_[1]\,
      I3 => \cycle_counter_reg_n_0_[0]\,
      I4 => data_counter,
      I5 => state(1),
      O => bf_ce_o
    );
\bf_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter_reg_n_0_[0]\,
      O => \bf_counter[0]_i_1_n_0\
    );
\bf_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"92"
    )
        port map (
      I0 => data_counter,
      I1 => state(0),
      I2 => state(1),
      O => bf_counter
    );
\bf_counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter_reg_n_0_[7]\,
      I2 => \bf_counter_reg_n_0_[9]\,
      I3 => \bf_counter_reg_n_0_[8]\,
      I4 => \bf_counter[10]_i_3_n_0\,
      I5 => \bf_counter_reg_n_0_[10]\,
      O => \bf_counter[10]_i_2_n_0\
    );
\bf_counter[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[6]\,
      I1 => \bf_counter[6]_i_2_n_0\,
      O => \bf_counter[10]_i_3_n_0\
    );
\bf_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[0]\,
      I1 => \bf_counter_reg_n_0_[1]\,
      I2 => data_counter,
      O => \bf_counter[1]_i_1_n_0\
    );
\bf_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter_reg_n_0_[1]\,
      I2 => \bf_counter_reg_n_0_[0]\,
      I3 => \bf_counter_reg_n_0_[2]\,
      O => \bf_counter[2]_i_1_n_0\
    );
\bf_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter_reg_n_0_[0]\,
      I2 => \bf_counter_reg_n_0_[1]\,
      I3 => \bf_counter_reg_n_0_[2]\,
      I4 => \bf_counter_reg_n_0_[3]\,
      O => \bf_counter[3]_i_1_n_0\
    );
\bf_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter_reg_n_0_[2]\,
      I2 => \bf_counter_reg_n_0_[1]\,
      I3 => \bf_counter_reg_n_0_[0]\,
      I4 => \bf_counter_reg_n_0_[3]\,
      I5 => \bf_counter_reg_n_0_[4]\,
      O => \bf_counter[4]_i_1_n_0\
    );
\bf_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter[5]_i_2_n_0\,
      I2 => \bf_counter_reg_n_0_[5]\,
      O => \bf_counter[5]_i_1_n_0\
    );
\bf_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[3]\,
      I1 => \bf_counter_reg_n_0_[0]\,
      I2 => \bf_counter_reg_n_0_[1]\,
      I3 => \bf_counter_reg_n_0_[2]\,
      I4 => \bf_counter_reg_n_0_[4]\,
      O => \bf_counter[5]_i_2_n_0\
    );
\bf_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter[6]_i_2_n_0\,
      I2 => \bf_counter_reg_n_0_[6]\,
      O => \bf_counter[6]_i_1_n_0\
    );
\bf_counter[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[4]\,
      I1 => \bf_counter_reg_n_0_[2]\,
      I2 => \bf_counter_reg_n_0_[1]\,
      I3 => \bf_counter_reg_n_0_[0]\,
      I4 => \bf_counter_reg_n_0_[3]\,
      I5 => \bf_counter_reg_n_0_[5]\,
      O => \bf_counter[6]_i_2_n_0\
    );
\bf_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter[10]_i_3_n_0\,
      I2 => \bf_counter_reg_n_0_[7]\,
      O => \bf_counter[7]_i_1_n_0\
    );
\bf_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \bf_counter[10]_i_3_n_0\,
      I1 => \bf_counter_reg_n_0_[7]\,
      I2 => \bf_counter_reg_n_0_[8]\,
      I3 => data_counter,
      O => \bf_counter[8]_i_1_n_0\
    );
\bf_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => data_counter,
      I1 => \bf_counter_reg_n_0_[7]\,
      I2 => \bf_counter_reg_n_0_[8]\,
      I3 => \bf_counter[10]_i_3_n_0\,
      I4 => \bf_counter_reg_n_0_[9]\,
      O => \bf_counter[9]_i_1_n_0\
    );
\bf_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[0]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[0]\
    );
\bf_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[10]_i_2_n_0\,
      Q => \bf_counter_reg_n_0_[10]\
    );
\bf_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[1]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[1]\
    );
\bf_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[2]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[2]\
    );
\bf_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[3]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[3]\
    );
\bf_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[4]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[4]\
    );
\bf_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[5]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[5]\
    );
\bf_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[6]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[6]\
    );
\bf_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[7]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[7]\
    );
\bf_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[8]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[8]\
    );
\bf_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \bf_counter[9]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[9]\
    );
\bram_addr_o[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[0]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[0]\,
      O => bram_addr_o(0)
    );
\bram_addr_o[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BF38800"
    )
        port map (
      I0 => \data_counter_reg_n_0_[10]\,
      I1 => data_counter,
      I2 => state(1),
      I3 => state(0),
      I4 => \bf_counter_reg_n_0_[10]\,
      O => bram_addr_o(10)
    );
\bram_addr_o[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BF38800"
    )
        port map (
      I0 => \data_counter_reg_n_0_[1]\,
      I1 => data_counter,
      I2 => state(1),
      I3 => state(0),
      I4 => \bf_counter_reg_n_0_[1]\,
      O => bram_addr_o(1)
    );
\bram_addr_o[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[2]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[2]\,
      O => bram_addr_o(2)
    );
\bram_addr_o[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[3]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[3]\,
      O => bram_addr_o(3)
    );
\bram_addr_o[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[4]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[4]\,
      O => bram_addr_o(4)
    );
\bram_addr_o[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[5]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[5]\,
      O => bram_addr_o(5)
    );
\bram_addr_o[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[6]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[6]\,
      O => bram_addr_o(6)
    );
\bram_addr_o[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[7]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[7]\,
      O => bram_addr_o(7)
    );
\bram_addr_o[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[8]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[8]\,
      O => bram_addr_o(8)
    );
\bram_addr_o[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48C048C"
    )
        port map (
      I0 => state(1),
      I1 => \bf_counter_reg_n_0_[9]\,
      I2 => data_counter,
      I3 => state(0),
      I4 => \data_counter_reg_n_0_[9]\,
      O => bram_addr_o(9)
    );
bram_we_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => data_counter,
      O => bram_we_o
    );
\cycle_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E910"
    )
        port map (
      I0 => state(1),
      I1 => data_counter,
      I2 => state(0),
      I3 => \cycle_counter_reg_n_0_[0]\,
      O => \cycle_counter[0]_i_1_n_0\
    );
\cycle_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDC30200"
    )
        port map (
      I0 => \cycle_counter_reg_n_0_[0]\,
      I1 => state(1),
      I2 => data_counter,
      I3 => state(0),
      I4 => \cycle_counter_reg_n_0_[1]\,
      O => \cycle_counter[1]_i_1_n_0\
    );
\cycle_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7F00F00080000"
    )
        port map (
      I0 => \cycle_counter_reg_n_0_[1]\,
      I1 => \cycle_counter_reg_n_0_[0]\,
      I2 => state(1),
      I3 => data_counter,
      I4 => state(0),
      I5 => \cycle_counter_reg_n_0_[2]\,
      O => \cycle_counter[2]_i_1_n_0\
    );
\cycle_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \cycle_counter[0]_i_1_n_0\,
      Q => \cycle_counter_reg_n_0_[0]\
    );
\cycle_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \cycle_counter[1]_i_1_n_0\,
      Q => \cycle_counter_reg_n_0_[1]\
    );
\cycle_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \cycle_counter[2]_i_1_n_0\,
      Q => \cycle_counter_reg_n_0_[2]\
    );
cycle_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7508"
    )
        port map (
      I0 => data_counter,
      I1 => state(1),
      I2 => state(0),
      I3 => cycle_delay_reg_n_0,
      O => cycle_delay_i_1_n_0
    );
cycle_delay_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => cycle_delay_i_1_n_0,
      Q => cycle_delay_reg_n_0
    );
\data_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => \data_counter_reg_n_0_[0]\,
      O => \data_counter[0]_i_1_n_0\
    );
\data_counter[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => state(0),
      I1 => \data_counter[10]_i_2_n_0\,
      I2 => \data_counter_reg_n_0_[9]\,
      I3 => \data_counter_reg_n_0_[10]\,
      O => \data_counter[10]_i_1_n_0\
    );
\data_counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \data_counter_reg_n_0_[7]\,
      I1 => \data_counter_reg_n_0_[4]\,
      I2 => \data_counter_reg_n_0_[5]\,
      I3 => \data_counter_reg_n_0_[6]\,
      I4 => \data_counter[7]_i_2_n_0\,
      I5 => \data_counter_reg_n_0_[8]\,
      O => \data_counter[10]_i_2_n_0\
    );
\data_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \data_counter_reg_n_0_[1]\,
      I1 => \data_counter_reg_n_0_[0]\,
      I2 => state(0),
      O => \data_counter[1]_i_1_n_0\
    );
\data_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => state(0),
      I1 => \data_counter_reg_n_0_[0]\,
      I2 => \data_counter_reg_n_0_[1]\,
      I3 => \data_counter_reg_n_0_[2]\,
      O => \data_counter[2]_i_1_n_0\
    );
\data_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => state(0),
      I1 => \data_counter_reg_n_0_[1]\,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => \data_counter_reg_n_0_[2]\,
      I4 => \data_counter_reg_n_0_[3]\,
      O => \data_counter[3]_i_1_n_0\
    );
\data_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \data_counter_reg_n_0_[3]\,
      I1 => \data_counter_reg_n_0_[2]\,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => \data_counter_reg_n_0_[1]\,
      I4 => \data_counter_reg_n_0_[4]\,
      I5 => state(0),
      O => \data_counter[4]_i_1_n_0\
    );
\data_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => state(0),
      I1 => \data_counter_reg_n_0_[4]\,
      I2 => \data_counter[7]_i_2_n_0\,
      I3 => \data_counter_reg_n_0_[5]\,
      O => \data_counter[5]_i_1_n_0\
    );
\data_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => \data_counter[7]_i_2_n_0\,
      I1 => \data_counter_reg_n_0_[4]\,
      I2 => \data_counter_reg_n_0_[5]\,
      I3 => \data_counter_reg_n_0_[6]\,
      I4 => state(0),
      O => \data_counter[6]_i_1_n_0\
    );
\data_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => state(0),
      I1 => \data_counter_reg_n_0_[4]\,
      I2 => \data_counter_reg_n_0_[5]\,
      I3 => \data_counter_reg_n_0_[6]\,
      I4 => \data_counter[7]_i_2_n_0\,
      I5 => \data_counter_reg_n_0_[7]\,
      O => \data_counter[7]_i_1_n_0\
    );
\data_counter[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \data_counter_reg_n_0_[3]\,
      I1 => \data_counter_reg_n_0_[2]\,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => \data_counter_reg_n_0_[1]\,
      O => \data_counter[7]_i_2_n_0\
    );
\data_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => state(0),
      I1 => \data_counter[8]_i_2_n_0\,
      I2 => \data_counter_reg_n_0_[8]\,
      O => \data_counter[8]_i_1_n_0\
    );
\data_counter[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \data_counter[7]_i_2_n_0\,
      I1 => \data_counter_reg_n_0_[6]\,
      I2 => \data_counter_reg_n_0_[5]\,
      I3 => \data_counter_reg_n_0_[4]\,
      I4 => \data_counter_reg_n_0_[7]\,
      O => \data_counter[8]_i_2_n_0\
    );
\data_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => state(0),
      I1 => \data_counter[10]_i_2_n_0\,
      I2 => \data_counter_reg_n_0_[9]\,
      O => \data_counter[9]_i_1_n_0\
    );
\data_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[0]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[0]\
    );
\data_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[10]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[10]\
    );
\data_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[1]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[1]\
    );
\data_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[2]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[2]\
    );
\data_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[3]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[3]\
    );
\data_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[4]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[4]\
    );
\data_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[5]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[5]\
    );
\data_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[6]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[6]\
    );
\data_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[7]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[7]\
    );
\data_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[8]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[8]\
    );
\data_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_counter,
      CLR => \FSM_sequential_state[1]_i_2_n_0\,
      D => \data_counter[9]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[9]\
    );
fft_ready_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080808080"
    )
        port map (
      I0 => data_counter,
      I1 => state(0),
      I2 => state(1),
      I3 => \data_counter_reg_n_0_[9]\,
      I4 => \data_counter_reg_n_0_[1]\,
      I5 => fft_ready_o_i_2_n_0,
      O => fft_ready_o_i_1_n_0
    );
fft_ready_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \data_counter_reg_n_0_[10]\,
      I1 => fft_ready_o_i_3_n_0,
      I2 => \data_counter_reg_n_0_[3]\,
      I3 => \data_counter_reg_n_0_[0]\,
      I4 => \data_counter_reg_n_0_[4]\,
      I5 => \data_counter_reg_n_0_[2]\,
      O => fft_ready_o_i_2_n_0
    );
fft_ready_o_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \data_counter_reg_n_0_[8]\,
      I1 => \data_counter_reg_n_0_[6]\,
      I2 => \data_counter_reg_n_0_[7]\,
      I3 => \data_counter_reg_n_0_[5]\,
      O => fft_ready_o_i_3_n_0
    );
fft_ready_o_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => fft_ready_o_i_1_n_0,
      Q => fft_ready_o,
      R => '0'
    );
src_sel_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C7"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => data_counter,
      O => src_sel_o
    );
\twiddle_addr_o[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[0]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(0)
    );
\twiddle_addr_o[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[10]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(10)
    );
\twiddle_addr_o[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[1]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(1)
    );
\twiddle_addr_o[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[2]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(2)
    );
\twiddle_addr_o[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[3]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(3)
    );
\twiddle_addr_o[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[4]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(4)
    );
\twiddle_addr_o[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[5]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(5)
    );
\twiddle_addr_o[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[6]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(6)
    );
\twiddle_addr_o[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[7]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(7)
    );
\twiddle_addr_o[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[8]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(8)
    );
\twiddle_addr_o[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[9]\,
      I1 => state(0),
      I2 => state(1),
      I3 => data_counter,
      O => twiddle_addr_o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    start_i : in STD_LOGIC;
    src_sel_o : out STD_LOGIC;
    fft_ready_o : out STD_LOGIC;
    bram_we_o : out STD_LOGIC;
    bram_en_o : out STD_LOGIC;
    bf_ce_o : out STD_LOGIC;
    bram_addr_o : out STD_LOGIC_VECTOR ( 10 downto 0 );
    twiddle_addr_o : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fft_control_unit_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit_0 : entity is "fft_control_unit_0,control_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit_0 : entity is "control_unit,Vivado 2021.1";
end fft_control_unit_0;

architecture STRUCTURE of fft_control_unit_0 is
  signal \<const1>\ : STD_LOGIC;
  signal NLW_inst_bram_en_o_UNCONNECTED : STD_LOGIC;
  attribute BRAM_SIZE : string;
  attribute BRAM_SIZE of inst : label is "10'b1000000000";
  attribute S_BF_OPERATION : string;
  attribute S_BF_OPERATION of inst : label is "3'b100";
  attribute S_CHECK_BF_COUNTER : string;
  attribute S_CHECK_BF_COUNTER of inst : label is "3'b010";
  attribute S_IDLE : string;
  attribute S_IDLE of inst : label is "3'b000";
  attribute S_READ_MEMORY : string;
  attribute S_READ_MEMORY of inst : label is "3'b011";
  attribute S_SEND_RESULTS : string;
  attribute S_SEND_RESULTS of inst : label is "3'b110";
  attribute S_STORE_INPUTS : string;
  attribute S_STORE_INPUTS of inst : label is "3'b001";
  attribute S_WRITE_BACK : string;
  attribute S_WRITE_BACK of inst : label is "3'b101";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bram_en_o <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.fft_control_unit_0_control_unit
     port map (
      bf_ce_o => bf_ce_o,
      bram_addr_o(10 downto 0) => bram_addr_o(10 downto 0),
      bram_en_o => NLW_inst_bram_en_o_UNCONNECTED,
      bram_we_o => bram_we_o,
      clk => clk,
      fft_ready_o => fft_ready_o,
      rstn => rstn,
      src_sel_o => src_sel_o,
      start_i => start_i,
      twiddle_addr_o(10 downto 0) => twiddle_addr_o(10 downto 0)
    );
end STRUCTURE;
