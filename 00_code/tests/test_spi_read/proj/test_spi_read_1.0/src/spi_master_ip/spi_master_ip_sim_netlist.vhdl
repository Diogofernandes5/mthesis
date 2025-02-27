-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jan 31 18:26:22 2025
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top spi_master_ip -prefix
--               spi_master_ip_ spi_master_ip_sim_netlist.vhdl
-- Design      : spi_master_ip
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_master_ip_SPI_Master is
  port (
    Master_Ready_w : out STD_LOGIC;
    rstn_i_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_clk_o : out STD_LOGIC;
    SPI_MOSI_o : out STD_LOGIC;
    \FSM_onehot_SM_CS_r_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_SM_CS_r_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_SM_CS_r_reg[0]_1\ : out STD_LOGIC;
    CS_r_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    TX_ready_o : out STD_LOGIC;
    CS_r_reg_0 : out STD_LOGIC;
    RX_byte_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_i : in STD_LOGIC;
    TX_DV_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_SM_CS_r_reg[2]\ : in STD_LOGIC;
    \SM_CS_r0__0\ : in STD_LOGIC;
    \FSM_onehot_SM_CS_r_reg[2]_0\ : in STD_LOGIC;
    \FSM_onehot_SM_CS_r_reg[2]_1\ : in STD_LOGIC;
    \FSM_onehot_SM_CS_r_reg[2]_2\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_SM_CS_r_reg[1]\ : in STD_LOGIC;
    \SM_CS_r1__2\ : in STD_LOGIC;
    rstn_i : in STD_LOGIC;
    SPI_MISO_i : in STD_LOGIC;
    TX_byte_i : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end spi_master_ip_SPI_Master;

architecture STRUCTURE of spi_master_ip_SPI_Master is
  signal \FSM_onehot_SM_CS_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SM_CS_r[2]_i_4_n_0\ : STD_LOGIC;
  signal \^master_ready_w\ : STD_LOGIC;
  signal RX_DV_o5_out : STD_LOGIC;
  signal \RX_bit_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \RX_bit_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \RX_bit_count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \RX_bit_count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_bit_count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_bit_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \^rx_byte_o\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RX_byte_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \RX_byte_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \RX_byte_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \RX_byte_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_byte_o[4]_i_1_n_0\ : STD_LOGIC;
  signal \RX_byte_o[4]_i_2_n_0\ : STD_LOGIC;
  signal \RX_byte_o[5]_i_1_n_0\ : STD_LOGIC;
  signal \RX_byte_o[5]_i_2_n_0\ : STD_LOGIC;
  signal \RX_byte_o[6]_i_1_n_0\ : STD_LOGIC;
  signal \RX_byte_o[6]_i_2_n_0\ : STD_LOGIC;
  signal \RX_byte_o[7]_i_1_n_0\ : STD_LOGIC;
  signal \RX_byte_o[7]_i_2_n_0\ : STD_LOGIC;
  signal \^spi_mosi_o\ : STD_LOGIC;
  signal SPI_MOSI_o_i_1_n_0 : STD_LOGIC;
  signal SPI_MOSI_o_i_2_n_0 : STD_LOGIC;
  signal SPI_MOSI_o_i_3_n_0 : STD_LOGIC;
  signal SPI_clk_count_r : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \SPI_clk_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_clk_count_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_clk_count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \SPI_clk_count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \SPI_clk_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \SPI_clk_count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \SPI_clk_count_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \SPI_clk_edges_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_clk_edges_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_clk_edges_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_clk_edges_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_clk_edges_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_clk_edges_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_clk_edges_r[4]_i_3_n_0\ : STD_LOGIC;
  signal SPI_clk_edges_r_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal SPI_clk_r : STD_LOGIC;
  signal SPI_clk_r_i_1_n_0 : STD_LOGIC;
  signal \TX_bit_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \TX_bit_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \TX_bit_count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \TX_bit_count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \TX_bit_count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \TX_bit_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal TX_byte_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \TX_ready_o1__3\ : STD_LOGIC;
  signal TX_ready_o_i_1_n_0 : STD_LOGIC;
  signal leading_edge_r : STD_LOGIC;
  signal leading_edge_r3_out : STD_LOGIC;
  signal \^rstn_i_0\ : STD_LOGIC;
  signal trailing_edge_r : STD_LOGIC;
  signal trailing_edge_r7_out : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RX_DV_o_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RX_bit_count_r[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \RX_bit_count_r[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \RX_bit_count_r[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \RX_byte_o[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \RX_byte_o[5]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \RX_byte_o[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SPI_clk_count_r[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SPI_clk_count_r[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SPI_clk_count_r[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SPI_clk_count_r[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SPI_clk_count_r[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SPI_clk_edges_r[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SPI_clk_edges_r[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SPI_clk_edges_r[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SPI_clk_edges_r[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SPI_clk_edges_r[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \TX_bit_count_r[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \TX_bit_count_r[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \TX_bit_count_r[2]_i_1\ : label is "soft_lutpair5";
begin
  Master_Ready_w <= \^master_ready_w\;
  RX_byte_o(7 downto 0) <= \^rx_byte_o\(7 downto 0);
  SPI_MOSI_o <= \^spi_mosi_o\;
  rstn_i_0 <= \^rstn_i_0\;
CS_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AFF2A2A2A2A2A"
    )
        port map (
      I0 => SR(0),
      I1 => TX_DV_i,
      I2 => \FSM_onehot_SM_CS_r_reg[2]\,
      I3 => \^master_ready_w\,
      I4 => \SM_CS_r1__2\,
      I5 => \FSM_onehot_SM_CS_r_reg[2]_2\,
      O => CS_r_reg_0
    );
\FSM_onehot_SM_CS_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00AA2AFF2A"
    )
        port map (
      I0 => \FSM_onehot_SM_CS_r_reg[2]\,
      I1 => SR(0),
      I2 => TX_DV_i,
      I3 => \FSM_onehot_SM_CS_r_reg[2]_0\,
      I4 => \FSM_onehot_SM_CS_r_reg[2]_1\,
      I5 => \FSM_onehot_SM_CS_r[0]_i_2_n_0\,
      O => \FSM_onehot_SM_CS_r_reg[0]_1\
    );
\FSM_onehot_SM_CS_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => \^master_ready_w\,
      I5 => \FSM_onehot_SM_CS_r_reg[2]_2\,
      O => \FSM_onehot_SM_CS_r[0]_i_2_n_0\
    );
\FSM_onehot_SM_CS_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFFAA80AA80"
    )
        port map (
      I0 => \FSM_onehot_SM_CS_r_reg[2]\,
      I1 => SR(0),
      I2 => TX_DV_i,
      I3 => \FSM_onehot_SM_CS_r_reg[1]\,
      I4 => \FSM_onehot_SM_CS_r[2]_i_4_n_0\,
      I5 => \FSM_onehot_SM_CS_r_reg[2]_2\,
      O => \FSM_onehot_SM_CS_r_reg[0]_0\
    );
\FSM_onehot_SM_CS_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8F870007000"
    )
        port map (
      I0 => \FSM_onehot_SM_CS_r_reg[2]\,
      I1 => \SM_CS_r0__0\,
      I2 => \FSM_onehot_SM_CS_r_reg[2]_0\,
      I3 => \FSM_onehot_SM_CS_r_reg[2]_1\,
      I4 => \FSM_onehot_SM_CS_r[2]_i_4_n_0\,
      I5 => \FSM_onehot_SM_CS_r_reg[2]_2\,
      O => \FSM_onehot_SM_CS_r_reg[0]\
    );
\FSM_onehot_SM_CS_r[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^master_ready_w\,
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => \FSM_onehot_SM_CS_r[2]_i_4_n_0\
    );
RX_DV_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \RX_bit_count_r_reg_n_0_[1]\,
      I1 => \RX_bit_count_r_reg_n_0_[0]\,
      I2 => \RX_bit_count_r_reg_n_0_[2]\,
      I3 => \^master_ready_w\,
      I4 => trailing_edge_r,
      O => RX_DV_o5_out
    );
RX_DV_o_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn_i,
      O => \^rstn_i_0\
    );
RX_DV_o_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => RX_DV_o5_out,
      Q => E(0)
    );
\RX_bit_count_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => \^master_ready_w\,
      I1 => trailing_edge_r,
      I2 => \RX_bit_count_r_reg_n_0_[0]\,
      O => \RX_bit_count_r[0]_i_1_n_0\
    );
\RX_bit_count_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFDC"
    )
        port map (
      I0 => \RX_bit_count_r_reg_n_0_[0]\,
      I1 => \^master_ready_w\,
      I2 => trailing_edge_r,
      I3 => \RX_bit_count_r_reg_n_0_[1]\,
      O => \RX_bit_count_r[1]_i_1_n_0\
    );
\RX_bit_count_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFF1F0"
    )
        port map (
      I0 => \RX_bit_count_r_reg_n_0_[0]\,
      I1 => \RX_bit_count_r_reg_n_0_[1]\,
      I2 => \^master_ready_w\,
      I3 => trailing_edge_r,
      I4 => \RX_bit_count_r_reg_n_0_[2]\,
      O => \RX_bit_count_r[2]_i_1_n_0\
    );
\RX_bit_count_r_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => \RX_bit_count_r[0]_i_1_n_0\,
      PRE => \^rstn_i_0\,
      Q => \RX_bit_count_r_reg_n_0_[0]\
    );
\RX_bit_count_r_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => \RX_bit_count_r[1]_i_1_n_0\,
      PRE => \^rstn_i_0\,
      Q => \RX_bit_count_r_reg_n_0_[1]\
    );
\RX_bit_count_r_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => \RX_bit_count_r[2]_i_1_n_0\,
      PRE => \^rstn_i_0\,
      Q => \RX_bit_count_r_reg_n_0_[2]\
    );
\RX_byte_o[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => SPI_MISO_i,
      I1 => \RX_bit_count_r_reg_n_0_[2]\,
      I2 => \RX_byte_o[4]_i_2_n_0\,
      I3 => trailing_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^rx_byte_o\(0),
      O => \RX_byte_o[0]_i_1_n_0\
    );
\RX_byte_o[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => SPI_MISO_i,
      I1 => \RX_bit_count_r_reg_n_0_[2]\,
      I2 => \RX_byte_o[5]_i_2_n_0\,
      I3 => trailing_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^rx_byte_o\(1),
      O => \RX_byte_o[1]_i_1_n_0\
    );
\RX_byte_o[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => SPI_MISO_i,
      I1 => \RX_bit_count_r_reg_n_0_[2]\,
      I2 => \RX_byte_o[6]_i_2_n_0\,
      I3 => trailing_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^rx_byte_o\(2),
      O => \RX_byte_o[2]_i_1_n_0\
    );
\RX_byte_o[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => SPI_MISO_i,
      I1 => \RX_bit_count_r_reg_n_0_[2]\,
      I2 => \RX_byte_o[7]_i_2_n_0\,
      I3 => trailing_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^rx_byte_o\(3),
      O => \RX_byte_o[3]_i_1_n_0\
    );
\RX_byte_o[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => SPI_MISO_i,
      I1 => \RX_bit_count_r_reg_n_0_[2]\,
      I2 => \RX_byte_o[4]_i_2_n_0\,
      I3 => trailing_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^rx_byte_o\(4),
      O => \RX_byte_o[4]_i_1_n_0\
    );
\RX_byte_o[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \RX_bit_count_r_reg_n_0_[1]\,
      I1 => \RX_bit_count_r_reg_n_0_[0]\,
      O => \RX_byte_o[4]_i_2_n_0\
    );
\RX_byte_o[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => SPI_MISO_i,
      I1 => \RX_bit_count_r_reg_n_0_[2]\,
      I2 => \RX_byte_o[5]_i_2_n_0\,
      I3 => trailing_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^rx_byte_o\(5),
      O => \RX_byte_o[5]_i_1_n_0\
    );
\RX_byte_o[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \RX_bit_count_r_reg_n_0_[1]\,
      I1 => \RX_bit_count_r_reg_n_0_[0]\,
      O => \RX_byte_o[5]_i_2_n_0\
    );
\RX_byte_o[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => SPI_MISO_i,
      I1 => \RX_bit_count_r_reg_n_0_[2]\,
      I2 => \RX_byte_o[6]_i_2_n_0\,
      I3 => trailing_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^rx_byte_o\(6),
      O => \RX_byte_o[6]_i_1_n_0\
    );
\RX_byte_o[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \RX_bit_count_r_reg_n_0_[0]\,
      I1 => \RX_bit_count_r_reg_n_0_[1]\,
      O => \RX_byte_o[6]_i_2_n_0\
    );
\RX_byte_o[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => SPI_MISO_i,
      I1 => \RX_bit_count_r_reg_n_0_[2]\,
      I2 => \RX_byte_o[7]_i_2_n_0\,
      I3 => trailing_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^rx_byte_o\(7),
      O => \RX_byte_o[7]_i_1_n_0\
    );
\RX_byte_o[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \RX_bit_count_r_reg_n_0_[1]\,
      I1 => \RX_bit_count_r_reg_n_0_[0]\,
      O => \RX_byte_o[7]_i_2_n_0\
    );
\RX_byte_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => \RX_byte_o[0]_i_1_n_0\,
      Q => \^rx_byte_o\(0)
    );
\RX_byte_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => \RX_byte_o[1]_i_1_n_0\,
      Q => \^rx_byte_o\(1)
    );
\RX_byte_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => \RX_byte_o[2]_i_1_n_0\,
      Q => \^rx_byte_o\(2)
    );
\RX_byte_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => \RX_byte_o[3]_i_1_n_0\,
      Q => \^rx_byte_o\(3)
    );
\RX_byte_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => \RX_byte_o[4]_i_1_n_0\,
      Q => \^rx_byte_o\(4)
    );
\RX_byte_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => \RX_byte_o[5]_i_1_n_0\,
      Q => \^rx_byte_o\(5)
    );
\RX_byte_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => \RX_byte_o[6]_i_1_n_0\,
      Q => \^rx_byte_o\(6)
    );
\RX_byte_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => \RX_byte_o[7]_i_1_n_0\,
      Q => \^rx_byte_o\(7)
    );
SPI_MOSI_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => SPI_MOSI_o_i_2_n_0,
      I1 => \TX_bit_count_r_reg_n_0_[2]\,
      I2 => SPI_MOSI_o_i_3_n_0,
      I3 => leading_edge_r,
      I4 => \^master_ready_w\,
      I5 => \^spi_mosi_o\,
      O => SPI_MOSI_o_i_1_n_0
    );
SPI_MOSI_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => TX_byte_r(7),
      I1 => TX_byte_r(6),
      I2 => \TX_bit_count_r_reg_n_0_[1]\,
      I3 => TX_byte_r(5),
      I4 => \TX_bit_count_r_reg_n_0_[0]\,
      I5 => TX_byte_r(4),
      O => SPI_MOSI_o_i_2_n_0
    );
SPI_MOSI_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => TX_byte_r(3),
      I1 => TX_byte_r(2),
      I2 => \TX_bit_count_r_reg_n_0_[1]\,
      I3 => TX_byte_r(1),
      I4 => \TX_bit_count_r_reg_n_0_[0]\,
      I5 => TX_byte_r(0),
      O => SPI_MOSI_o_i_3_n_0
    );
SPI_MOSI_o_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => SPI_MOSI_o_i_1_n_0,
      Q => \^spi_mosi_o\
    );
\SPI_clk_count_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SPI_clk_count_r_reg_n_0_[0]\,
      O => \SPI_clk_count_r[0]_i_1_n_0\
    );
\SPI_clk_count_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SPI_clk_count_r_reg_n_0_[1]\,
      I1 => \SPI_clk_count_r_reg_n_0_[0]\,
      O => SPI_clk_count_r(1)
    );
\SPI_clk_count_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \SPI_clk_count_r_reg_n_0_[0]\,
      I1 => \SPI_clk_count_r_reg_n_0_[1]\,
      I2 => \SPI_clk_count_r_reg_n_0_[2]\,
      O => SPI_clk_count_r(2)
    );
\SPI_clk_count_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1AAAAAAA"
    )
        port map (
      I0 => \SPI_clk_count_r_reg_n_0_[3]\,
      I1 => \SPI_clk_count_r_reg_n_0_[4]\,
      I2 => \SPI_clk_count_r_reg_n_0_[1]\,
      I3 => \SPI_clk_count_r_reg_n_0_[0]\,
      I4 => \SPI_clk_count_r_reg_n_0_[2]\,
      O => SPI_clk_count_r(3)
    );
\SPI_clk_count_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => SPI_clk_edges_r_reg(3),
      I1 => SPI_clk_edges_r_reg(2),
      I2 => SPI_clk_edges_r_reg(0),
      I3 => SPI_clk_edges_r_reg(4),
      I4 => SPI_clk_edges_r_reg(1),
      I5 => TX_DV_i,
      O => \SPI_clk_count_r[4]_i_1_n_0\
    );
\SPI_clk_count_r[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"64CCCCCC"
    )
        port map (
      I0 => \SPI_clk_count_r_reg_n_0_[2]\,
      I1 => \SPI_clk_count_r_reg_n_0_[4]\,
      I2 => \SPI_clk_count_r_reg_n_0_[3]\,
      I3 => \SPI_clk_count_r_reg_n_0_[1]\,
      I4 => \SPI_clk_count_r_reg_n_0_[0]\,
      O => SPI_clk_count_r(4)
    );
\SPI_clk_count_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_count_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => \SPI_clk_count_r[0]_i_1_n_0\,
      Q => \SPI_clk_count_r_reg_n_0_[0]\
    );
\SPI_clk_count_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_count_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => SPI_clk_count_r(1),
      Q => \SPI_clk_count_r_reg_n_0_[1]\
    );
\SPI_clk_count_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_count_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => SPI_clk_count_r(2),
      Q => \SPI_clk_count_r_reg_n_0_[2]\
    );
\SPI_clk_count_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_count_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => SPI_clk_count_r(3),
      Q => \SPI_clk_count_r_reg_n_0_[3]\
    );
\SPI_clk_count_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_count_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => SPI_clk_count_r(4),
      Q => \SPI_clk_count_r_reg_n_0_[4]\
    );
\SPI_clk_edges_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SPI_clk_edges_r_reg(0),
      I1 => TX_DV_i,
      O => \SPI_clk_edges_r[0]_i_1_n_0\
    );
\SPI_clk_edges_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => SPI_clk_edges_r_reg(1),
      I1 => SPI_clk_edges_r_reg(0),
      I2 => TX_DV_i,
      O => \SPI_clk_edges_r[1]_i_1_n_0\
    );
\SPI_clk_edges_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A9"
    )
        port map (
      I0 => SPI_clk_edges_r_reg(2),
      I1 => SPI_clk_edges_r_reg(0),
      I2 => SPI_clk_edges_r_reg(1),
      I3 => TX_DV_i,
      O => \SPI_clk_edges_r[2]_i_1_n_0\
    );
\SPI_clk_edges_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA9"
    )
        port map (
      I0 => SPI_clk_edges_r_reg(3),
      I1 => SPI_clk_edges_r_reg(1),
      I2 => SPI_clk_edges_r_reg(0),
      I3 => SPI_clk_edges_r_reg(2),
      I4 => TX_DV_i,
      O => \SPI_clk_edges_r[3]_i_1_n_0\
    );
\SPI_clk_edges_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => TX_DV_i,
      I1 => \SPI_clk_edges_r[4]_i_3_n_0\,
      I2 => \TX_ready_o1__3\,
      O => \SPI_clk_edges_r[4]_i_1_n_0\
    );
\SPI_clk_edges_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEB"
    )
        port map (
      I0 => TX_DV_i,
      I1 => SPI_clk_edges_r_reg(4),
      I2 => SPI_clk_edges_r_reg(2),
      I3 => SPI_clk_edges_r_reg(0),
      I4 => SPI_clk_edges_r_reg(1),
      I5 => SPI_clk_edges_r_reg(3),
      O => \SPI_clk_edges_r[4]_i_2_n_0\
    );
\SPI_clk_edges_r[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10008000"
    )
        port map (
      I0 => \SPI_clk_count_r_reg_n_0_[2]\,
      I1 => \SPI_clk_count_r_reg_n_0_[4]\,
      I2 => \SPI_clk_count_r_reg_n_0_[0]\,
      I3 => \SPI_clk_count_r_reg_n_0_[1]\,
      I4 => \SPI_clk_count_r_reg_n_0_[3]\,
      O => \SPI_clk_edges_r[4]_i_3_n_0\
    );
\SPI_clk_edges_r[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => SPI_clk_edges_r_reg(1),
      I1 => SPI_clk_edges_r_reg(4),
      I2 => SPI_clk_edges_r_reg(0),
      I3 => SPI_clk_edges_r_reg(2),
      I4 => SPI_clk_edges_r_reg(3),
      O => \TX_ready_o1__3\
    );
\SPI_clk_edges_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_edges_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => \SPI_clk_edges_r[0]_i_1_n_0\,
      Q => SPI_clk_edges_r_reg(0)
    );
\SPI_clk_edges_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_edges_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => \SPI_clk_edges_r[1]_i_1_n_0\,
      Q => SPI_clk_edges_r_reg(1)
    );
\SPI_clk_edges_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_edges_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => \SPI_clk_edges_r[2]_i_1_n_0\,
      Q => SPI_clk_edges_r_reg(2)
    );
\SPI_clk_edges_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_edges_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => \SPI_clk_edges_r[3]_i_1_n_0\,
      Q => SPI_clk_edges_r_reg(3)
    );
\SPI_clk_edges_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => \SPI_clk_edges_r[4]_i_1_n_0\,
      CLR => \^rstn_i_0\,
      D => \SPI_clk_edges_r[4]_i_2_n_0\,
      Q => SPI_clk_edges_r_reg(4)
    );
SPI_clk_o_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => SPI_clk_r,
      PRE => \^rstn_i_0\,
      Q => SPI_clk_o
    );
SPI_clk_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \SPI_clk_edges_r[4]_i_3_n_0\,
      I1 => \SPI_clk_count_r[4]_i_1_n_0\,
      I2 => SPI_clk_r,
      O => SPI_clk_r_i_1_n_0
    );
SPI_clk_r_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => SPI_clk_r_i_1_n_0,
      PRE => \^rstn_i_0\,
      Q => SPI_clk_r
    );
\TX_Count_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800880088008800"
    )
        port map (
      I0 => SR(0),
      I1 => \FSM_onehot_SM_CS_r_reg[2]\,
      I2 => \^master_ready_w\,
      I3 => TX_DV_i,
      I4 => \SM_CS_r1__2\,
      I5 => \FSM_onehot_SM_CS_r_reg[2]_2\,
      O => CS_r_reg(0)
    );
\TX_bit_count_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => \^master_ready_w\,
      I1 => leading_edge_r,
      I2 => \TX_bit_count_r_reg_n_0_[0]\,
      O => \TX_bit_count_r[0]_i_1_n_0\
    );
\TX_bit_count_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFDC"
    )
        port map (
      I0 => \TX_bit_count_r_reg_n_0_[0]\,
      I1 => \^master_ready_w\,
      I2 => leading_edge_r,
      I3 => \TX_bit_count_r_reg_n_0_[1]\,
      O => \TX_bit_count_r[1]_i_1_n_0\
    );
\TX_bit_count_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFF1F0"
    )
        port map (
      I0 => \TX_bit_count_r_reg_n_0_[0]\,
      I1 => \TX_bit_count_r_reg_n_0_[1]\,
      I2 => \^master_ready_w\,
      I3 => leading_edge_r,
      I4 => \TX_bit_count_r_reg_n_0_[2]\,
      O => \TX_bit_count_r[2]_i_1_n_0\
    );
\TX_bit_count_r_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => \TX_bit_count_r[0]_i_1_n_0\,
      PRE => \^rstn_i_0\,
      Q => \TX_bit_count_r_reg_n_0_[0]\
    );
\TX_bit_count_r_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => \TX_bit_count_r[1]_i_1_n_0\,
      PRE => \^rstn_i_0\,
      Q => \TX_bit_count_r_reg_n_0_[1]\
    );
\TX_bit_count_r_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => \TX_bit_count_r[2]_i_1_n_0\,
      PRE => \^rstn_i_0\,
      Q => \TX_bit_count_r_reg_n_0_[2]\
    );
\TX_byte_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_DV_i,
      CLR => \^rstn_i_0\,
      D => TX_byte_i(0),
      Q => TX_byte_r(0)
    );
\TX_byte_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_DV_i,
      CLR => \^rstn_i_0\,
      D => TX_byte_i(1),
      Q => TX_byte_r(1)
    );
\TX_byte_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_DV_i,
      CLR => \^rstn_i_0\,
      D => TX_byte_i(2),
      Q => TX_byte_r(2)
    );
\TX_byte_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_DV_i,
      CLR => \^rstn_i_0\,
      D => TX_byte_i(3),
      Q => TX_byte_r(3)
    );
\TX_byte_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_DV_i,
      CLR => \^rstn_i_0\,
      D => TX_byte_i(4),
      Q => TX_byte_r(4)
    );
\TX_byte_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_DV_i,
      CLR => \^rstn_i_0\,
      D => TX_byte_i(5),
      Q => TX_byte_r(5)
    );
\TX_byte_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_DV_i,
      CLR => \^rstn_i_0\,
      D => TX_byte_i(6),
      Q => TX_byte_r(6)
    );
\TX_byte_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_DV_i,
      CLR => \^rstn_i_0\,
      D => TX_byte_i(7),
      Q => TX_byte_r(7)
    );
TX_ready_o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => \FSM_onehot_SM_CS_r_reg[2]_2\,
      I1 => \^master_ready_w\,
      I2 => \SM_CS_r1__2\,
      I3 => \FSM_onehot_SM_CS_r_reg[2]\,
      I4 => TX_DV_i,
      O => TX_ready_o
    );
TX_ready_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => TX_DV_i,
      I1 => SPI_clk_edges_r_reg(3),
      I2 => SPI_clk_edges_r_reg(2),
      I3 => SPI_clk_edges_r_reg(0),
      I4 => SPI_clk_edges_r_reg(4),
      I5 => SPI_clk_edges_r_reg(1),
      O => TX_ready_o_i_1_n_0
    );
TX_ready_o_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => TX_ready_o_i_1_n_0,
      Q => \^master_ready_w\
    );
leading_edge_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \SPI_clk_count_r[4]_i_1_n_0\,
      I1 => \SPI_clk_count_r_reg_n_0_[3]\,
      I2 => \SPI_clk_count_r_reg_n_0_[2]\,
      I3 => \SPI_clk_count_r_reg_n_0_[1]\,
      I4 => \SPI_clk_count_r_reg_n_0_[0]\,
      I5 => \SPI_clk_count_r_reg_n_0_[4]\,
      O => leading_edge_r3_out
    );
leading_edge_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => leading_edge_r3_out,
      Q => leading_edge_r
    );
trailing_edge_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \SPI_clk_count_r[4]_i_1_n_0\,
      I1 => \SPI_clk_count_r_reg_n_0_[1]\,
      I2 => \SPI_clk_count_r_reg_n_0_[0]\,
      I3 => \SPI_clk_count_r_reg_n_0_[2]\,
      I4 => \SPI_clk_count_r_reg_n_0_[4]\,
      I5 => \SPI_clk_count_r_reg_n_0_[3]\,
      O => trailing_edge_r7_out
    );
trailing_edge_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => \^rstn_i_0\,
      D => trailing_edge_r7_out,
      Q => trailing_edge_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_master_ip_SPI_Master_With_Single_CS is
  port (
    CS_r_reg_0 : out STD_LOGIC;
    RX_DV_o : out STD_LOGIC;
    RX_byte_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SPI_clk_o : out STD_LOGIC;
    RX_count_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TX_ready_o : out STD_LOGIC;
    SPI_MOSI_o : out STD_LOGIC;
    TX_DV_i : in STD_LOGIC;
    TX_count_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_i : in STD_LOGIC;
    SPI_MISO_i : in STD_LOGIC;
    TX_byte_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rstn_i : in STD_LOGIC
  );
end spi_master_ip_SPI_Master_With_Single_CS;

architecture STRUCTURE of spi_master_ip_SPI_Master_With_Single_CS is
  signal \CS_Inactive_Count_r[-1]_i_1_n_0\ : STD_LOGIC;
  signal \CS_Inactive_Count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \CS_Inactive_Count_r_reg[-_n_0_1]\ : STD_LOGIC;
  signal \CS_Inactive_Count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \^cs_r_reg_0\ : STD_LOGIC;
  signal \FSM_onehot_SM_CS_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SM_CS_r[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SM_CS_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_SM_CS_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_SM_CS_r_reg_n_0_[2]\ : STD_LOGIC;
  signal Master_Ready_w : STD_LOGIC;
  signal \^rx_dv_o\ : STD_LOGIC;
  signal \^rx_count_o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \SM_CS_r0__0\ : STD_LOGIC;
  signal \SM_CS_r1__2\ : STD_LOGIC;
  signal SPI_Master_Inst_n_1 : STD_LOGIC;
  signal SPI_Master_Inst_n_10 : STD_LOGIC;
  signal SPI_Master_Inst_n_5 : STD_LOGIC;
  signal SPI_Master_Inst_n_6 : STD_LOGIC;
  signal SPI_Master_Inst_n_7 : STD_LOGIC;
  signal TX_Count_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TX_Count_r0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \TX_Count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \TX_Count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \TX_Count_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \TX_Count_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \TX_Count_r[3]_i_4_n_0\ : STD_LOGIC;
  signal TX_Count_r_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_SM_CS_r[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_SM_CS_r[2]_i_3\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_CS_r_reg[0]\ : label is "S_IDLE:001,S_TRANSFER:010,S_CS_INACTIVE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_CS_r_reg[1]\ : label is "S_IDLE:001,S_TRANSFER:010,S_CS_INACTIVE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_CS_r_reg[2]\ : label is "S_IDLE:001,S_TRANSFER:010,S_CS_INACTIVE:100,";
  attribute SOFT_HLUTNM of \RX_count_o[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \RX_count_o[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \RX_count_o[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \RX_count_o[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \TX_Count_r[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \TX_Count_r[3]_i_3\ : label is "soft_lutpair10";
begin
  CS_r_reg_0 <= \^cs_r_reg_0\;
  RX_DV_o <= \^rx_dv_o\;
  RX_count_o(3 downto 0) <= \^rx_count_o\(3 downto 0);
\CS_Inactive_Count_r[-1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000020DF00DF00"
    )
        port map (
      I0 => Master_Ready_w,
      I1 => \SM_CS_r1__2\,
      I2 => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      I3 => \CS_Inactive_Count_r_reg[-_n_0_1]\,
      I4 => \CS_Inactive_Count_r_reg_n_0_[0]\,
      I5 => \FSM_onehot_SM_CS_r_reg_n_0_[2]\,
      O => \CS_Inactive_Count_r[-1]_i_1_n_0\
    );
\CS_Inactive_Count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF20FFFF2020"
    )
        port map (
      I0 => Master_Ready_w,
      I1 => \SM_CS_r1__2\,
      I2 => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      I3 => \CS_Inactive_Count_r_reg[-_n_0_1]\,
      I4 => \CS_Inactive_Count_r_reg_n_0_[0]\,
      I5 => \FSM_onehot_SM_CS_r_reg_n_0_[2]\,
      O => \CS_Inactive_Count_r[0]_i_1_n_0\
    );
\CS_Inactive_Count_r_reg[-1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => \CS_Inactive_Count_r[-1]_i_1_n_0\,
      Q => \CS_Inactive_Count_r_reg[-_n_0_1]\
    );
\CS_Inactive_Count_r_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => \CS_Inactive_Count_r[0]_i_1_n_0\,
      PRE => SPI_Master_Inst_n_1,
      Q => \CS_Inactive_Count_r_reg_n_0_[0]\
    );
CS_r_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_i,
      CE => '1',
      D => SPI_Master_Inst_n_10,
      PRE => SPI_Master_Inst_n_1,
      Q => \^cs_r_reg_0\
    );
\FSM_onehot_SM_CS_r[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_SM_CS_r_reg_n_0_[2]\,
      I1 => \CS_Inactive_Count_r_reg_n_0_[0]\,
      I2 => \CS_Inactive_Count_r_reg[-_n_0_1]\,
      O => \FSM_onehot_SM_CS_r[1]_i_2_n_0\
    );
\FSM_onehot_SM_CS_r[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^cs_r_reg_0\,
      I1 => TX_DV_i,
      O => \SM_CS_r0__0\
    );
\FSM_onehot_SM_CS_r[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \CS_Inactive_Count_r_reg[-_n_0_1]\,
      I1 => \CS_Inactive_Count_r_reg_n_0_[0]\,
      O => \FSM_onehot_SM_CS_r[2]_i_3_n_0\
    );
\FSM_onehot_SM_CS_r_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => SPI_Master_Inst_n_7,
      PRE => SPI_Master_Inst_n_1,
      Q => \FSM_onehot_SM_CS_r_reg_n_0_[0]\
    );
\FSM_onehot_SM_CS_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => SPI_Master_Inst_n_6,
      Q => \FSM_onehot_SM_CS_r_reg_n_0_[1]\
    );
\FSM_onehot_SM_CS_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      CLR => SPI_Master_Inst_n_1,
      D => SPI_Master_Inst_n_5,
      Q => \FSM_onehot_SM_CS_r_reg_n_0_[2]\
    );
\RX_count_o[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_count_o\(0),
      O => p_0_in(0)
    );
\RX_count_o[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rx_count_o\(0),
      I1 => \^rx_count_o\(1),
      O => p_0_in(1)
    );
\RX_count_o[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^rx_count_o\(0),
      I1 => \^rx_count_o\(1),
      I2 => \^rx_count_o\(2),
      O => p_0_in(2)
    );
\RX_count_o[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^rx_count_o\(1),
      I1 => \^rx_count_o\(0),
      I2 => \^rx_count_o\(2),
      I3 => \^rx_count_o\(3),
      O => p_0_in(3)
    );
\RX_count_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^rx_dv_o\,
      D => p_0_in(0),
      Q => \^rx_count_o\(0),
      R => \^cs_r_reg_0\
    );
\RX_count_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^rx_dv_o\,
      D => p_0_in(1),
      Q => \^rx_count_o\(1),
      R => \^cs_r_reg_0\
    );
\RX_count_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^rx_dv_o\,
      D => p_0_in(2),
      Q => \^rx_count_o\(2),
      R => \^cs_r_reg_0\
    );
\RX_count_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^rx_dv_o\,
      D => p_0_in(3),
      Q => \^rx_count_o\(3),
      R => \^cs_r_reg_0\
    );
SPI_Master_Inst: entity work.spi_master_ip_SPI_Master
     port map (
      CS_r_reg(0) => TX_Count_r_0,
      CS_r_reg_0 => SPI_Master_Inst_n_10,
      E(0) => \^rx_dv_o\,
      \FSM_onehot_SM_CS_r_reg[0]\ => SPI_Master_Inst_n_5,
      \FSM_onehot_SM_CS_r_reg[0]_0\ => SPI_Master_Inst_n_6,
      \FSM_onehot_SM_CS_r_reg[0]_1\ => SPI_Master_Inst_n_7,
      \FSM_onehot_SM_CS_r_reg[1]\ => \FSM_onehot_SM_CS_r[1]_i_2_n_0\,
      \FSM_onehot_SM_CS_r_reg[2]\ => \FSM_onehot_SM_CS_r_reg_n_0_[0]\,
      \FSM_onehot_SM_CS_r_reg[2]_0\ => \FSM_onehot_SM_CS_r_reg_n_0_[2]\,
      \FSM_onehot_SM_CS_r_reg[2]_1\ => \FSM_onehot_SM_CS_r[2]_i_3_n_0\,
      \FSM_onehot_SM_CS_r_reg[2]_2\ => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      Master_Ready_w => Master_Ready_w,
      Q(3 downto 0) => TX_Count_r(3 downto 0),
      RX_byte_o(7 downto 0) => RX_byte_o(7 downto 0),
      \SM_CS_r0__0\ => \SM_CS_r0__0\,
      \SM_CS_r1__2\ => \SM_CS_r1__2\,
      SPI_MISO_i => SPI_MISO_i,
      SPI_MOSI_o => SPI_MOSI_o,
      SPI_clk_o => SPI_clk_o,
      SR(0) => \^cs_r_reg_0\,
      TX_DV_i => TX_DV_i,
      TX_byte_i(7 downto 0) => TX_byte_i(7 downto 0),
      TX_ready_o => TX_ready_o,
      clk_i => clk_i,
      rstn_i => rstn_i,
      rstn_i_0 => SPI_Master_Inst_n_1
    );
\TX_Count_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      I1 => TX_Count_r(0),
      I2 => \FSM_onehot_SM_CS_r_reg_n_0_[0]\,
      I3 => TX_count_i(0),
      O => TX_Count_r0_in(0)
    );
\TX_Count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECAF5FE313AF5F"
    )
        port map (
      I0 => TX_Count_r(0),
      I1 => TX_count_i(0),
      I2 => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      I3 => TX_Count_r(1),
      I4 => \FSM_onehot_SM_CS_r_reg_n_0_[0]\,
      I5 => TX_count_i(1),
      O => \TX_Count_r[1]_i_1_n_0\
    );
\TX_Count_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA959595"
    )
        port map (
      I0 => \TX_Count_r[3]_i_4_n_0\,
      I1 => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      I2 => TX_Count_r(2),
      I3 => \FSM_onehot_SM_CS_r_reg_n_0_[0]\,
      I4 => TX_count_i(2),
      O => \TX_Count_r[2]_i_1_n_0\
    );
\TX_Count_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE111E111E111"
    )
        port map (
      I0 => \TX_Count_r[3]_i_3_n_0\,
      I1 => \TX_Count_r[3]_i_4_n_0\,
      I2 => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      I3 => TX_Count_r(3),
      I4 => \FSM_onehot_SM_CS_r_reg_n_0_[0]\,
      I5 => TX_count_i(3),
      O => \TX_Count_r[3]_i_2_n_0\
    );
\TX_Count_r[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => TX_count_i(2),
      I1 => \FSM_onehot_SM_CS_r_reg_n_0_[0]\,
      I2 => TX_Count_r(2),
      I3 => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      O => \TX_Count_r[3]_i_3_n_0\
    );
\TX_Count_r[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0A0FCECF0A0"
    )
        port map (
      I0 => TX_Count_r(0),
      I1 => TX_count_i(0),
      I2 => \FSM_onehot_SM_CS_r_reg_n_0_[1]\,
      I3 => TX_Count_r(1),
      I4 => \FSM_onehot_SM_CS_r_reg_n_0_[0]\,
      I5 => TX_count_i(1),
      O => \TX_Count_r[3]_i_4_n_0\
    );
\TX_Count_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_Count_r_0,
      CLR => SPI_Master_Inst_n_1,
      D => TX_Count_r0_in(0),
      Q => TX_Count_r(0)
    );
\TX_Count_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_Count_r_0,
      CLR => SPI_Master_Inst_n_1,
      D => \TX_Count_r[1]_i_1_n_0\,
      Q => TX_Count_r(1)
    );
\TX_Count_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_Count_r_0,
      CLR => SPI_Master_Inst_n_1,
      D => \TX_Count_r[2]_i_1_n_0\,
      Q => TX_Count_r(2)
    );
\TX_Count_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_i,
      CE => TX_Count_r_0,
      CLR => SPI_Master_Inst_n_1,
      D => \TX_Count_r[3]_i_2_n_0\,
      Q => TX_Count_r(3)
    );
TX_ready_o_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => TX_Count_r(2),
      I1 => TX_Count_r(1),
      I2 => TX_Count_r(0),
      I3 => TX_Count_r(3),
      O => \SM_CS_r1__2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_master_ip is
  port (
    rstn_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    TX_count_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TX_byte_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_DV_i : in STD_LOGIC;
    TX_ready_o : out STD_LOGIC;
    RX_count_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RX_DV_o : out STD_LOGIC;
    RX_byte_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SPI_clk_o : out STD_LOGIC;
    SPI_MISO_i : in STD_LOGIC;
    SPI_MOSI_o : out STD_LOGIC;
    SPI_CS_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of spi_master_ip : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of spi_master_ip : entity is "spi_master_ip,SPI_Master_With_Single_CS,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of spi_master_ip : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of spi_master_ip : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of spi_master_ip : entity is "SPI_Master_With_Single_CS,Vivado 2021.1";
end spi_master_ip;

architecture STRUCTURE of spi_master_ip is
begin
inst: entity work.spi_master_ip_SPI_Master_With_Single_CS
     port map (
      CS_r_reg_0 => SPI_CS_o,
      RX_DV_o => RX_DV_o,
      RX_byte_o(7 downto 0) => RX_byte_o(7 downto 0),
      RX_count_o(3 downto 0) => RX_count_o(3 downto 0),
      SPI_MISO_i => SPI_MISO_i,
      SPI_MOSI_o => SPI_MOSI_o,
      SPI_clk_o => SPI_clk_o,
      TX_DV_i => TX_DV_i,
      TX_byte_i(7 downto 0) => TX_byte_i(7 downto 0),
      TX_count_i(3 downto 0) => TX_count_i(3 downto 0),
      TX_ready_o => TX_ready_o,
      clk_i => clk_i,
      rstn_i => rstn_i
    );
end STRUCTURE;
