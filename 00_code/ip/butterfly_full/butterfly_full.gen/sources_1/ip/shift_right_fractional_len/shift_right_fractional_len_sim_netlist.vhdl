-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Nov  8 01:09:08 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top shift_right_fractional_len -prefix
--               shift_right_fractional_len_ shift_right_fractional_len_sim_netlist.vhdl
-- Design      : shift_right_fractional_len
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_right_fractional_len_shift_right is
  port (
    data_out : out STD_LOGIC_VECTOR ( 24 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end shift_right_fractional_len_shift_right;

architecture STRUCTURE of shift_right_fractional_len_shift_right is
  signal \data_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_out[0]_INST_0_n_0\ : STD_LOGIC;
  signal \data_out[0]_INST_0_n_1\ : STD_LOGIC;
  signal \data_out[0]_INST_0_n_2\ : STD_LOGIC;
  signal \data_out[0]_INST_0_n_3\ : STD_LOGIC;
  signal \data_out[12]_INST_0_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_n_1\ : STD_LOGIC;
  signal \data_out[12]_INST_0_n_2\ : STD_LOGIC;
  signal \data_out[12]_INST_0_n_3\ : STD_LOGIC;
  signal \data_out[16]_INST_0_n_0\ : STD_LOGIC;
  signal \data_out[16]_INST_0_n_1\ : STD_LOGIC;
  signal \data_out[16]_INST_0_n_2\ : STD_LOGIC;
  signal \data_out[16]_INST_0_n_3\ : STD_LOGIC;
  signal \data_out[20]_INST_0_n_0\ : STD_LOGIC;
  signal \data_out[20]_INST_0_n_1\ : STD_LOGIC;
  signal \data_out[20]_INST_0_n_2\ : STD_LOGIC;
  signal \data_out[20]_INST_0_n_3\ : STD_LOGIC;
  signal \data_out[4]_INST_0_n_0\ : STD_LOGIC;
  signal \data_out[4]_INST_0_n_1\ : STD_LOGIC;
  signal \data_out[4]_INST_0_n_2\ : STD_LOGIC;
  signal \data_out[4]_INST_0_n_3\ : STD_LOGIC;
  signal \data_out[8]_INST_0_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_n_1\ : STD_LOGIC;
  signal \data_out[8]_INST_0_n_2\ : STD_LOGIC;
  signal \data_out[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_data_out[24]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_out[24]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\data_out[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_out[0]_INST_0_n_0\,
      CO(2) => \data_out[0]_INST_0_n_1\,
      CO(1) => \data_out[0]_INST_0_n_2\,
      CO(0) => \data_out[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => data_in(0),
      O(3 downto 0) => data_out(3 downto 0),
      S(3 downto 1) => data_in(3 downto 1),
      S(0) => \data_out[0]_INST_0_i_1_n_0\
    );
\data_out[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(23),
      O => \data_out[0]_INST_0_i_1_n_0\
    );
\data_out[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[8]_INST_0_n_0\,
      CO(3) => \data_out[12]_INST_0_n_0\,
      CO(2) => \data_out[12]_INST_0_n_1\,
      CO(1) => \data_out[12]_INST_0_n_2\,
      CO(0) => \data_out[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(15 downto 12),
      S(3 downto 0) => data_in(15 downto 12)
    );
\data_out[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[12]_INST_0_n_0\,
      CO(3) => \data_out[16]_INST_0_n_0\,
      CO(2) => \data_out[16]_INST_0_n_1\,
      CO(1) => \data_out[16]_INST_0_n_2\,
      CO(0) => \data_out[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(19 downto 16),
      S(3 downto 0) => data_in(19 downto 16)
    );
\data_out[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[16]_INST_0_n_0\,
      CO(3) => \data_out[20]_INST_0_n_0\,
      CO(2) => \data_out[20]_INST_0_n_1\,
      CO(1) => \data_out[20]_INST_0_n_2\,
      CO(0) => \data_out[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(23 downto 20),
      S(3 downto 0) => data_in(23 downto 20)
    );
\data_out[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[20]_INST_0_n_0\,
      CO(3 downto 1) => \NLW_data_out[24]_INST_0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => data_out(24),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_data_out[24]_INST_0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\data_out[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[0]_INST_0_n_0\,
      CO(3) => \data_out[4]_INST_0_n_0\,
      CO(2) => \data_out[4]_INST_0_n_1\,
      CO(1) => \data_out[4]_INST_0_n_2\,
      CO(0) => \data_out[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(7 downto 4),
      S(3 downto 0) => data_in(7 downto 4)
    );
\data_out[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[4]_INST_0_n_0\,
      CO(3) => \data_out[8]_INST_0_n_0\,
      CO(2) => \data_out[8]_INST_0_n_1\,
      CO(1) => \data_out[8]_INST_0_n_2\,
      CO(0) => \data_out[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(11 downto 8),
      S(3 downto 0) => data_in(11 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_right_fractional_len is
  port (
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of shift_right_fractional_len : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shift_right_fractional_len : entity is "shift_right_fractional_len,shift_right,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shift_right_fractional_len : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of shift_right_fractional_len : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shift_right_fractional_len : entity is "shift_right,Vivado 2021.1";
end shift_right_fractional_len;

architecture STRUCTURE of shift_right_fractional_len is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 24 downto 0 );
begin
  data_out(31) <= \<const0>\;
  data_out(30) <= \<const0>\;
  data_out(29) <= \<const0>\;
  data_out(28) <= \<const0>\;
  data_out(27) <= \<const0>\;
  data_out(26) <= \<const0>\;
  data_out(25) <= \<const0>\;
  data_out(24 downto 0) <= \^data_out\(24 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.shift_right_fractional_len_shift_right
     port map (
      data_in(23 downto 0) => data_in(31 downto 8),
      data_out(24 downto 0) => \^data_out\(24 downto 0)
    );
end STRUCTURE;
