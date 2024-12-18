-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Nov  5 00:38:27 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/tests/fft_architecture/fft_architecture.gen/sources_1/ip/fft_control_unit/fft_control_unit_sim_netlist.vhdl
-- Design      : fft_control_unit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_adder_subtracter32bit is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit_adder_subtracter32bit : entity is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit_adder_subtracter32bit : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit_adder_subtracter32bit : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_adder_subtracter32bit : entity is "adder_subtracter32bit";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit_adder_subtracter32bit : entity is "adder_subtracter32,Vivado 2021.1";
end fft_control_unit_adder_subtracter32bit;

architecture STRUCTURE of fft_control_unit_adder_subtracter32bit is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/c_out_1\ : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r[3]_INST_0_i_1\ : label is "soft_lutpair1";
begin
  r(31) <= \<const0>\;
  r(30) <= \<const0>\;
  r(29) <= \<const0>\;
  r(28) <= \<const0>\;
  r(27) <= \<const0>\;
  r(26) <= \<const0>\;
  r(25) <= \<const0>\;
  r(24) <= \<const0>\;
  r(23) <= \<const0>\;
  r(22) <= \<const0>\;
  r(21) <= \<const0>\;
  r(20) <= \<const0>\;
  r(19) <= \<const0>\;
  r(18) <= \<const0>\;
  r(17) <= \<const0>\;
  r(16) <= \<const0>\;
  r(15) <= \<const0>\;
  r(14) <= \<const0>\;
  r(13) <= \<const0>\;
  r(12) <= \<const0>\;
  r(11) <= \<const0>\;
  r(10) <= \<const0>\;
  r(9) <= \<const0>\;
  r(8) <= \<const0>\;
  r(7) <= \<const0>\;
  r(6) <= \<const0>\;
  r(5) <= \<const0>\;
  r(4) <= \<const0>\;
  r(3 downto 0) <= \^r\(3 downto 0);
  v <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\r[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      O => \^r\(0)
    );
\r[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      O => \^r\(1)
    );
\r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      I4 => x(2),
      I5 => y(2),
      O => \^r\(2)
    );
\r[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_1\,
      I1 => x(2),
      I2 => y(2),
      I3 => x(3),
      I4 => y(3),
      O => \^r\(3)
    );
\r[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => y(1),
      I1 => x(1),
      I2 => x(0),
      I3 => y(0),
      O => \inst/c_out_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_control_unit_adder_subtracter32bit__1\ is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_control_unit_adder_subtracter32bit__1\ : entity is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_control_unit_adder_subtracter32bit__1\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_control_unit_adder_subtracter32bit__1\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_control_unit_adder_subtracter32bit__1\ : entity is "adder_subtracter32bit";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_control_unit_adder_subtracter32bit__1\ : entity is "adder_subtracter32,Vivado 2021.1";
end \fft_control_unit_adder_subtracter32bit__1\;

architecture STRUCTURE of \fft_control_unit_adder_subtracter32bit__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^y\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r[3]_INST_0\ : label is "soft_lutpair0";
begin
  \^y\(2 downto 0) <= y(2 downto 0);
  r(31) <= \<const0>\;
  r(30) <= \<const0>\;
  r(29) <= \<const0>\;
  r(28) <= \<const0>\;
  r(27) <= \<const0>\;
  r(26) <= \<const0>\;
  r(25) <= \<const0>\;
  r(24) <= \<const0>\;
  r(23) <= \<const0>\;
  r(22) <= \<const0>\;
  r(21) <= \<const0>\;
  r(20) <= \<const0>\;
  r(19) <= \<const0>\;
  r(18) <= \<const0>\;
  r(17) <= \<const0>\;
  r(16) <= \<const0>\;
  r(15) <= \<const0>\;
  r(14) <= \<const0>\;
  r(13) <= \<const0>\;
  r(12) <= \<const0>\;
  r(11) <= \<const0>\;
  r(10) <= \<const0>\;
  r(9) <= \<const0>\;
  r(8) <= \<const0>\;
  r(7) <= \<const0>\;
  r(6) <= \<const0>\;
  r(5) <= \<const0>\;
  r(4) <= \<const0>\;
  r(3 downto 1) <= \^r\(3 downto 1);
  r(0) <= \^y\(0);
  v <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\r[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^y\(1),
      I1 => x(1),
      O => \^r\(1)
    );
\r[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \^y\(1),
      I1 => x(1),
      I2 => x(2),
      I3 => \^y\(2),
      O => \^r\(2)
    );
\r[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"077FF880"
    )
        port map (
      I0 => \^y\(1),
      I1 => x(1),
      I2 => x(2),
      I3 => \^y\(2),
      I4 => x(3),
      O => \^r\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_divu_int is
  port (
    val : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_divu_int : entity is "divu_int";
end fft_control_unit_divu_int;

architecture STRUCTURE of fft_control_unit_divu_int is
  signal acc : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \acc[10]_i_1_n_0\ : STD_LOGIC;
  signal \acc[10]_i_3_n_0\ : STD_LOGIC;
  signal \acc[10]_i_4_n_0\ : STD_LOGIC;
  signal \acc[1]_i_1_n_0\ : STD_LOGIC;
  signal \acc[2]_i_1_n_0\ : STD_LOGIC;
  signal \acc[3]_i_1_n_0\ : STD_LOGIC;
  signal \acc[4]_i_1_n_0\ : STD_LOGIC;
  signal \acc[4]_i_3_n_0\ : STD_LOGIC;
  signal \acc[4]_i_4_n_0\ : STD_LOGIC;
  signal \acc[4]_i_5_n_0\ : STD_LOGIC;
  signal \acc[4]_i_6_n_0\ : STD_LOGIC;
  signal \acc[5]_i_1_n_0\ : STD_LOGIC;
  signal \acc[6]_i_1_n_0\ : STD_LOGIC;
  signal \acc[7]_i_1_n_0\ : STD_LOGIC;
  signal \acc[8]_i_1_n_0\ : STD_LOGIC;
  signal \acc[8]_i_3_n_0\ : STD_LOGIC;
  signal \acc[8]_i_4_n_0\ : STD_LOGIC;
  signal \acc[8]_i_5_n_0\ : STD_LOGIC;
  signal \acc[8]_i_6_n_0\ : STD_LOGIC;
  signal \acc[9]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \acc_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \acc_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \acc_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \acc_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \acc_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \acc_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \acc_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \acc_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal b1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \b1[3]_i_1_n_0\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal busy_i_3_n_0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal i : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_2_in0 : STD_LOGIC;
  signal \quo[0]_i_1_n_0\ : STD_LOGIC;
  signal \quo[0]_i_2_n_0\ : STD_LOGIC;
  signal \quo[4]_i_1_n_0\ : STD_LOGIC;
  signal quo_next : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal quo_next0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal quo_next1 : STD_LOGIC;
  signal \quo_next1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \quo_next1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \quo_next1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \quo_next1_carry__0_n_3\ : STD_LOGIC;
  signal quo_next1_carry_i_1_n_0 : STD_LOGIC;
  signal quo_next1_carry_i_2_n_0 : STD_LOGIC;
  signal quo_next1_carry_i_3_n_0 : STD_LOGIC;
  signal quo_next1_carry_i_4_n_0 : STD_LOGIC;
  signal quo_next1_carry_i_5_n_0 : STD_LOGIC;
  signal quo_next1_carry_i_6_n_0 : STD_LOGIC;
  signal quo_next1_carry_i_7_n_0 : STD_LOGIC;
  signal quo_next1_carry_i_8_n_0 : STD_LOGIC;
  signal quo_next1_carry_n_0 : STD_LOGIC;
  signal quo_next1_carry_n_1 : STD_LOGIC;
  signal quo_next1_carry_n_2 : STD_LOGIC;
  signal quo_next1_carry_n_3 : STD_LOGIC;
  signal \^val\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \val[0]_i_1_n_0\ : STD_LOGIC;
  signal \val[1]_i_1_n_0\ : STD_LOGIC;
  signal \val[2]_i_1_n_0\ : STD_LOGIC;
  signal \val[2]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_acc_reg[10]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_acc_reg[10]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_quo_next1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_quo_next1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_quo_next1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \acc_reg[10]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i[3]_i_2\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of quo_next1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \quo_next1_carry__0\ : label is 11;
begin
  val(2 downto 0) <= \^val\(2 downto 0);
\acc[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(9),
      I2 => quo_next1,
      I3 => acc(9),
      O => \acc[10]_i_1_n_0\
    );
\acc[10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(9),
      O => \acc[10]_i_3_n_0\
    );
\acc[10]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(8),
      O => \acc[10]_i_4_n_0\
    );
\acc[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(0),
      I2 => quo_next1,
      I3 => acc(0),
      O => \acc[1]_i_1_n_0\
    );
\acc[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(1),
      I2 => quo_next1,
      I3 => acc(1),
      O => \acc[2]_i_1_n_0\
    );
\acc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(2),
      I2 => quo_next1,
      I3 => acc(2),
      O => \acc[3]_i_1_n_0\
    );
\acc[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(3),
      I2 => quo_next1,
      I3 => acc(3),
      O => \acc[4]_i_1_n_0\
    );
\acc[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(3),
      I1 => b1(3),
      O => \acc[4]_i_3_n_0\
    );
\acc[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(2),
      I1 => b1(2),
      O => \acc[4]_i_4_n_0\
    );
\acc[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(1),
      I1 => b1(1),
      O => \acc[4]_i_5_n_0\
    );
\acc[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(0),
      I1 => b1(0),
      O => \acc[4]_i_6_n_0\
    );
\acc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(4),
      I2 => quo_next1,
      I3 => acc(4),
      O => \acc[5]_i_1_n_0\
    );
\acc[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(5),
      I2 => quo_next1,
      I3 => acc(5),
      O => \acc[6]_i_1_n_0\
    );
\acc[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(6),
      I2 => quo_next1,
      I3 => acc(6),
      O => \acc[7]_i_1_n_0\
    );
\acc[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(7),
      I2 => quo_next1,
      I3 => acc(7),
      O => \acc[8]_i_1_n_0\
    );
\acc[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(7),
      O => \acc[8]_i_3_n_0\
    );
\acc[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(6),
      O => \acc[8]_i_4_n_0\
    );
\acc[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(5),
      O => \acc[8]_i_5_n_0\
    );
\acc[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(4),
      O => \acc[8]_i_6_n_0\
    );
\acc[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => start,
      I1 => quo_next0(8),
      I2 => quo_next1,
      I3 => acc(8),
      O => \acc[9]_i_1_n_0\
    );
\acc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => p_2_in0,
      Q => acc(0),
      R => \quo[0]_i_1_n_0\
    );
\acc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[10]_i_1_n_0\,
      Q => acc(10),
      R => '0'
    );
\acc_reg[10]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[8]_i_2_n_0\,
      CO(3 downto 1) => \NLW_acc_reg[10]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \acc_reg[10]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => acc(8),
      O(3 downto 2) => \NLW_acc_reg[10]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => quo_next0(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \acc[10]_i_3_n_0\,
      S(0) => \acc[10]_i_4_n_0\
    );
\acc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[1]_i_1_n_0\,
      Q => acc(1),
      R => '0'
    );
\acc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[2]_i_1_n_0\,
      Q => acc(2),
      R => '0'
    );
\acc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[3]_i_1_n_0\,
      Q => acc(3),
      R => '0'
    );
\acc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[4]_i_1_n_0\,
      Q => acc(4),
      R => '0'
    );
\acc_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_reg[4]_i_2_n_0\,
      CO(2) => \acc_reg[4]_i_2_n_1\,
      CO(1) => \acc_reg[4]_i_2_n_2\,
      CO(0) => \acc_reg[4]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => acc(3 downto 0),
      O(3 downto 0) => quo_next0(3 downto 0),
      S(3) => \acc[4]_i_3_n_0\,
      S(2) => \acc[4]_i_4_n_0\,
      S(1) => \acc[4]_i_5_n_0\,
      S(0) => \acc[4]_i_6_n_0\
    );
\acc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[5]_i_1_n_0\,
      Q => acc(5),
      R => '0'
    );
\acc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[6]_i_1_n_0\,
      Q => acc(6),
      R => '0'
    );
\acc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[7]_i_1_n_0\,
      Q => acc(7),
      R => '0'
    );
\acc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[8]_i_1_n_0\,
      Q => acc(8),
      R => '0'
    );
\acc_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[4]_i_2_n_0\,
      CO(3) => \acc_reg[8]_i_2_n_0\,
      CO(2) => \acc_reg[8]_i_2_n_1\,
      CO(1) => \acc_reg[8]_i_2_n_2\,
      CO(0) => \acc_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc(7 downto 4),
      O(3 downto 0) => quo_next0(7 downto 4),
      S(3) => \acc[8]_i_3_n_0\,
      S(2) => \acc[8]_i_4_n_0\,
      S(1) => \acc[8]_i_5_n_0\,
      S(0) => \acc[8]_i_6_n_0\
    );
\acc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => \acc[9]_i_1_n_0\,
      Q => acc(9),
      R => '0'
    );
\b1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => start,
      I1 => b(2),
      I2 => b(1),
      I3 => b(0),
      I4 => b(3),
      O => \b1[3]_i_1_n_0\
    );
\b1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[3]_i_1_n_0\,
      D => b(0),
      Q => b1(0),
      R => '0'
    );
\b1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[3]_i_1_n_0\,
      D => b(1),
      Q => b1(1),
      R => '0'
    );
\b1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[3]_i_1_n_0\,
      D => b(2),
      Q => b1(2),
      R => '0'
    );
\b1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[3]_i_1_n_0\,
      D => b(3),
      Q => b1(3),
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F202F2F2"
    )
        port map (
      I0 => busy_reg_n_0,
      I1 => busy_i_2_n_0,
      I2 => start,
      I3 => b(3),
      I4 => busy_i_3_n_0,
      I5 => rst,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => busy_reg_n_0,
      I1 => i_reg(3),
      I2 => i_reg(0),
      I3 => i_reg(2),
      I4 => i_reg(1),
      O => busy_i_2_n_0
    );
busy_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => b(2),
      O => busy_i_3_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => busy_reg_n_0,
      R => '0'
    );
\i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      O => \i[0]_i_1_n_0\
    );
\i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => p_0_in(1)
    );
\i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      O => p_0_in(2)
    );
\i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => busy_reg_n_0,
      I1 => i_reg(2),
      I2 => i_reg(1),
      I3 => i_reg(0),
      I4 => i_reg(3),
      O => i
    );
\i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i_reg(1),
      I1 => i_reg(0),
      I2 => i_reg(2),
      I3 => i_reg(3),
      O => p_0_in(3)
    );
\i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => i,
      D => \i[0]_i_1_n_0\,
      Q => i_reg(0),
      R => start
    );
\i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => i,
      D => p_0_in(1),
      Q => i_reg(1),
      R => start
    );
\i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => i,
      D => p_0_in(2),
      Q => i_reg(2),
      R => start
    );
\i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => i,
      D => p_0_in(3),
      Q => i_reg(3),
      R => start
    );
\quo[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => start,
      I1 => \quo[0]_i_2_n_0\,
      O => \quo[0]_i_1_n_0\
    );
\quo[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => b(3),
      I1 => b(0),
      I2 => b(1),
      I3 => b(2),
      I4 => start,
      I5 => i,
      O => \quo[0]_i_2_n_0\
    );
\quo[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => start,
      I1 => quo_next(4),
      I2 => \quo[0]_i_2_n_0\,
      I3 => quo_next(5),
      O => \quo[4]_i_1_n_0\
    );
quo_next1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => quo_next1_carry_n_0,
      CO(2) => quo_next1_carry_n_1,
      CO(1) => quo_next1_carry_n_2,
      CO(0) => quo_next1_carry_n_3,
      CYINIT => '1',
      DI(3) => quo_next1_carry_i_1_n_0,
      DI(2) => quo_next1_carry_i_2_n_0,
      DI(1) => quo_next1_carry_i_3_n_0,
      DI(0) => quo_next1_carry_i_4_n_0,
      O(3 downto 0) => NLW_quo_next1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => quo_next1_carry_i_5_n_0,
      S(2) => quo_next1_carry_i_6_n_0,
      S(1) => quo_next1_carry_i_7_n_0,
      S(0) => quo_next1_carry_i_8_n_0
    );
\quo_next1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => quo_next1_carry_n_0,
      CO(3 downto 2) => \NLW_quo_next1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => quo_next1,
      CO(0) => \quo_next1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => acc(10),
      DI(0) => \quo_next1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_quo_next1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \quo_next1_carry__0_i_2_n_0\,
      S(0) => \quo_next1_carry__0_i_3_n_0\
    );
\quo_next1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => acc(8),
      I1 => acc(9),
      O => \quo_next1_carry__0_i_1_n_0\
    );
\quo_next1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(10),
      O => \quo_next1_carry__0_i_2_n_0\
    );
\quo_next1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(8),
      I1 => acc(9),
      O => \quo_next1_carry__0_i_3_n_0\
    );
quo_next1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => acc(6),
      I1 => acc(7),
      O => quo_next1_carry_i_1_n_0
    );
quo_next1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => acc(4),
      I1 => acc(5),
      O => quo_next1_carry_i_2_n_0
    );
quo_next1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acc(2),
      I1 => b1(2),
      I2 => b1(3),
      I3 => acc(3),
      O => quo_next1_carry_i_3_n_0
    );
quo_next1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acc(0),
      I1 => b1(0),
      I2 => b1(1),
      I3 => acc(1),
      O => quo_next1_carry_i_4_n_0
    );
quo_next1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(6),
      I1 => acc(7),
      O => quo_next1_carry_i_5_n_0
    );
quo_next1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc(4),
      I1 => acc(5),
      O => quo_next1_carry_i_6_n_0
    );
quo_next1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => acc(2),
      I1 => b1(2),
      I2 => acc(3),
      I3 => b1(3),
      O => quo_next1_carry_i_7_n_0
    );
quo_next1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => acc(0),
      I1 => b1(0),
      I2 => acc(1),
      I3 => b1(1),
      O => quo_next1_carry_i_8_n_0
    );
\quo_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next1,
      Q => quo_next(1),
      R => \quo[0]_i_1_n_0\
    );
\quo_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next(1),
      Q => quo_next(2),
      R => \quo[0]_i_1_n_0\
    );
\quo_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next(2),
      Q => quo_next(3),
      R => \quo[0]_i_1_n_0\
    );
\quo_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next(3),
      Q => quo_next(4),
      R => \quo[0]_i_1_n_0\
    );
\quo_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \quo[4]_i_1_n_0\,
      Q => quo_next(5),
      R => '0'
    );
\quo_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next(5),
      Q => quo_next(6),
      R => \quo[0]_i_1_n_0\
    );
\quo_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next(6),
      Q => quo_next(7),
      R => \quo[0]_i_1_n_0\
    );
\quo_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next(7),
      Q => quo_next(8),
      R => \quo[0]_i_1_n_0\
    );
\quo_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next(8),
      Q => quo_next(9),
      R => \quo[0]_i_1_n_0\
    );
\quo_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_2_n_0\,
      D => quo_next(9),
      Q => p_2_in0,
      R => \quo[0]_i_1_n_0\
    );
\val[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^val\(0),
      I1 => \val[2]_i_2_n_0\,
      I2 => quo_next1,
      I3 => rst,
      O => \val[0]_i_1_n_0\
    );
\val[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^val\(1),
      I1 => \val[2]_i_2_n_0\,
      I2 => quo_next(1),
      I3 => rst,
      O => \val[1]_i_1_n_0\
    );
\val[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^val\(2),
      I1 => \val[2]_i_2_n_0\,
      I2 => quo_next(2),
      I3 => rst,
      O => \val[2]_i_1_n_0\
    );
\val[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => i_reg(1),
      I1 => i_reg(2),
      I2 => i_reg(0),
      I3 => i_reg(3),
      I4 => busy_reg_n_0,
      I5 => start,
      O => \val[2]_i_2_n_0\
    );
\val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \val[0]_i_1_n_0\,
      Q => \^val\(0),
      R => '0'
    );
\val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \val[1]_i_1_n_0\,
      Q => \^val\(1),
      R => '0'
    );
\val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \val[2]_i_1_n_0\,
      Q => \^val\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_div_10bit is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    valid : out STD_LOGIC;
    dbz : out STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    b : in STD_LOGIC_VECTOR ( 9 downto 0 );
    val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \rem\ : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit_div_10bit : entity is "div_10bit,divu_int,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit_div_10bit : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit_div_10bit : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_div_10bit : entity is "div_10bit";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit_div_10bit : entity is "divu_int,Vivado 2021.1";
end fft_control_unit_div_10bit;

architecture STRUCTURE of fft_control_unit_div_10bit is
  signal \<const0>\ : STD_LOGIC;
  signal \^val\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  busy <= \<const0>\;
  dbz <= \<const0>\;
  done <= \<const0>\;
  \rem\(9) <= \<const0>\;
  \rem\(8) <= \<const0>\;
  \rem\(7) <= \<const0>\;
  \rem\(6) <= \<const0>\;
  \rem\(5) <= \<const0>\;
  \rem\(4) <= \<const0>\;
  \rem\(3) <= \<const0>\;
  \rem\(2) <= \<const0>\;
  \rem\(1) <= \<const0>\;
  \rem\(0) <= \<const0>\;
  val(9) <= \<const0>\;
  val(8) <= \<const0>\;
  val(7) <= \<const0>\;
  val(6) <= \<const0>\;
  val(5) <= \<const0>\;
  val(4) <= \<const0>\;
  val(3) <= \<const0>\;
  val(2 downto 0) <= \^val\(2 downto 0);
  valid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.fft_control_unit_divu_int
     port map (
      b(3 downto 0) => b(3 downto 0),
      clk => clk,
      rst => rst,
      start => start,
      val(2 downto 0) => \^val\(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_control_unit is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    start_i : in STD_LOGIC;
    src_sel_o : out STD_LOGIC;
    fft_ready_o : out STD_LOGIC;
    bf_ce_o : out STD_LOGIC;
    bram_addr_x0_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_x1_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_x0_we_o : out STD_LOGIC;
    bram_x1_we_o : out STD_LOGIC;
    bram_x0_en_o : out STD_LOGIC;
    bram_x1_en_o : out STD_LOGIC;
    twiddle_addr_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_counter : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute BF_OP_CYCLES : string;
  attribute BF_OP_CYCLES of fft_control_unit_control_unit : entity is "4'b1000";
  attribute BRAM_SIZE : integer;
  attribute BRAM_SIZE of fft_control_unit_control_unit : entity is 16;
  attribute DIV_CYCLES : string;
  attribute DIV_CYCLES of fft_control_unit_control_unit : entity is "4'b1011";
  attribute FIRST_STAGE : integer;
  attribute FIRST_STAGE of fft_control_unit_control_unit : entity is 0;
  attribute HALF_N : integer;
  attribute HALF_N of fft_control_unit_control_unit : entity is 8;
  attribute N : integer;
  attribute N of fft_control_unit_control_unit : entity is 16;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_control_unit : entity is "control_unit";
  attribute STAGES_NUM : integer;
  attribute STAGES_NUM of fft_control_unit_control_unit : entity is 4;
  attribute S_BF_OPERATION : string;
  attribute S_BF_OPERATION of fft_control_unit_control_unit : entity is "4'b0101";
  attribute S_CALC_STAGE_VARS : string;
  attribute S_CALC_STAGE_VARS of fft_control_unit_control_unit : entity is "4'b0010";
  attribute S_CHECK_BF_COUNTER : string;
  attribute S_CHECK_BF_COUNTER of fft_control_unit_control_unit : entity is "4'b0011";
  attribute S_CHECK_STAGE : string;
  attribute S_CHECK_STAGE of fft_control_unit_control_unit : entity is "4'b0111";
  attribute S_IDLE : string;
  attribute S_IDLE of fft_control_unit_control_unit : entity is "4'b0000";
  attribute S_READ_MEMORY : string;
  attribute S_READ_MEMORY of fft_control_unit_control_unit : entity is "4'b0100";
  attribute S_SEND_RESULTS : string;
  attribute S_SEND_RESULTS of fft_control_unit_control_unit : entity is "4'b1000";
  attribute S_STORE_INPUTS : string;
  attribute S_STORE_INPUTS of fft_control_unit_control_unit : entity is "4'b0001";
  attribute S_WRITE_BACK : string;
  attribute S_WRITE_BACK of fft_control_unit_control_unit : entity is "4'b0110";
end fft_control_unit_control_unit;

architecture STRUCTURE of fft_control_unit_control_unit is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \^bf_ce_o\ : STD_LOGIC;
  signal bf_counter : STD_LOGIC;
  signal \bf_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal bf_cycle_counter : STD_LOGIC;
  signal \bf_cycle_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bf_cycle_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bf_cycle_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bf_cycle_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \bf_cycle_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bf_cycle_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bf_cycle_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bf_cycle_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal bram_addr_x0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bram_addr_x0_o_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal bram_addr_x1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bram_addr_x1_o_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \^bram_x1_en_o\ : STD_LOGIC;
  signal \^bram_x1_we_o\ : STD_LOGIC;
  signal cycle_delay_i_1_n_0 : STD_LOGIC;
  signal cycle_delay_reg_n_0 : STD_LOGIC;
  signal \^data_counter\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \data_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \div_bf_cycle_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \div_bf_cycle_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \div_bf_cycle_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \div_bf_cycle_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \div_bf_cycle_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \div_bf_cycle_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \div_bf_cycle_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \div_bf_cycle_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \div_bf_cycle_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal fft_ready_o0 : STD_LOGIC;
  signal group_size : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \group_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[1]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[2]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[3]_i_1_n_0\ : STD_LOGIC;
  signal group_start : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \group_start[1]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[2]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[3]_i_1_n_0\ : STD_LOGIC;
  signal local_index : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \local_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[2]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 to 2 );
  signal stage_counter : STD_LOGIC;
  signal \stage_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \stage_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \stage_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \stage_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \stage_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \stage_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \stage_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \stage_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal staged_half_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal start_div_i_1_n_0 : STD_LOGIC;
  signal start_div_i_2_n_0 : STD_LOGIC;
  signal start_div_reg_n_0 : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal twiddle_addr_ad : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \twiddle_addr_ad[0]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[1]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[2]_i_1_n_0\ : STD_LOGIC;
  signal \^twiddle_addr_o\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \twiddle_addr_o_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal NLW_bram_addr_x1_adder_v_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr_x1_adder_r_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_bram_addr_xo_adder_v_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr_xo_adder_r_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_staged_half_N_div_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_staged_half_N_div_dbz_UNCONNECTED : STD_LOGIC;
  signal NLW_staged_half_N_div_done_UNCONNECTED : STD_LOGIC;
  signal NLW_staged_half_N_div_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_staged_half_N_div_rem_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_staged_half_N_div_val_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "S_CHECK_BF_COUNTER:000001000,S_READ_MEMORY:001000000,S_CALC_STAGE_VARS:000000100,S_STORE_INPUTS:000000010,S_IDLE:000000001,S_CHECK_STAGE:000010000,S_WRITE_BACK:100000000,S_SEND_RESULTS:000100000,S_BF_OPERATION:010000000";
  attribute SOFT_HLUTNM of bf_ce_o_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bf_counter[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bf_counter[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bf_counter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bf_counter[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bf_cycle_counter[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bf_cycle_counter[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bf_cycle_counter[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bf_cycle_counter[3]_i_2\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[0]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[1]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[3]\ : label is "LD";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bram_addr_x1_adder : label is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bram_addr_x1_adder : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bram_addr_x1_adder : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bram_addr_x1_adder : label is "adder_subtracter32,Vivado 2021.1";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[0]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[1]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[2]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[3]_i_1\ : label is "soft_lutpair29";
  attribute CHECK_LICENSE_TYPE of bram_addr_xo_adder : label is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings of bram_addr_xo_adder : label is "yes";
  attribute IP_DEFINITION_SOURCE of bram_addr_xo_adder : label is "package_project";
  attribute X_CORE_INFO of bram_addr_xo_adder : label is "adder_subtracter32,Vivado 2021.1";
  attribute SOFT_HLUTNM of bram_x0_we_o_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of cycle_delay_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_counter[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_counter[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_counter[4]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \div_bf_cycle_counter[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \div_bf_cycle_counter[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \div_bf_cycle_counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \div_bf_cycle_counter[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \group_size[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \group_size[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \group_size[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \group_size[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \group_start[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \group_start[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \group_start[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \local_index[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \local_index[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \local_index[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \stage_counter[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \stage_counter[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \stage_counter[3]_i_2\ : label is "soft_lutpair9";
  attribute CHECK_LICENSE_TYPE of staged_half_N_div : label is "div_10bit,divu_int,{}";
  attribute DowngradeIPIdentifiedWarnings of staged_half_N_div : label is "yes";
  attribute IP_DEFINITION_SOURCE of staged_half_N_div : label is "package_project";
  attribute X_CORE_INFO of staged_half_N_div : label is "divu_int,Vivado 2021.1";
  attribute SOFT_HLUTNM of start_div_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[0]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \state[1]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \state[2]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \twiddle_addr_ad[0]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[0]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[1]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[2]_i_1\ : label is "soft_lutpair15";
begin
  bf_ce_o <= \^bf_ce_o\;
  bram_x1_en_o <= \^bram_x1_en_o\;
  bram_x1_we_o <= \^bram_x1_we_o\;
  data_counter(4 downto 0) <= \^data_counter\(4 downto 0);
  state(3) <= \^state\(3);
  state(2) <= \^bram_x1_en_o\;
  state(1 downto 0) <= \^state\(1 downto 0);
  twiddle_addr_o(2 downto 0) <= \^twiddle_addr_o\(2 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => start_i,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[5]_i_3_n_0\,
      I3 => \^state\(3),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start_i,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state[2]_i_3_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state[3]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state[2]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^data_counter\(3),
      I1 => \^data_counter\(1),
      I2 => \^data_counter\(0),
      I3 => \^data_counter\(2),
      I4 => \^data_counter\(4),
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAFFFFAABAAABA"
    )
        port map (
      I0 => \^bram_x1_we_o\,
      I1 => cycle_delay_reg_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      I4 => \FSM_onehot_state[3]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[1]\,
      I1 => \bf_counter_reg_n_0_[0]\,
      I2 => \bf_counter_reg_n_0_[3]\,
      I3 => \bf_counter_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \div_bf_cycle_counter_reg_n_0_[3]\,
      I1 => \div_bf_cycle_counter_reg_n_0_[2]\,
      I2 => \div_bf_cycle_counter_reg_n_0_[1]\,
      I3 => \div_bf_cycle_counter_reg_n_0_[0]\,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => cycle_delay_reg_n_0,
      I2 => \bf_counter_reg_n_0_[2]\,
      I3 => \bf_counter_reg_n_0_[3]\,
      I4 => \bf_counter_reg_n_0_[0]\,
      I5 => \bf_counter_reg_n_0_[1]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => \FSM_onehot_state[5]_i_2_n_0\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \^state\(3),
      I5 => \FSM_onehot_state[5]_i_3_n_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^data_counter\(2),
      I1 => \^data_counter\(3),
      I2 => \^data_counter\(0),
      I3 => \^data_counter\(1),
      I4 => \^data_counter\(4),
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0000"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[2]\,
      I1 => \bf_counter_reg_n_0_[3]\,
      I2 => \bf_counter_reg_n_0_[0]\,
      I3 => \bf_counter_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA8AA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \bf_cycle_counter_reg_n_0_[1]\,
      I2 => \bf_cycle_counter_reg_n_0_[0]\,
      I3 => \bf_cycle_counter_reg_n_0_[3]\,
      I4 => \bf_cycle_counter_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => \FSM_onehot_state[8]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \^state\(3)
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \^bf_ce_o\,
      Q => \^bram_x1_we_o\
    );
bf_ce_o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \bf_cycle_counter_reg_n_0_[2]\,
      I2 => \bf_cycle_counter_reg_n_0_[3]\,
      I3 => \bf_cycle_counter_reg_n_0_[0]\,
      I4 => \bf_cycle_counter_reg_n_0_[1]\,
      O => \^bf_ce_o\
    );
\bf_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bram_x1_we_o\,
      I1 => \bf_counter_reg_n_0_[0]\,
      O => \bf_counter[0]_i_1_n_0\
    );
\bf_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[0]\,
      I1 => \^bram_x1_we_o\,
      I2 => \bf_counter_reg_n_0_[1]\,
      O => \bf_counter[1]_i_1_n_0\
    );
\bf_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[0]\,
      I1 => \bf_counter_reg_n_0_[1]\,
      I2 => \^bram_x1_we_o\,
      I3 => \bf_counter_reg_n_0_[2]\,
      O => \bf_counter[2]_i_1_n_0\
    );
\bf_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \^bram_x1_we_o\,
      I2 => \^state\(3),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => bf_counter
    );
\bf_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[2]\,
      I1 => \bf_counter_reg_n_0_[0]\,
      I2 => \bf_counter_reg_n_0_[1]\,
      I3 => \^bram_x1_we_o\,
      I4 => \bf_counter_reg_n_0_[3]\,
      O => \bf_counter[3]_i_2_n_0\
    );
\bf_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \bf_counter[0]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[0]\
    );
\bf_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \bf_counter[1]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[1]\
    );
\bf_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \bf_counter[2]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[2]\
    );
\bf_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \bf_counter[3]_i_2_n_0\,
      Q => \bf_counter_reg_n_0_[3]\
    );
\bf_cycle_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \bf_cycle_counter_reg_n_0_[0]\,
      O => \bf_cycle_counter[0]_i_1_n_0\
    );
\bf_cycle_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \bf_cycle_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \bf_cycle_counter_reg_n_0_[1]\,
      O => \bf_cycle_counter[1]_i_1_n_0\
    );
\bf_cycle_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \bf_cycle_counter_reg_n_0_[0]\,
      I1 => \bf_cycle_counter_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \bf_cycle_counter_reg_n_0_[2]\,
      O => \bf_cycle_counter[2]_i_1_n_0\
    );
\bf_cycle_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^bram_x1_we_o\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => bf_cycle_counter
    );
\bf_cycle_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \bf_cycle_counter_reg_n_0_[2]\,
      I1 => \bf_cycle_counter_reg_n_0_[0]\,
      I2 => \bf_cycle_counter_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      I4 => \bf_cycle_counter_reg_n_0_[3]\,
      O => \bf_cycle_counter[3]_i_2_n_0\
    );
\bf_cycle_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_cycle_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \bf_cycle_counter[0]_i_1_n_0\,
      Q => \bf_cycle_counter_reg_n_0_[0]\
    );
\bf_cycle_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_cycle_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \bf_cycle_counter[1]_i_1_n_0\,
      Q => \bf_cycle_counter_reg_n_0_[1]\
    );
\bf_cycle_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_cycle_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \bf_cycle_counter[2]_i_1_n_0\,
      Q => \bf_cycle_counter_reg_n_0_[2]\
    );
\bf_cycle_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_cycle_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \bf_cycle_counter[3]_i_2_n_0\,
      Q => \bf_cycle_counter_reg_n_0_[3]\
    );
\bram_addr_x0_o_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[0]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(0)
    );
\bram_addr_x0_o_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
        port map (
      I0 => \^data_counter\(0),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^state\(3),
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => bram_addr_x0(0),
      O => \bram_addr_x0_o_reg[0]_i_1_n_0\
    );
\bram_addr_x0_o_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[1]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(1)
    );
\bram_addr_x0_o_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
        port map (
      I0 => \^data_counter\(1),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^state\(3),
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => bram_addr_x0(1),
      O => \bram_addr_x0_o_reg[1]_i_1_n_0\
    );
\bram_addr_x0_o_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[2]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(2)
    );
\bram_addr_x0_o_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
        port map (
      I0 => \^data_counter\(2),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^state\(3),
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => bram_addr_x0(2),
      O => \bram_addr_x0_o_reg[2]_i_1_n_0\
    );
\bram_addr_x0_o_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[3]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(3)
    );
\bram_addr_x0_o_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
        port map (
      I0 => \^data_counter\(3),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^state\(3),
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => bram_addr_x0(3),
      O => \bram_addr_x0_o_reg[3]_i_1_n_0\
    );
\bram_addr_x0_o_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \^state\(3),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \bram_addr_x0_o_reg[3]_i_2_n_0\
    );
bram_addr_x1_adder: entity work.fft_control_unit_adder_subtracter32bit
     port map (
      c_in => '0',
      r(31 downto 4) => NLW_bram_addr_x1_adder_r_UNCONNECTED(31 downto 4),
      r(3 downto 0) => bram_addr_x1(3 downto 0),
      v => NLW_bram_addr_x1_adder_v_UNCONNECTED,
      x(31 downto 4) => B"0000000000000000000000000000",
      x(3 downto 0) => bram_addr_x0(3 downto 0),
      y(31 downto 4) => B"0000000000000000000000000000",
      y(3 downto 0) => group_size(3 downto 0)
    );
\bram_addr_x1_o_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[0]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(0)
    );
\bram_addr_x1_o_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => bram_addr_x1(0),
      O => \bram_addr_x1_o_reg[0]_i_1_n_0\
    );
\bram_addr_x1_o_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[1]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(1)
    );
\bram_addr_x1_o_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => bram_addr_x1(1),
      O => \bram_addr_x1_o_reg[1]_i_1_n_0\
    );
\bram_addr_x1_o_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[2]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(2)
    );
\bram_addr_x1_o_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => bram_addr_x1(2),
      O => \bram_addr_x1_o_reg[2]_i_1_n_0\
    );
\bram_addr_x1_o_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[3]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(3)
    );
\bram_addr_x1_o_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => bram_addr_x1(3),
      O => \bram_addr_x1_o_reg[3]_i_1_n_0\
    );
bram_addr_xo_adder: entity work.\fft_control_unit_adder_subtracter32bit__1\
     port map (
      c_in => '0',
      r(31 downto 4) => NLW_bram_addr_xo_adder_r_UNCONNECTED(31 downto 4),
      r(3 downto 0) => bram_addr_x0(3 downto 0),
      v => NLW_bram_addr_xo_adder_v_UNCONNECTED,
      x(31 downto 4) => B"0000000000000000000000000000",
      x(3 downto 1) => group_start(3 downto 1),
      x(0) => '0',
      y(31 downto 3) => B"00000000000000000000000000000",
      y(2 downto 0) => local_index(2 downto 0)
    );
bram_x0_en_o_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \^bram_x1_we_o\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      I4 => \^state\(3),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => bram_x0_en_o
    );
bram_x0_we_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^bram_x1_we_o\,
      O => bram_x0_we_o
    );
cycle_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01CC"
    )
        port map (
      I0 => \^state\(3),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => cycle_delay_reg_n_0,
      O => cycle_delay_i_1_n_0
    );
cycle_delay_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => cycle_delay_i_1_n_0,
      Q => cycle_delay_reg_n_0
    );
\data_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^state\(3),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^data_counter\(0),
      O => \data_counter[0]_i_1_n_0\
    );
\data_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^state\(3),
      I2 => \^data_counter\(0),
      I3 => \^data_counter\(1),
      O => \data_counter[1]_i_1_n_0\
    );
\data_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77708880"
    )
        port map (
      I0 => \^data_counter\(0),
      I1 => \^data_counter\(1),
      I2 => \^state\(3),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \^data_counter\(2),
      O => \data_counter[2]_i_1_n_0\
    );
\data_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F0080808000"
    )
        port map (
      I0 => \^data_counter\(1),
      I1 => \^data_counter\(0),
      I2 => \^data_counter\(2),
      I3 => \^state\(3),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \^data_counter\(3),
      O => \data_counter[3]_i_1_n_0\
    );
\data_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^state\(3),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \data_counter[4]_i_1_n_0\
    );
\data_counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \^data_counter\(3),
      I1 => \^data_counter\(1),
      I2 => \^data_counter\(0),
      I3 => \^data_counter\(2),
      I4 => \^data_counter\(4),
      I5 => \data_counter[4]_i_3_n_0\,
      O => \data_counter[4]_i_2_n_0\
    );
\data_counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^state\(3),
      O => \data_counter[4]_i_3_n_0\
    );
\data_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[4]_i_1_n_0\,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \data_counter[0]_i_1_n_0\,
      Q => \^data_counter\(0)
    );
\data_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[4]_i_1_n_0\,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \data_counter[1]_i_1_n_0\,
      Q => \^data_counter\(1)
    );
\data_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[4]_i_1_n_0\,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \data_counter[2]_i_1_n_0\,
      Q => \^data_counter\(2)
    );
\data_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[4]_i_1_n_0\,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \data_counter[3]_i_1_n_0\,
      Q => \^data_counter\(3)
    );
\data_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[4]_i_1_n_0\,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \data_counter[4]_i_2_n_0\,
      Q => \^data_counter\(4)
    );
\div_bf_cycle_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \div_bf_cycle_counter_reg_n_0_[0]\,
      O => \div_bf_cycle_counter[0]_i_1_n_0\
    );
\div_bf_cycle_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \div_bf_cycle_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \div_bf_cycle_counter_reg_n_0_[1]\,
      O => \div_bf_cycle_counter[1]_i_1_n_0\
    );
\div_bf_cycle_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \div_bf_cycle_counter_reg_n_0_[0]\,
      I1 => \div_bf_cycle_counter_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \div_bf_cycle_counter_reg_n_0_[2]\,
      O => \div_bf_cycle_counter[2]_i_1_n_0\
    );
\div_bf_cycle_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => rstn,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \div_bf_cycle_counter[3]_i_1_n_0\
    );
\div_bf_cycle_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \div_bf_cycle_counter_reg_n_0_[2]\,
      I1 => \div_bf_cycle_counter_reg_n_0_[0]\,
      I2 => \div_bf_cycle_counter_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \div_bf_cycle_counter_reg_n_0_[3]\,
      O => \div_bf_cycle_counter[3]_i_2_n_0\
    );
\div_bf_cycle_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \div_bf_cycle_counter[3]_i_1_n_0\,
      D => \div_bf_cycle_counter[0]_i_1_n_0\,
      Q => \div_bf_cycle_counter_reg_n_0_[0]\,
      R => '0'
    );
\div_bf_cycle_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \div_bf_cycle_counter[3]_i_1_n_0\,
      D => \div_bf_cycle_counter[1]_i_1_n_0\,
      Q => \div_bf_cycle_counter_reg_n_0_[1]\,
      R => '0'
    );
\div_bf_cycle_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \div_bf_cycle_counter[3]_i_1_n_0\,
      D => \div_bf_cycle_counter[2]_i_1_n_0\,
      Q => \div_bf_cycle_counter_reg_n_0_[2]\,
      R => '0'
    );
\div_bf_cycle_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \div_bf_cycle_counter[3]_i_1_n_0\,
      D => \div_bf_cycle_counter[3]_i_2_n_0\,
      Q => \div_bf_cycle_counter_reg_n_0_[3]\,
      R => '0'
    );
fft_ready_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \^data_counter\(1),
      I1 => \^data_counter\(0),
      I2 => \^data_counter\(3),
      I3 => \^data_counter\(2),
      I4 => \^state\(3),
      I5 => \^data_counter\(4),
      O => fft_ready_o0
    );
fft_ready_o_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => fft_ready_o0,
      Q => fft_ready_o,
      R => '0'
    );
\group_size[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[1]\,
      O => \group_size[0]_i_1_n_0\
    );
\group_size[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[3]\,
      O => \group_size[1]_i_1_n_0\
    );
\group_size[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      O => \group_size[2]_i_1_n_0\
    );
\group_size[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[2]\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[0]\,
      I3 => \stage_counter_reg_n_0_[1]\,
      O => \group_size[3]_i_1_n_0\
    );
\group_size_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \group_size[0]_i_1_n_0\,
      Q => group_size(0)
    );
\group_size_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \group_size[1]_i_1_n_0\,
      Q => group_size(1)
    );
\group_size_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \group_size[2]_i_1_n_0\,
      Q => group_size(2)
    );
\group_size_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \group_size[3]_i_1_n_0\,
      Q => group_size(3)
    );
\group_start[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      I4 => \stage_counter_reg_n_0_[1]\,
      O => \group_start[1]_i_1_n_0\
    );
\group_start[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[3]\,
      O => \group_start[2]_i_1_n_0\
    );
\group_start[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000002A"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[2]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      I4 => \stage_counter_reg_n_0_[3]\,
      O => \group_start[3]_i_1_n_0\
    );
\group_start_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \group_start[1]_i_1_n_0\,
      Q => group_start(1)
    );
\group_start_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \group_start[2]_i_1_n_0\,
      Q => group_start(2)
    );
\group_start_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \group_start[3]_i_1_n_0\,
      Q => group_start(3)
    );
\local_index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[1]\,
      I4 => \bf_counter_reg_n_0_[0]\,
      O => \local_index[0]_i_1_n_0\
    );
\local_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \bf_counter_reg_n_0_[1]\,
      O => \local_index[1]_i_1_n_0\
    );
\local_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[3]\,
      I4 => \bf_counter_reg_n_0_[2]\,
      O => \local_index[2]_i_1_n_0\
    );
\local_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \local_index[0]_i_1_n_0\,
      Q => local_index(0)
    );
\local_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \local_index[1]_i_1_n_0\,
      Q => local_index(1)
    );
\local_index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \local_index[2]_i_1_n_0\,
      Q => local_index(2)
    );
src_sel_o_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \^bram_x1_we_o\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \^state\(3),
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => src_sel_o
    );
\stage_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      O => \stage_counter[0]_i_1_n_0\
    );
\stage_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      O => \stage_counter[1]_i_1_n_0\
    );
\stage_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      O => \stage_counter[2]_i_1_n_0\
    );
\stage_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^state\(3),
      O => stage_counter
    );
\stage_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \stage_counter_reg_n_0_[3]\,
      O => \stage_counter[3]_i_2_n_0\
    );
\stage_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => stage_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \stage_counter[0]_i_1_n_0\,
      Q => \stage_counter_reg_n_0_[0]\
    );
\stage_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => stage_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \stage_counter[1]_i_1_n_0\,
      Q => \stage_counter_reg_n_0_[1]\
    );
\stage_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => stage_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \stage_counter[2]_i_1_n_0\,
      Q => \stage_counter_reg_n_0_[2]\
    );
\stage_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => stage_counter,
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \stage_counter[3]_i_2_n_0\,
      Q => \stage_counter_reg_n_0_[3]\
    );
staged_half_N_div: entity work.fft_control_unit_div_10bit
     port map (
      a(9 downto 0) => B"0000001000",
      b(9 downto 4) => B"000000",
      b(3 downto 0) => group_size(3 downto 0),
      busy => NLW_staged_half_N_div_busy_UNCONNECTED,
      clk => clk,
      dbz => NLW_staged_half_N_div_dbz_UNCONNECTED,
      done => NLW_staged_half_N_div_done_UNCONNECTED,
      \rem\(9 downto 0) => NLW_staged_half_N_div_rem_UNCONNECTED(9 downto 0),
      rst => \FSM_onehot_state[8]_i_1_n_0\,
      start => start_div_reg_n_0,
      val(9 downto 3) => NLW_staged_half_N_div_val_UNCONNECTED(9 downto 3),
      val(2 downto 0) => staged_half_N(2 downto 0),
      valid => NLW_staged_half_N_div_valid_UNCONNECTED
    );
start_div_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => start_div_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => start_div_reg_n_0,
      O => start_div_i_1_n_0
    );
start_div_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \div_bf_cycle_counter_reg_n_0_[2]\,
      I1 => \div_bf_cycle_counter_reg_n_0_[3]\,
      I2 => \div_bf_cycle_counter_reg_n_0_[0]\,
      I3 => \div_bf_cycle_counter_reg_n_0_[1]\,
      I4 => start_div_reg_n_0,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => start_div_i_2_n_0
    );
start_div_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => start_div_i_1_n_0,
      Q => start_div_reg_n_0
    );
\state[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \^state\(0)
    );
\state[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^bram_x1_we_o\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \^state\(1)
    );
\state[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \^bram_x1_we_o\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \^bram_x1_en_o\
    );
\twiddle_addr_ad[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \^twiddle_addr_o\(0),
      I1 => staged_half_N(0),
      I2 => \^bram_x1_we_o\,
      I3 => twiddle_addr_ad(0),
      O => \twiddle_addr_ad[0]_i_1_n_0\
    );
\twiddle_addr_ad[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8778FFFF87780000"
    )
        port map (
      I0 => \^twiddle_addr_o\(0),
      I1 => staged_half_N(0),
      I2 => staged_half_N(1),
      I3 => \^twiddle_addr_o\(1),
      I4 => \^bram_x1_we_o\,
      I5 => twiddle_addr_ad(1),
      O => \twiddle_addr_ad[1]_i_1_n_0\
    );
\twiddle_addr_ad[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \^bram_x1_we_o\,
      I2 => twiddle_addr_ad(2),
      O => \twiddle_addr_ad[2]_i_1_n_0\
    );
\twiddle_addr_ad[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => staged_half_N(0),
      I1 => \^twiddle_addr_o\(0),
      I2 => \^twiddle_addr_o\(1),
      I3 => staged_half_N(1),
      I4 => staged_half_N(2),
      I5 => \^twiddle_addr_o\(2),
      O => p_0_in(2)
    );
\twiddle_addr_ad_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \twiddle_addr_ad[0]_i_1_n_0\,
      Q => twiddle_addr_ad(0)
    );
\twiddle_addr_ad_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \twiddle_addr_ad[1]_i_1_n_0\,
      Q => twiddle_addr_ad(1)
    );
\twiddle_addr_ad_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[8]_i_1_n_0\,
      D => \twiddle_addr_ad[2]_i_1_n_0\,
      Q => twiddle_addr_ad(2)
    );
\twiddle_addr_o_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[0]_i_1_n_0\,
      G => \twiddle_addr_o_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(0)
    );
\twiddle_addr_o_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => twiddle_addr_ad(0),
      O => \twiddle_addr_o_reg[0]_i_1_n_0\
    );
\twiddle_addr_o_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[1]_i_1_n_0\,
      G => \twiddle_addr_o_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(1)
    );
\twiddle_addr_o_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => twiddle_addr_ad(1),
      O => \twiddle_addr_o_reg[1]_i_1_n_0\
    );
\twiddle_addr_o_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[2]_i_1_n_0\,
      G => \twiddle_addr_o_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(2)
    );
\twiddle_addr_o_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => twiddle_addr_ad(2),
      O => \twiddle_addr_o_reg[2]_i_1_n_0\
    );
\twiddle_addr_o_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^state\(3),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \twiddle_addr_o_reg[2]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    start_i : in STD_LOGIC;
    src_sel_o : out STD_LOGIC;
    fft_ready_o : out STD_LOGIC;
    bf_ce_o : out STD_LOGIC;
    bram_addr_x0_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_x1_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_x0_we_o : out STD_LOGIC;
    bram_x1_we_o : out STD_LOGIC;
    bram_x0_en_o : out STD_LOGIC;
    bram_x1_en_o : out STD_LOGIC;
    twiddle_addr_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_counter : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fft_control_unit : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit : entity is "fft_control_unit,control_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit : entity is "control_unit,Vivado 2021.1";
end fft_control_unit;

architecture STRUCTURE of fft_control_unit is
  attribute BF_OP_CYCLES : string;
  attribute BF_OP_CYCLES of inst : label is "4'b1000";
  attribute BRAM_SIZE : integer;
  attribute BRAM_SIZE of inst : label is 16;
  attribute DIV_CYCLES : string;
  attribute DIV_CYCLES of inst : label is "4'b1011";
  attribute FIRST_STAGE : integer;
  attribute FIRST_STAGE of inst : label is 0;
  attribute HALF_N : integer;
  attribute HALF_N of inst : label is 8;
  attribute N : integer;
  attribute N of inst : label is 16;
  attribute STAGES_NUM : integer;
  attribute STAGES_NUM of inst : label is 4;
  attribute S_BF_OPERATION : string;
  attribute S_BF_OPERATION of inst : label is "4'b0101";
  attribute S_CALC_STAGE_VARS : string;
  attribute S_CALC_STAGE_VARS of inst : label is "4'b0010";
  attribute S_CHECK_BF_COUNTER : string;
  attribute S_CHECK_BF_COUNTER of inst : label is "4'b0011";
  attribute S_CHECK_STAGE : string;
  attribute S_CHECK_STAGE of inst : label is "4'b0111";
  attribute S_IDLE : string;
  attribute S_IDLE of inst : label is "4'b0000";
  attribute S_READ_MEMORY : string;
  attribute S_READ_MEMORY of inst : label is "4'b0100";
  attribute S_SEND_RESULTS : string;
  attribute S_SEND_RESULTS of inst : label is "4'b1000";
  attribute S_STORE_INPUTS : string;
  attribute S_STORE_INPUTS of inst : label is "4'b0001";
  attribute S_WRITE_BACK : string;
  attribute S_WRITE_BACK of inst : label is "4'b0110";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.fft_control_unit_control_unit
     port map (
      bf_ce_o => bf_ce_o,
      bram_addr_x0_o(3 downto 0) => bram_addr_x0_o(3 downto 0),
      bram_addr_x1_o(3 downto 0) => bram_addr_x1_o(3 downto 0),
      bram_x0_en_o => bram_x0_en_o,
      bram_x0_we_o => bram_x0_we_o,
      bram_x1_en_o => bram_x1_en_o,
      bram_x1_we_o => bram_x1_we_o,
      clk => clk,
      data_counter(4 downto 0) => data_counter(4 downto 0),
      fft_ready_o => fft_ready_o,
      rstn => rstn,
      src_sel_o => src_sel_o,
      start_i => start_i,
      state(3 downto 0) => state(3 downto 0),
      twiddle_addr_o(2 downto 0) => twiddle_addr_o(2 downto 0)
    );
end STRUCTURE;
