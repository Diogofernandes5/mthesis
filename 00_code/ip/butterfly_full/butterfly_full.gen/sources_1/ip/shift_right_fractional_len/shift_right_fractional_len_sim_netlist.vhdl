-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Nov 10 00:56:38 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/ip/butterfly_full/butterfly_full.gen/sources_1/ip/shift_right_fractional_len/shift_right_fractional_len_sim_netlist.vhdl
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
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shift_right_fractional_len_shift_right : entity is "shift_right";
end shift_right_fractional_len_shift_right;

architecture STRUCTURE of shift_right_fractional_len_shift_right is
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__2_n_0\ : STD_LOGIC;
  signal \_carry__2_n_1\ : STD_LOGIC;
  signal \_carry__2_n_2\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry__3_n_0\ : STD_LOGIC;
  signal \_carry__3_n_1\ : STD_LOGIC;
  signal \_carry__3_n_2\ : STD_LOGIC;
  signal \_carry__3_n_3\ : STD_LOGIC;
  signal \_carry__4_n_0\ : STD_LOGIC;
  signal \_carry__4_n_1\ : STD_LOGIC;
  signal \_carry__4_n_2\ : STD_LOGIC;
  signal \_carry__4_n_3\ : STD_LOGIC;
  signal \_carry_i_1_n_0\ : STD_LOGIC;
  signal \_carry_i_2_n_0\ : STD_LOGIC;
  signal \_carry_i_3_n_0\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \NLW__carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => data_in(8),
      O(3 downto 0) => data_out(3 downto 0),
      S(3 downto 1) => data_in(11 downto 9),
      S(0) => \_carry_i_1_n_0\
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(7 downto 4),
      S(3 downto 0) => data_in(15 downto 12)
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(11 downto 8),
      S(3 downto 0) => data_in(19 downto 16)
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3) => \_carry__2_n_0\,
      CO(2) => \_carry__2_n_1\,
      CO(1) => \_carry__2_n_2\,
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(15 downto 12),
      S(3 downto 0) => data_in(23 downto 20)
    );
\_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__2_n_0\,
      CO(3) => \_carry__3_n_0\,
      CO(2) => \_carry__3_n_1\,
      CO(1) => \_carry__3_n_2\,
      CO(0) => \_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out(19 downto 16),
      S(3 downto 0) => data_in(27 downto 24)
    );
\_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__3_n_0\,
      CO(3) => \_carry__4_n_0\,
      CO(2) => \_carry__4_n_1\,
      CO(1) => \_carry__4_n_2\,
      CO(0) => \_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3 downto 0) => data_out(23 downto 20),
      S(3 downto 0) => data_in(31 downto 28)
    );
\_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__4_n_0\,
      CO(3 downto 0) => \NLW__carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW__carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => data_out(24),
      S(3 downto 0) => B"0001"
    );
\_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \_carry_i_2_n_0\,
      I1 => \_carry_i_3_n_0\,
      I2 => data_in(31),
      I3 => data_in(8),
      O => \_carry_i_1_n_0\
    );
\_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(6),
      I2 => data_in(4),
      I3 => data_in(5),
      O => \_carry_i_2_n_0\
    );
\_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      I2 => data_in(0),
      I3 => data_in(1),
      O => \_carry_i_3_n_0\
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
  signal \^data_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  data_out(31) <= \^data_out\(31);
  data_out(30) <= \^data_out\(31);
  data_out(29) <= \^data_out\(31);
  data_out(28) <= \^data_out\(31);
  data_out(27) <= \^data_out\(31);
  data_out(26) <= \^data_out\(31);
  data_out(25) <= \^data_out\(31);
  data_out(24) <= \^data_out\(31);
  data_out(23 downto 0) <= \^data_out\(23 downto 0);
inst: entity work.shift_right_fractional_len_shift_right
     port map (
      data_in(31 downto 0) => data_in(31 downto 0),
      data_out(24) => \^data_out\(31),
      data_out(23 downto 0) => \^data_out\(23 downto 0)
    );
end STRUCTURE;
