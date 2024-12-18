-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Dec 10 17:09:10 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/tests/fft_test/fft_test.gen/sources_1/ip/fft_control_unit_2/fft_control_unit_2_sim_netlist.vhdl
-- Design      : fft_control_unit_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_2_adder_subtracter32bit is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit_2_adder_subtracter32bit : entity is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit_2_adder_subtracter32bit : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit_2_adder_subtracter32bit : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_2_adder_subtracter32bit : entity is "adder_subtracter32bit";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit_2_adder_subtracter32bit : entity is "adder_subtracter32,Vivado 2021.1";
end fft_control_unit_2_adder_subtracter32bit;

architecture STRUCTURE of fft_control_unit_2_adder_subtracter32bit is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/add9/s0__0\ : STD_LOGIC;
  signal \inst/c_out_2\ : STD_LOGIC;
  signal \inst/c_out_4\ : STD_LOGIC;
  signal \inst/c_out_6\ : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r[4]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r[6]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r[6]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r[7]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r[8]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r[9]_INST_0_i_1\ : label is "soft_lutpair10";
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
  r(9 downto 0) <= \^r\(9 downto 0);
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
\r[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_2\,
      I1 => x(3),
      I2 => y(3),
      O => \^r\(3)
    );
\r[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_2\,
      I1 => x(3),
      I2 => y(3),
      I3 => x(4),
      I4 => y(4),
      O => \^r\(4)
    );
\r[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8E888E888E888"
    )
        port map (
      I0 => y(2),
      I1 => x(2),
      I2 => y(1),
      I3 => x(1),
      I4 => x(0),
      I5 => y(0),
      O => \inst/c_out_2\
    );
\r[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_4\,
      I1 => x(5),
      I2 => y(5),
      O => \^r\(5)
    );
\r[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_4\,
      I1 => x(5),
      I2 => y(5),
      I3 => x(6),
      I4 => y(6),
      O => \^r\(6)
    );
\r[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(4),
      I1 => x(4),
      I2 => y(3),
      I3 => x(3),
      I4 => \inst/c_out_2\,
      O => \inst/c_out_4\
    );
\r[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_6\,
      I1 => x(7),
      I2 => y(7),
      O => \^r\(7)
    );
\r[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_6\,
      I1 => x(7),
      I2 => y(7),
      I3 => x(8),
      I4 => y(8),
      O => \^r\(8)
    );
\r[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \inst/c_out_6\,
      I1 => x(7),
      I2 => y(7),
      I3 => x(8),
      I4 => y(8),
      I5 => \inst/add9/s0__0\,
      O => \^r\(9)
    );
\r[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(6),
      I1 => x(6),
      I2 => y(5),
      I3 => x(5),
      I4 => \inst/c_out_4\,
      O => \inst/c_out_6\
    );
\r[9]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(9),
      I1 => x(9),
      O => \inst/add9/s0__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_control_unit_2_adder_subtracter32bit__1\ is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_control_unit_2_adder_subtracter32bit__1\ : entity is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_control_unit_2_adder_subtracter32bit__1\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_control_unit_2_adder_subtracter32bit__1\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_control_unit_2_adder_subtracter32bit__1\ : entity is "adder_subtracter32bit";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_control_unit_2_adder_subtracter32bit__1\ : entity is "adder_subtracter32,Vivado 2021.1";
end \fft_control_unit_2_adder_subtracter32bit__1\;

architecture STRUCTURE of \fft_control_unit_2_adder_subtracter32bit__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/c_out_3\ : STD_LOGIC;
  signal \inst/c_out_5\ : STD_LOGIC;
  signal \inst/c_out_7\ : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \^y\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r[2]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r[7]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r[7]_INST_0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r[9]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r[9]_INST_0_i_1\ : label is "soft_lutpair5";
begin
  \^y\(8 downto 0) <= y(8 downto 0);
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
  r(9 downto 1) <= \^r\(9 downto 1);
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
\r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \^y\(1),
      I1 => x(1),
      I2 => x(2),
      I3 => \^y\(2),
      I4 => x(3),
      I5 => \^y\(3),
      O => \^r\(3)
    );
\r[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_3\,
      I1 => x(4),
      I2 => \^y\(4),
      O => \^r\(4)
    );
\r[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_3\,
      I1 => x(4),
      I2 => \^y\(4),
      I3 => x(5),
      I4 => \^y\(5),
      O => \^r\(5)
    );
\r[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8E888E888E888"
    )
        port map (
      I0 => \^y\(3),
      I1 => x(3),
      I2 => \^y\(2),
      I3 => x(2),
      I4 => x(1),
      I5 => \^y\(1),
      O => \inst/c_out_3\
    );
\r[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_5\,
      I1 => x(6),
      I2 => \^y\(6),
      O => \^r\(6)
    );
\r[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_5\,
      I1 => x(6),
      I2 => \^y\(6),
      I3 => x(7),
      I4 => \^y\(7),
      O => \^r\(7)
    );
\r[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \^y\(5),
      I1 => x(5),
      I2 => \^y\(4),
      I3 => x(4),
      I4 => \inst/c_out_3\,
      O => \inst/c_out_5\
    );
\r[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_7\,
      I1 => x(8),
      I2 => \^y\(8),
      O => \^r\(8)
    );
\r[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => \inst/c_out_7\,
      I1 => x(8),
      I2 => \^y\(8),
      I3 => x(9),
      O => \^r\(9)
    );
\r[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \^y\(7),
      I1 => x(7),
      I2 => \^y\(6),
      I3 => x(6),
      I4 => \inst/c_out_5\,
      O => \inst/c_out_7\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_2_bram_bit_reversed_address is
  port (
    index_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    reversed_o : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit_2_bram_bit_reversed_address : entity is "bram_bit_reversed_address,bit_reversed_address,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit_2_bram_bit_reversed_address : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit_2_bram_bit_reversed_address : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_2_bram_bit_reversed_address : entity is "bram_bit_reversed_address";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit_2_bram_bit_reversed_address : entity is "bit_reversed_address,Vivado 2021.1";
end fft_control_unit_2_bram_bit_reversed_address;

architecture STRUCTURE of fft_control_unit_2_bram_bit_reversed_address is
  signal \^index_i\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  \^index_i\(9 downto 0) <= index_i(9 downto 0);
  reversed_o(9) <= \^index_i\(0);
  reversed_o(8) <= \^index_i\(1);
  reversed_o(7) <= \^index_i\(2);
  reversed_o(6) <= \^index_i\(3);
  reversed_o(5) <= \^index_i\(4);
  reversed_o(4) <= \^index_i\(5);
  reversed_o(3) <= \^index_i\(6);
  reversed_o(2) <= \^index_i\(7);
  reversed_o(1) <= \^index_i\(8);
  reversed_o(0) <= \^index_i\(9);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_2_divu_int is
  port (
    val : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_2_divu_int : entity is "divu_int";
end fft_control_unit_2_divu_int;

architecture STRUCTURE of fft_control_unit_2_divu_int is
  signal acc : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \acc[0]_i_1_n_0\ : STD_LOGIC;
  signal \acc[10]_i_1_n_0\ : STD_LOGIC;
  signal \acc[1]_i_1_n_0\ : STD_LOGIC;
  signal \acc[2]_i_1_n_0\ : STD_LOGIC;
  signal \acc[3]_i_1_n_0\ : STD_LOGIC;
  signal \acc[4]_i_1_n_0\ : STD_LOGIC;
  signal \acc[5]_i_1_n_0\ : STD_LOGIC;
  signal \acc[6]_i_1_n_0\ : STD_LOGIC;
  signal \acc[7]_i_1_n_0\ : STD_LOGIC;
  signal \acc[8]_i_1_n_0\ : STD_LOGIC;
  signal \acc[9]_i_1_n_0\ : STD_LOGIC;
  signal b1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \b1[9]_i_1_n_0\ : STD_LOGIC;
  signal \b1[9]_i_2_n_0\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal i : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_2_in0 : STD_LOGIC;
  signal \quo[0]_i_1_n_0\ : STD_LOGIC;
  signal \quo[0]_i_2_n_0\ : STD_LOGIC;
  signal \quo[0]_i_3_n_0\ : STD_LOGIC;
  signal \quo[9]_i_1_n_0\ : STD_LOGIC;
  signal quo_next : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal quo_next0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \quo_next0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \quo_next0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \quo_next0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \quo_next0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \quo_next0_carry__0_n_0\ : STD_LOGIC;
  signal \quo_next0_carry__0_n_1\ : STD_LOGIC;
  signal \quo_next0_carry__0_n_2\ : STD_LOGIC;
  signal \quo_next0_carry__0_n_3\ : STD_LOGIC;
  signal \quo_next0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \quo_next0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \quo_next0_carry__1_n_3\ : STD_LOGIC;
  signal quo_next0_carry_i_1_n_0 : STD_LOGIC;
  signal quo_next0_carry_i_2_n_0 : STD_LOGIC;
  signal quo_next0_carry_i_3_n_0 : STD_LOGIC;
  signal quo_next0_carry_i_4_n_0 : STD_LOGIC;
  signal quo_next0_carry_n_0 : STD_LOGIC;
  signal quo_next0_carry_n_1 : STD_LOGIC;
  signal quo_next0_carry_n_2 : STD_LOGIC;
  signal quo_next0_carry_n_3 : STD_LOGIC;
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
  signal \val[8]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_quo_next0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_quo_next0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_quo_next1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_quo_next1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_quo_next1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acc[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \acc[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \acc[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i[3]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \quo[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \quo[0]_i_3\ : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of quo_next0_carry : label is 35;
  attribute ADDER_THRESHOLD of \quo_next0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \quo_next0_carry__1\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of quo_next1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \quo_next1_carry__0\ : label is 11;
begin
\acc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start,
      I1 => p_2_in0,
      O => \acc[0]_i_1_n_0\
    );
\acc[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(9),
      I1 => acc(9),
      I2 => quo_next1,
      I3 => start,
      O => \acc[10]_i_1_n_0\
    );
\acc[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(0),
      I1 => acc(0),
      I2 => quo_next1,
      I3 => start,
      O => \acc[1]_i_1_n_0\
    );
\acc[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(1),
      I1 => acc(1),
      I2 => quo_next1,
      I3 => start,
      O => \acc[2]_i_1_n_0\
    );
\acc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(2),
      I1 => acc(2),
      I2 => quo_next1,
      I3 => start,
      O => \acc[3]_i_1_n_0\
    );
\acc[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(3),
      I1 => acc(3),
      I2 => quo_next1,
      I3 => start,
      O => \acc[4]_i_1_n_0\
    );
\acc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(4),
      I1 => acc(4),
      I2 => quo_next1,
      I3 => start,
      O => \acc[5]_i_1_n_0\
    );
\acc[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(5),
      I1 => acc(5),
      I2 => quo_next1,
      I3 => start,
      O => \acc[6]_i_1_n_0\
    );
\acc[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(6),
      I1 => acc(6),
      I2 => quo_next1,
      I3 => start,
      O => \acc[7]_i_1_n_0\
    );
\acc[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(7),
      I1 => acc(7),
      I2 => quo_next1,
      I3 => start,
      O => \acc[8]_i_1_n_0\
    );
\acc[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => quo_next0(8),
      I1 => acc(8),
      I2 => quo_next1,
      I3 => start,
      O => \acc[9]_i_1_n_0\
    );
\acc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[0]_i_1_n_0\,
      Q => acc(0),
      R => '0'
    );
\acc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[10]_i_1_n_0\,
      Q => acc(10),
      R => '0'
    );
\acc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[1]_i_1_n_0\,
      Q => acc(1),
      R => '0'
    );
\acc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[2]_i_1_n_0\,
      Q => acc(2),
      R => '0'
    );
\acc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[3]_i_1_n_0\,
      Q => acc(3),
      R => '0'
    );
\acc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[4]_i_1_n_0\,
      Q => acc(4),
      R => '0'
    );
\acc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[5]_i_1_n_0\,
      Q => acc(5),
      R => '0'
    );
\acc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[6]_i_1_n_0\,
      Q => acc(6),
      R => '0'
    );
\acc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[7]_i_1_n_0\,
      Q => acc(7),
      R => '0'
    );
\acc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[8]_i_1_n_0\,
      Q => acc(8),
      R => '0'
    );
\acc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \acc[9]_i_1_n_0\,
      Q => acc(9),
      R => '0'
    );
\b1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => b(3),
      I1 => b(2),
      I2 => b(5),
      I3 => b(4),
      I4 => \b1[9]_i_2_n_0\,
      I5 => start,
      O => \b1[9]_i_1_n_0\
    );
\b1[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => b(8),
      I1 => b(9),
      I2 => b(6),
      I3 => b(7),
      I4 => b(1),
      I5 => b(0),
      O => \b1[9]_i_2_n_0\
    );
\b1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(0),
      Q => b1(0),
      R => '0'
    );
\b1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(1),
      Q => b1(1),
      R => '0'
    );
\b1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(2),
      Q => b1(2),
      R => '0'
    );
\b1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(3),
      Q => b1(3),
      R => '0'
    );
\b1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(4),
      Q => b1(4),
      R => '0'
    );
\b1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(5),
      Q => b1(5),
      R => '0'
    );
\b1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(6),
      Q => b1(6),
      R => '0'
    );
\b1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(7),
      Q => b1(7),
      R => '0'
    );
\b1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(8),
      Q => b1(8),
      R => '0'
    );
\b1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \b1[9]_i_1_n_0\,
      D => b(9),
      Q => b1(9),
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B888"
    )
        port map (
      I0 => busy_i_2_n_0,
      I1 => start,
      I2 => \quo[0]_i_3_n_0\,
      I3 => busy_reg_n_0,
      I4 => rst,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \b1[9]_i_2_n_0\,
      I1 => b(4),
      I2 => b(5),
      I3 => b(2),
      I4 => b(3),
      O => busy_i_2_n_0
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
      I0 => i_reg(1),
      I1 => i_reg(0),
      I2 => i_reg(2),
      O => p_0_in(2)
    );
\i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      I2 => i_reg(1),
      I3 => i_reg(0),
      I4 => busy_reg_n_0,
      O => i
    );
\i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      I2 => i_reg(0),
      I3 => i_reg(1),
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
\quo[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => \b1[9]_i_1_n_0\,
      I1 => \quo[0]_i_3_n_0\,
      I2 => busy_reg_n_0,
      I3 => start,
      O => \quo[0]_i_1_n_0\
    );
\quo[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => quo_next1,
      I1 => start,
      O => \quo[0]_i_2_n_0\
    );
\quo[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(3),
      I3 => i_reg(2),
      O => \quo[0]_i_3_n_0\
    );
\quo[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => start,
      I1 => \b1[9]_i_1_n_0\,
      O => \quo[9]_i_1_n_0\
    );
quo_next0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => quo_next0_carry_n_0,
      CO(2) => quo_next0_carry_n_1,
      CO(1) => quo_next0_carry_n_2,
      CO(0) => quo_next0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => acc(3 downto 0),
      O(3 downto 0) => quo_next0(3 downto 0),
      S(3) => quo_next0_carry_i_1_n_0,
      S(2) => quo_next0_carry_i_2_n_0,
      S(1) => quo_next0_carry_i_3_n_0,
      S(0) => quo_next0_carry_i_4_n_0
    );
\quo_next0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => quo_next0_carry_n_0,
      CO(3) => \quo_next0_carry__0_n_0\,
      CO(2) => \quo_next0_carry__0_n_1\,
      CO(1) => \quo_next0_carry__0_n_2\,
      CO(0) => \quo_next0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc(7 downto 4),
      O(3 downto 0) => quo_next0(7 downto 4),
      S(3) => \quo_next0_carry__0_i_1_n_0\,
      S(2) => \quo_next0_carry__0_i_2_n_0\,
      S(1) => \quo_next0_carry__0_i_3_n_0\,
      S(0) => \quo_next0_carry__0_i_4_n_0\
    );
\quo_next0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(7),
      I1 => b1(7),
      O => \quo_next0_carry__0_i_1_n_0\
    );
\quo_next0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(6),
      I1 => b1(6),
      O => \quo_next0_carry__0_i_2_n_0\
    );
\quo_next0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(5),
      I1 => b1(5),
      O => \quo_next0_carry__0_i_3_n_0\
    );
\quo_next0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(4),
      I1 => b1(4),
      O => \quo_next0_carry__0_i_4_n_0\
    );
\quo_next0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \quo_next0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_quo_next0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \quo_next0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => acc(8),
      O(3 downto 2) => \NLW_quo_next0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => quo_next0(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \quo_next0_carry__1_i_1_n_0\,
      S(0) => \quo_next0_carry__1_i_2_n_0\
    );
\quo_next0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b1(9),
      I1 => acc(9),
      O => \quo_next0_carry__1_i_1_n_0\
    );
\quo_next0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(8),
      I1 => b1(8),
      O => \quo_next0_carry__1_i_2_n_0\
    );
quo_next0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(3),
      I1 => b1(3),
      O => quo_next0_carry_i_1_n_0
    );
quo_next0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(2),
      I1 => b1(2),
      O => quo_next0_carry_i_2_n_0
    );
quo_next0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(1),
      I1 => b1(1),
      O => quo_next0_carry_i_3_n_0
    );
quo_next0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc(0),
      I1 => b1(0),
      O => quo_next0_carry_i_4_n_0
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
\quo_next1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => acc(9),
      I1 => b1(9),
      I2 => acc(8),
      I3 => b1(8),
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
\quo_next1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b1(9),
      I1 => acc(9),
      I2 => b1(8),
      I3 => acc(8),
      O => \quo_next1_carry__0_i_3_n_0\
    );
quo_next1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => acc(7),
      I1 => b1(7),
      I2 => acc(6),
      I3 => b1(6),
      O => quo_next1_carry_i_1_n_0
    );
quo_next1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => acc(5),
      I1 => b1(5),
      I2 => acc(4),
      I3 => b1(4),
      O => quo_next1_carry_i_2_n_0
    );
quo_next1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => acc(3),
      I1 => b1(3),
      I2 => acc(2),
      I3 => b1(2),
      O => quo_next1_carry_i_3_n_0
    );
quo_next1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => acc(1),
      I1 => b1(1),
      I2 => acc(0),
      I3 => b1(0),
      O => quo_next1_carry_i_4_n_0
    );
quo_next1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b1(7),
      I1 => acc(7),
      I2 => b1(6),
      I3 => acc(6),
      O => quo_next1_carry_i_5_n_0
    );
quo_next1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b1(5),
      I1 => acc(5),
      I2 => b1(4),
      I3 => acc(4),
      O => quo_next1_carry_i_6_n_0
    );
quo_next1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b1(3),
      I1 => acc(3),
      I2 => b1(2),
      I3 => acc(2),
      O => quo_next1_carry_i_7_n_0
    );
quo_next1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b1(1),
      I1 => acc(1),
      I2 => b1(0),
      I3 => acc(0),
      O => quo_next1_carry_i_8_n_0
    );
\quo_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => \quo[0]_i_2_n_0\,
      Q => quo_next(1),
      R => '0'
    );
\quo_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(1),
      Q => quo_next(2),
      R => \quo[9]_i_1_n_0\
    );
\quo_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(2),
      Q => quo_next(3),
      R => \quo[9]_i_1_n_0\
    );
\quo_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(3),
      Q => quo_next(4),
      R => \quo[9]_i_1_n_0\
    );
\quo_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(4),
      Q => quo_next(5),
      R => \quo[9]_i_1_n_0\
    );
\quo_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(5),
      Q => quo_next(6),
      R => \quo[9]_i_1_n_0\
    );
\quo_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(6),
      Q => quo_next(7),
      R => \quo[9]_i_1_n_0\
    );
\quo_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(7),
      Q => quo_next(8),
      R => \quo[9]_i_1_n_0\
    );
\quo_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(8),
      Q => quo_next(9),
      R => \quo[9]_i_1_n_0\
    );
\quo_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quo[0]_i_1_n_0\,
      D => quo_next(9),
      Q => p_2_in0,
      R => \quo[9]_i_1_n_0\
    );
\val[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => start,
      I1 => busy_reg_n_0,
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(1),
      I5 => i_reg(0),
      O => \val[8]_i_1_n_0\
    );
\val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next1,
      Q => val(0),
      R => rst
    );
\val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next(1),
      Q => val(1),
      R => rst
    );
\val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next(2),
      Q => val(2),
      R => rst
    );
\val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next(3),
      Q => val(3),
      R => rst
    );
\val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next(4),
      Q => val(4),
      R => rst
    );
\val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next(5),
      Q => val(5),
      R => rst
    );
\val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next(6),
      Q => val(6),
      R => rst
    );
\val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next(7),
      Q => val(7),
      R => rst
    );
\val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \val[8]_i_1_n_0\,
      D => quo_next(8),
      Q => val(8),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_2_mux2 is
  port (
    y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_2_mux2 : entity is "mux2";
end fft_control_unit_2_mux2;

architecture STRUCTURE of fft_control_unit_2_mux2 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \y[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \y[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \y[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \y[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \y[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \y[9]_INST_0\ : label is "soft_lutpair4";
begin
\y[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(0),
      I1 => d0(0),
      I2 => s,
      O => y(0)
    );
\y[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(1),
      I1 => d0(1),
      I2 => s,
      O => y(1)
    );
\y[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(2),
      I1 => d0(2),
      I2 => s,
      O => y(2)
    );
\y[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(3),
      I1 => d0(3),
      I2 => s,
      O => y(3)
    );
\y[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(4),
      I1 => d0(4),
      I2 => s,
      O => y(4)
    );
\y[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(5),
      I1 => d0(5),
      I2 => s,
      O => y(5)
    );
\y[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(6),
      I1 => d0(6),
      I2 => s,
      O => y(6)
    );
\y[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(7),
      I1 => d0(7),
      I2 => s,
      O => y(7)
    );
\y[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(8),
      I1 => d0(8),
      I2 => s,
      O => y(8)
    );
\y[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(9),
      I1 => d0(9),
      I2 => s,
      O => y(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_2_data_counter_mux2 is
  port (
    d0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit_2_data_counter_mux2 : entity is "data_counter_mux2,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit_2_data_counter_mux2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit_2_data_counter_mux2 : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_2_data_counter_mux2 : entity is "data_counter_mux2";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit_2_data_counter_mux2 : entity is "mux2,Vivado 2021.1";
end fft_control_unit_2_data_counter_mux2;

architecture STRUCTURE of fft_control_unit_2_data_counter_mux2 is
begin
inst: entity work.fft_control_unit_2_mux2
     port map (
      d0(9 downto 0) => d0(9 downto 0),
      d1(9 downto 0) => d1(9 downto 0),
      s => s,
      y(9 downto 0) => y(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_2_div_10bit is
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
  attribute CHECK_LICENSE_TYPE of fft_control_unit_2_div_10bit : entity is "div_10bit,divu_int,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit_2_div_10bit : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit_2_div_10bit : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_2_div_10bit : entity is "div_10bit";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit_2_div_10bit : entity is "divu_int,Vivado 2021.1";
end fft_control_unit_2_div_10bit;

architecture STRUCTURE of fft_control_unit_2_div_10bit is
  signal \<const0>\ : STD_LOGIC;
  signal \^val\ : STD_LOGIC_VECTOR ( 8 downto 0 );
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
  val(8 downto 0) <= \^val\(8 downto 0);
  valid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.fft_control_unit_2_divu_int
     port map (
      b(9 downto 0) => b(9 downto 0),
      clk => clk,
      rst => rst,
      start => start,
      val(8 downto 0) => \^val\(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_2_control_unit is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    start_i : in STD_LOGIC;
    dl_busy_i : in STD_LOGIC;
    src_sel_o : out STD_LOGIC;
    fft_ready_o : out STD_LOGIC;
    busy_o : out STD_LOGIC;
    bf_ce_o : out STD_LOGIC;
    bram_addr_x0_o : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_addr_x1_o : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_x0_we_o : out STD_LOGIC;
    bram_x1_we_o : out STD_LOGIC;
    bram_x0_en_o : out STD_LOGIC;
    bram_x1_en_o : out STD_LOGIC;
    twiddle_addr_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_counter : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute BF_OP_CYCLES : integer;
  attribute BF_OP_CYCLES of fft_control_unit_2_control_unit : entity is 10;
  attribute BRAM_SIZE : integer;
  attribute BRAM_SIZE of fft_control_unit_2_control_unit : entity is 1024;
  attribute DIV_CYCLES : string;
  attribute DIV_CYCLES of fft_control_unit_2_control_unit : entity is "4'b1011";
  attribute FIRST_STAGE : integer;
  attribute FIRST_STAGE of fft_control_unit_2_control_unit : entity is 7;
  attribute HALF_N : integer;
  attribute HALF_N of fft_control_unit_2_control_unit : entity is 512;
  attribute N : integer;
  attribute N of fft_control_unit_2_control_unit : entity is 1024;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_control_unit_2_control_unit : entity is "control_unit";
  attribute STAGES_NUM : integer;
  attribute STAGES_NUM of fft_control_unit_2_control_unit : entity is 3;
  attribute S_BF_OPERATION : string;
  attribute S_BF_OPERATION of fft_control_unit_2_control_unit : entity is "4'b0101";
  attribute S_CALC_STAGE_VARS : string;
  attribute S_CALC_STAGE_VARS of fft_control_unit_2_control_unit : entity is "4'b0010";
  attribute S_CHECK_BF_COUNTER : string;
  attribute S_CHECK_BF_COUNTER of fft_control_unit_2_control_unit : entity is "4'b0011";
  attribute S_CHECK_STAGE : string;
  attribute S_CHECK_STAGE of fft_control_unit_2_control_unit : entity is "4'b0111";
  attribute S_IDLE : string;
  attribute S_IDLE of fft_control_unit_2_control_unit : entity is "4'b0000";
  attribute S_READ_MEMORY : string;
  attribute S_READ_MEMORY of fft_control_unit_2_control_unit : entity is "4'b0100";
  attribute S_SEND_RESULTS : string;
  attribute S_SEND_RESULTS of fft_control_unit_2_control_unit : entity is "4'b1001";
  attribute S_STORE_INPUTS : string;
  attribute S_STORE_INPUTS of fft_control_unit_2_control_unit : entity is "4'b0001";
  attribute S_WAIT_MS : string;
  attribute S_WAIT_MS of fft_control_unit_2_control_unit : entity is "4'b1000";
  attribute S_WRITE_BACK : string;
  attribute S_WRITE_BACK of fft_control_unit_2_control_unit : entity is "4'b0110";
end fft_control_unit_2_control_unit;

architecture STRUCTURE of fft_control_unit_2_control_unit is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal bf_ce_o_reg_i_1_n_0 : STD_LOGIC;
  signal bf_counter : STD_LOGIC;
  signal \bf_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \bf_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \bf_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \bf_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \bf_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal bf_cycle_counter : STD_LOGIC;
  signal \bf_cycle_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bf_cycle_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bf_cycle_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bf_cycle_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \bf_cycle_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bf_cycle_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bf_cycle_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bf_cycle_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal bram_addr_x0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \bram_addr_x0_o_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_x0_o_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal bram_addr_x1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \bram_addr_x1_o_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_x1_o_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal bram_x0_en_o_reg_i_1_n_0 : STD_LOGIC;
  signal bram_x0_we_o_reg_i_1_n_0 : STD_LOGIC;
  signal busy_o_reg_i_1_n_0 : STD_LOGIC;
  signal cycle_delay_i_1_n_0 : STD_LOGIC;
  signal cycle_delay_reg_n_0 : STD_LOGIC;
  signal \^data_counter\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \data_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal data_counter_mux : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal data_counter_rev : STD_LOGIC_VECTOR ( 9 downto 0 );
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
  signal fft_ready_o_i_2_n_0 : STD_LOGIC;
  signal fft_ready_o_i_3_n_0 : STD_LOGIC;
  signal group_size : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \group_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[1]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[2]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[3]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[4]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[5]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[6]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[7]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[8]_i_1_n_0\ : STD_LOGIC;
  signal \group_size[9]_i_1_n_0\ : STD_LOGIC;
  signal group_start : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \group_start[1]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[2]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[3]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[4]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[5]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[6]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[7]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[8]_i_1_n_0\ : STD_LOGIC;
  signal \group_start[8]_i_2_n_0\ : STD_LOGIC;
  signal \group_start[9]_i_1_n_0\ : STD_LOGIC;
  signal local_index : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \local_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[6]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[7]_i_1_n_0\ : STD_LOGIC;
  signal \local_index[8]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal src_sel_o_reg_i_1_n_0 : STD_LOGIC;
  signal src_sel_o_reg_i_2_n_0 : STD_LOGIC;
  signal src_sel_o_reg_i_3_n_0 : STD_LOGIC;
  signal stage_counter : STD_LOGIC;
  signal \stage_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \stage_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \stage_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \stage_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \stage_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \stage_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \stage_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \stage_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal staged_half_N : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal start_div_i_1_n_0 : STD_LOGIC;
  signal start_div_i_2_n_0 : STD_LOGIC;
  signal start_div_reg_n_0 : STD_LOGIC;
  signal start_sending : STD_LOGIC;
  signal \start_sending__0\ : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal twiddle_addr_ad : STD_LOGIC;
  signal \twiddle_addr_ad[3]_i_2_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[3]_i_3_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[3]_i_4_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[3]_i_5_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[7]_i_2_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[7]_i_3_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[7]_i_4_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[7]_i_5_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad[8]_i_2_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \twiddle_addr_ad_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \twiddle_addr_ad_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \twiddle_addr_ad_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \twiddle_addr_ad_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_ad_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \twiddle_addr_ad_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \twiddle_addr_ad_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \^twiddle_addr_o\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \twiddle_addr_o_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \twiddle_addr_o_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal your_instance_name_i_1_n_0 : STD_LOGIC;
  signal NLW_bram_addr_x1_adder_v_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr_x1_adder_r_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal NLW_bram_addr_xo_adder_v_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr_xo_adder_r_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal NLW_staged_half_N_div_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_staged_half_N_div_dbz_UNCONNECTED : STD_LOGIC;
  signal NLW_staged_half_N_div_done_UNCONNECTED : STD_LOGIC;
  signal NLW_staged_half_N_div_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_staged_half_N_div_rem_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_staged_half_N_div_val_UNCONNECTED : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \NLW_twiddle_addr_ad_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_twiddle_addr_ad_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair33";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "S_CHECK_BF_COUNTER:0000001000,S_READ_MEMORY:0010000000,S_CALC_STAGE_VARS:0000000100,S_STORE_INPUTS:0000000010,S_IDLE:0000000001,S_CHECK_STAGE:0000010000,S_SEND_RESULTS:0001000000,S_WRITE_BACK:1000000000,S_WAIT_MS:0000100000,S_BF_OPERATION:0100000000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of bf_ce_o_reg : label is "LD";
  attribute SOFT_HLUTNM of bf_ce_o_reg_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bf_counter[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bf_counter[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bf_counter[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bf_counter[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bf_counter[5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bf_counter[6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bf_counter[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bf_counter[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bf_cycle_counter[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \bf_cycle_counter[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bf_cycle_counter[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bf_cycle_counter[3]_i_2\ : label is "soft_lutpair20";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bit_reversed_data_counter : label is "bram_bit_reversed_address,bit_reversed_address,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bit_reversed_data_counter : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bit_reversed_data_counter : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bit_reversed_data_counter : label is "bit_reversed_address,Vivado 2021.1";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[0]_i_1\ : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[1]_i_1\ : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[2]_i_1\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[3]_i_1\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[4]_i_1\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[5]_i_1\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[6]_i_1\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[7]_i_1\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[8]_i_1\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x0_o_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x0_o_reg[9]_i_1\ : label is "soft_lutpair45";
  attribute CHECK_LICENSE_TYPE of bram_addr_x1_adder : label is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings of bram_addr_x1_adder : label is "yes";
  attribute IP_DEFINITION_SOURCE of bram_addr_x1_adder : label is "package_project";
  attribute X_CORE_INFO of bram_addr_x1_adder : label is "adder_subtracter32,Vivado 2021.1";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[0]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[1]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[2]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[3]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[4]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[5]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[6]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[7]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[8]_i_1\ : label is "soft_lutpair56";
  attribute XILINX_LEGACY_PRIM of \bram_addr_x1_o_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \bram_addr_x1_o_reg[9]_i_1\ : label is "soft_lutpair56";
  attribute CHECK_LICENSE_TYPE of bram_addr_xo_adder : label is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings of bram_addr_xo_adder : label is "yes";
  attribute IP_DEFINITION_SOURCE of bram_addr_xo_adder : label is "package_project";
  attribute X_CORE_INFO of bram_addr_xo_adder : label is "adder_subtracter32,Vivado 2021.1";
  attribute XILINX_LEGACY_PRIM of bram_x0_en_o_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of bram_x0_we_o_reg : label is "LD";
  attribute SOFT_HLUTNM of bram_x0_we_o_reg_i_1 : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of bram_x1_en_o_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of bram_x1_we_o_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of busy_o_reg : label is "LD";
  attribute SOFT_HLUTNM of cycle_delay_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_counter[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_counter[10]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_counter[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_counter[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_counter[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_counter[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_counter[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \div_bf_cycle_counter[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \div_bf_cycle_counter[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \div_bf_cycle_counter[3]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \group_size[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \group_size[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \group_size[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \group_size[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \group_size[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \group_size[5]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \group_size[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \group_size[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \group_size[8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \group_size[9]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \group_start[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \group_start[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \group_start[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \group_start[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \group_start[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \group_start[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \group_start[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \group_start[9]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \local_index[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \local_index[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \local_index[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \local_index[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \local_index[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \local_index[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \local_index[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \local_index[8]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of src_sel_o_reg : label is "LD";
  attribute SOFT_HLUTNM of src_sel_o_reg_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of src_sel_o_reg_i_3 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \stage_counter[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \stage_counter[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \stage_counter[3]_i_2\ : label is "soft_lutpair22";
  attribute CHECK_LICENSE_TYPE of staged_half_N_div : label is "div_10bit,divu_int,{}";
  attribute DowngradeIPIdentifiedWarnings of staged_half_N_div : label is "yes";
  attribute IP_DEFINITION_SOURCE of staged_half_N_div : label is "package_project";
  attribute X_CORE_INFO of staged_half_N_div : label is "divu_int,Vivado 2021.1";
  attribute SOFT_HLUTNM of start_div_i_1 : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of start_sending_reg : label is "LD";
  attribute SOFT_HLUTNM of \state[1]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \state[2]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \state[3]_INST_0\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[1]_i_1\ : label is "soft_lutpair64";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[2]_i_1\ : label is "soft_lutpair64";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[3]_i_1\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[4]_i_1\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[5]_i_1\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[6]_i_1\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[7]_i_1\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \twiddle_addr_o_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \twiddle_addr_o_reg[8]_i_1\ : label is "soft_lutpair61";
  attribute CHECK_LICENSE_TYPE of your_instance_name : label is "data_counter_mux2,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of your_instance_name : label is "yes";
  attribute IP_DEFINITION_SOURCE of your_instance_name : label is "package_project";
  attribute X_CORE_INFO of your_instance_name : label is "mux2,Vivado 2021.1";
  attribute SOFT_HLUTNM of your_instance_name_i_1 : label is "soft_lutpair48";
begin
  data_counter(10 downto 0) <= \^data_counter\(10 downto 0);
  state(3 downto 0) <= \^state\(3 downto 0);
  twiddle_addr_o(8 downto 0) <= \^twiddle_addr_o\(8 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => start_i,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[6]_i_2_n_0\,
      I3 => \start_sending__0\,
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
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state[2]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[0]\,
      I3 => \stage_counter_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7FFFFFF"
    )
        port map (
      I0 => \^data_counter\(9),
      I1 => \^data_counter\(7),
      I2 => \data_counter[9]_i_2_n_0\,
      I3 => \^data_counter\(6),
      I4 => \^data_counter\(8),
      I5 => \^data_counter\(10),
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEFFAEAE"
    )
        port map (
      I0 => twiddle_addr_ad,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => \FSM_onehot_state[7]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => cycle_delay_reg_n_0,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \div_bf_cycle_counter_reg_n_0_[3]\,
      I1 => \div_bf_cycle_counter_reg_n_0_[2]\,
      I2 => \div_bf_cycle_counter_reg_n_0_[1]\,
      I3 => \div_bf_cycle_counter_reg_n_0_[0]\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => cycle_delay_reg_n_0,
      I2 => \FSM_onehot_state[7]_i_2_n_0\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF020002000200"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \FSM_onehot_state[5]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => dl_busy_i,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => dl_busy_i,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \start_sending__0\,
      I3 => \FSM_onehot_state[6]_i_2_n_0\,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \^data_counter\(3),
      I1 => \^data_counter\(2),
      I2 => \^data_counter\(5),
      I3 => \^data_counter\(4),
      I4 => fft_ready_o_i_3_n_0,
      I5 => \^data_counter\(10),
      O => \FSM_onehot_state[6]_i_2_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_3_n_0\,
      I1 => \bf_counter_reg_n_0_[4]\,
      I2 => \bf_counter_reg_n_0_[5]\,
      I3 => \bf_counter_reg_n_0_[2]\,
      I4 => \bf_counter_reg_n_0_[3]\,
      O => \FSM_onehot_state[7]_i_2_n_0\
    );
\FSM_onehot_state[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[8]\,
      I1 => \bf_counter_reg_n_0_[9]\,
      I2 => \bf_counter_reg_n_0_[6]\,
      I3 => \bf_counter_reg_n_0_[7]\,
      I4 => \bf_counter_reg_n_0_[1]\,
      I5 => \bf_counter_reg_n_0_[0]\,
      O => \FSM_onehot_state[7]_i_3_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA2AA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \bf_cycle_counter_reg_n_0_[1]\,
      I2 => \bf_cycle_counter_reg_n_0_[0]\,
      I3 => \bf_cycle_counter_reg_n_0_[3]\,
      I4 => \bf_cycle_counter_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[7]\,
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
      PRE => \data_counter[10]_i_3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
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
      CLR => \data_counter[10]_i_3_n_0\,
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
      CLR => \data_counter[10]_i_3_n_0\,
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
      CLR => \data_counter[10]_i_3_n_0\,
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
      CLR => \data_counter[10]_i_3_n_0\,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \start_sending__0\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
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
      CLR => \data_counter[10]_i_3_n_0\,
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[8]\
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => bf_ce_o_reg_i_1_n_0,
      Q => twiddle_addr_ad
    );
bf_ce_o_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bf_ce_o_reg_i_1_n_0,
      G => src_sel_o_reg_i_2_n_0,
      GE => '1',
      Q => bf_ce_o
    );
bf_ce_o_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \bf_cycle_counter_reg_n_0_[2]\,
      I2 => \bf_cycle_counter_reg_n_0_[3]\,
      I3 => \bf_cycle_counter_reg_n_0_[0]\,
      I4 => \bf_cycle_counter_reg_n_0_[1]\,
      O => bf_ce_o_reg_i_1_n_0
    );
\bf_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => twiddle_addr_ad,
      I1 => \bf_counter_reg_n_0_[0]\,
      O => \bf_counter[0]_i_1_n_0\
    );
\bf_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[0]\,
      I1 => twiddle_addr_ad,
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
      I2 => twiddle_addr_ad,
      I3 => \bf_counter_reg_n_0_[2]\,
      O => \bf_counter[2]_i_1_n_0\
    );
\bf_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[1]\,
      I1 => \bf_counter_reg_n_0_[0]\,
      I2 => \bf_counter_reg_n_0_[2]\,
      I3 => twiddle_addr_ad,
      I4 => \bf_counter_reg_n_0_[3]\,
      O => \bf_counter[3]_i_1_n_0\
    );
\bf_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[2]\,
      I1 => \bf_counter_reg_n_0_[0]\,
      I2 => \bf_counter_reg_n_0_[1]\,
      I3 => \bf_counter_reg_n_0_[3]\,
      I4 => twiddle_addr_ad,
      I5 => \bf_counter_reg_n_0_[4]\,
      O => \bf_counter[4]_i_1_n_0\
    );
\bf_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \bf_counter[5]_i_2_n_0\,
      I1 => twiddle_addr_ad,
      I2 => \bf_counter_reg_n_0_[5]\,
      O => \bf_counter[5]_i_1_n_0\
    );
\bf_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[3]\,
      I1 => \bf_counter_reg_n_0_[1]\,
      I2 => \bf_counter_reg_n_0_[0]\,
      I3 => \bf_counter_reg_n_0_[2]\,
      I4 => \bf_counter_reg_n_0_[4]\,
      O => \bf_counter[5]_i_2_n_0\
    );
\bf_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \bf_counter[9]_i_3_n_0\,
      I1 => twiddle_addr_ad,
      I2 => \bf_counter_reg_n_0_[6]\,
      O => \bf_counter[6]_i_1_n_0\
    );
\bf_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \bf_counter[9]_i_3_n_0\,
      I1 => \bf_counter_reg_n_0_[6]\,
      I2 => twiddle_addr_ad,
      I3 => \bf_counter_reg_n_0_[7]\,
      O => \bf_counter[7]_i_1_n_0\
    );
\bf_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF002000"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[6]\,
      I1 => \bf_counter[9]_i_3_n_0\,
      I2 => \bf_counter_reg_n_0_[7]\,
      I3 => twiddle_addr_ad,
      I4 => \bf_counter_reg_n_0_[8]\,
      O => \bf_counter[8]_i_1_n_0\
    );
\bf_counter[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \start_sending__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => twiddle_addr_ad,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => bf_counter
    );
\bf_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[8]\,
      I1 => \bf_counter_reg_n_0_[6]\,
      I2 => \bf_counter[9]_i_3_n_0\,
      I3 => \bf_counter_reg_n_0_[7]\,
      I4 => twiddle_addr_ad,
      I5 => \bf_counter_reg_n_0_[9]\,
      O => \bf_counter[9]_i_2_n_0\
    );
\bf_counter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[4]\,
      I1 => \bf_counter_reg_n_0_[2]\,
      I2 => \bf_counter_reg_n_0_[0]\,
      I3 => \bf_counter_reg_n_0_[1]\,
      I4 => \bf_counter_reg_n_0_[3]\,
      I5 => \bf_counter_reg_n_0_[5]\,
      O => \bf_counter[9]_i_3_n_0\
    );
\bf_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[0]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[0]\
    );
\bf_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[1]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[1]\
    );
\bf_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[2]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[2]\
    );
\bf_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[3]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[3]\
    );
\bf_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[4]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[4]\
    );
\bf_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[5]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[5]\
    );
\bf_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[6]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[6]\
    );
\bf_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[7]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[7]\
    );
\bf_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[8]_i_1_n_0\,
      Q => \bf_counter_reg_n_0_[8]\
    );
\bf_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_counter[9]_i_2_n_0\,
      Q => \bf_counter_reg_n_0_[9]\
    );
\bf_cycle_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \bf_cycle_counter_reg_n_0_[0]\,
      O => \bf_cycle_counter[0]_i_1_n_0\
    );
\bf_cycle_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \bf_cycle_counter_reg_n_0_[0]\,
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
      I2 => \FSM_onehot_state_reg_n_0_[8]\,
      I3 => \bf_cycle_counter_reg_n_0_[2]\,
      O => \bf_cycle_counter[2]_i_1_n_0\
    );
\bf_cycle_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => twiddle_addr_ad,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
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
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \bf_cycle_counter_reg_n_0_[3]\,
      O => \bf_cycle_counter[3]_i_2_n_0\
    );
\bf_cycle_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_cycle_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_cycle_counter[0]_i_1_n_0\,
      Q => \bf_cycle_counter_reg_n_0_[0]\
    );
\bf_cycle_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_cycle_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_cycle_counter[1]_i_1_n_0\,
      Q => \bf_cycle_counter_reg_n_0_[1]\
    );
\bf_cycle_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_cycle_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_cycle_counter[2]_i_1_n_0\,
      Q => \bf_cycle_counter_reg_n_0_[2]\
    );
\bf_cycle_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bf_cycle_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \bf_cycle_counter[3]_i_2_n_0\,
      Q => \bf_cycle_counter_reg_n_0_[3]\
    );
bit_reversed_data_counter: entity work.fft_control_unit_2_bram_bit_reversed_address
     port map (
      index_i(9 downto 0) => \^data_counter\(9 downto 0),
      reversed_o(9 downto 0) => data_counter_rev(9 downto 0)
    );
\bram_addr_x0_o_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[0]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(0)
    );
\bram_addr_x0_o_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[0]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[0]_i_1_n_0\
    );
\bram_addr_x0_o_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(0),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(0),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(0),
      O => \bram_addr_x0_o_reg[0]_i_2_n_0\
    );
\bram_addr_x0_o_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[1]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(1)
    );
\bram_addr_x0_o_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[1]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[1]_i_1_n_0\
    );
\bram_addr_x0_o_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(1),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(1),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(1),
      O => \bram_addr_x0_o_reg[1]_i_2_n_0\
    );
\bram_addr_x0_o_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[2]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(2)
    );
\bram_addr_x0_o_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[2]_i_1_n_0\
    );
\bram_addr_x0_o_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(2),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(2),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(2),
      O => \bram_addr_x0_o_reg[2]_i_2_n_0\
    );
\bram_addr_x0_o_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[3]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(3)
    );
\bram_addr_x0_o_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[3]_i_1_n_0\
    );
\bram_addr_x0_o_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(3),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(3),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(3),
      O => \bram_addr_x0_o_reg[3]_i_2_n_0\
    );
\bram_addr_x0_o_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[4]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(4)
    );
\bram_addr_x0_o_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[4]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[4]_i_1_n_0\
    );
\bram_addr_x0_o_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(4),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(4),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(4),
      O => \bram_addr_x0_o_reg[4]_i_2_n_0\
    );
\bram_addr_x0_o_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[5]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(5)
    );
\bram_addr_x0_o_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[5]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[5]_i_1_n_0\
    );
\bram_addr_x0_o_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(5),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(5),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(5),
      O => \bram_addr_x0_o_reg[5]_i_2_n_0\
    );
\bram_addr_x0_o_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[6]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(6)
    );
\bram_addr_x0_o_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[6]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[6]_i_1_n_0\
    );
\bram_addr_x0_o_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(6),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(6),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(6),
      O => \bram_addr_x0_o_reg[6]_i_2_n_0\
    );
\bram_addr_x0_o_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[7]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(7)
    );
\bram_addr_x0_o_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[7]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[7]_i_1_n_0\
    );
\bram_addr_x0_o_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(7),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(7),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(7),
      O => \bram_addr_x0_o_reg[7]_i_2_n_0\
    );
\bram_addr_x0_o_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[8]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(8)
    );
\bram_addr_x0_o_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[8]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[8]_i_1_n_0\
    );
\bram_addr_x0_o_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(8),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(8),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(8),
      O => \bram_addr_x0_o_reg[8]_i_2_n_0\
    );
\bram_addr_x0_o_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x0_o_reg[9]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x0_o(9)
    );
\bram_addr_x0_o_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr_x0_o_reg[9]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bram_addr_x0_o_reg[9]_i_1_n_0\
    );
\bram_addr_x0_o_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => src_sel_o_reg_i_3_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_addr_x0_o_reg[9]_i_2_n_0\
    );
\bram_addr_x0_o_reg[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => bram_addr_x0(9),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \^data_counter\(9),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => data_counter_mux(9),
      O => \bram_addr_x0_o_reg[9]_i_3_n_0\
    );
bram_addr_x1_adder: entity work.fft_control_unit_2_adder_subtracter32bit
     port map (
      c_in => '0',
      r(31 downto 10) => NLW_bram_addr_x1_adder_r_UNCONNECTED(31 downto 10),
      r(9 downto 0) => bram_addr_x1(9 downto 0),
      v => NLW_bram_addr_x1_adder_v_UNCONNECTED,
      x(31 downto 10) => B"0000000000000000000000",
      x(9 downto 0) => bram_addr_x0(9 downto 0),
      y(31 downto 10) => B"0000000000000000000000",
      y(9 downto 0) => group_size(9 downto 0)
    );
\bram_addr_x1_o_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[0]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(0)
    );
\bram_addr_x1_o_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(0),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[0]_i_1_n_0\
    );
\bram_addr_x1_o_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[1]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(1)
    );
\bram_addr_x1_o_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(1),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[1]_i_1_n_0\
    );
\bram_addr_x1_o_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[2]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(2)
    );
\bram_addr_x1_o_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(2),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[2]_i_1_n_0\
    );
\bram_addr_x1_o_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[3]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(3)
    );
\bram_addr_x1_o_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(3),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[3]_i_1_n_0\
    );
\bram_addr_x1_o_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[4]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(4)
    );
\bram_addr_x1_o_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(4),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[4]_i_1_n_0\
    );
\bram_addr_x1_o_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[5]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(5)
    );
\bram_addr_x1_o_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(5),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[5]_i_1_n_0\
    );
\bram_addr_x1_o_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[6]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(6)
    );
\bram_addr_x1_o_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(6),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[6]_i_1_n_0\
    );
\bram_addr_x1_o_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[7]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(7)
    );
\bram_addr_x1_o_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(7),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[7]_i_1_n_0\
    );
\bram_addr_x1_o_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[8]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(8)
    );
\bram_addr_x1_o_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(8),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[8]_i_1_n_0\
    );
\bram_addr_x1_o_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \bram_addr_x1_o_reg[9]_i_1_n_0\,
      G => \bram_addr_x0_o_reg[9]_i_2_n_0\,
      GE => '1',
      Q => bram_addr_x1_o(9)
    );
\bram_addr_x1_o_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_x1(9),
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr_x1_o_reg[9]_i_1_n_0\
    );
bram_addr_xo_adder: entity work.\fft_control_unit_2_adder_subtracter32bit__1\
     port map (
      c_in => '0',
      r(31 downto 10) => NLW_bram_addr_xo_adder_r_UNCONNECTED(31 downto 10),
      r(9 downto 0) => bram_addr_x0(9 downto 0),
      v => NLW_bram_addr_xo_adder_v_UNCONNECTED,
      x(31 downto 10) => B"0000000000000000000000",
      x(9 downto 1) => group_start(9 downto 1),
      x(0) => '0',
      y(31 downto 9) => B"00000000000000000000000",
      y(8 downto 0) => local_index(8 downto 0)
    );
bram_x0_en_o_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bram_x0_en_o_reg_i_1_n_0,
      G => src_sel_o_reg_i_2_n_0,
      GE => '1',
      Q => bram_x0_en_o
    );
bram_x0_en_o_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => twiddle_addr_ad,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \start_sending__0\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => bram_x0_en_o_reg_i_1_n_0
    );
bram_x0_we_o_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bram_x0_we_o_reg_i_1_n_0,
      G => src_sel_o_reg_i_2_n_0,
      GE => '1',
      Q => bram_x0_we_o
    );
bram_x0_we_o_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => twiddle_addr_ad,
      O => bram_x0_we_o_reg_i_1_n_0
    );
bram_x1_en_o_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^state\(2),
      G => src_sel_o_reg_i_2_n_0,
      GE => '1',
      Q => bram_x1_en_o
    );
bram_x1_we_o_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => twiddle_addr_ad,
      G => src_sel_o_reg_i_2_n_0,
      GE => '1',
      Q => bram_x1_we_o
    );
busy_o_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => busy_o_reg_i_1_n_0,
      G => src_sel_o_reg_i_2_n_0,
      GE => '1',
      Q => busy_o
    );
busy_o_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^state\(2),
      I1 => \start_sending__0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => busy_o_reg_i_1_n_0
    );
cycle_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01F0"
    )
        port map (
      I0 => \start_sending__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => cycle_delay_reg_n_0,
      O => cycle_delay_i_1_n_0
    );
cycle_delay_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => cycle_delay_i_1_n_0,
      Q => cycle_delay_reg_n_0
    );
\data_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \start_sending__0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^data_counter\(0),
      O => \data_counter[0]_i_1_n_0\
    );
\data_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \data_counter[10]_i_1_n_0\
    );
\data_counter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2D2D200"
    )
        port map (
      I0 => \^data_counter\(9),
      I1 => \data_counter[10]_i_4_n_0\,
      I2 => \^data_counter\(10),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \start_sending__0\,
      O => \data_counter[10]_i_2_n_0\
    );
\data_counter[10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \data_counter[10]_i_3_n_0\
    );
\data_counter[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^data_counter\(7),
      I1 => \data_counter[9]_i_2_n_0\,
      I2 => \^data_counter\(6),
      I3 => \^data_counter\(8),
      O => \data_counter[10]_i_4_n_0\
    );
\data_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \start_sending__0\,
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
      I2 => \start_sending__0\,
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
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \^data_counter\(3),
      O => \data_counter[3]_i_1_n_0\
    );
\data_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^data_counter\(2),
      I1 => \^data_counter\(0),
      I2 => \^data_counter\(1),
      I3 => \^data_counter\(3),
      I4 => src_sel_o_reg_i_3_n_0,
      I5 => \^data_counter\(4),
      O => \data_counter[4]_i_1_n_0\
    );
\data_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A854"
    )
        port map (
      I0 => \data_counter[5]_i_2_n_0\,
      I1 => \start_sending__0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \^data_counter\(5),
      O => \data_counter[5]_i_1_n_0\
    );
\data_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^data_counter\(3),
      I1 => \^data_counter\(1),
      I2 => \^data_counter\(0),
      I3 => \^data_counter\(2),
      I4 => \^data_counter\(4),
      O => \data_counter[5]_i_2_n_0\
    );
\data_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A854"
    )
        port map (
      I0 => \data_counter[9]_i_2_n_0\,
      I1 => \start_sending__0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \^data_counter\(6),
      O => \data_counter[6]_i_1_n_0\
    );
\data_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB04440"
    )
        port map (
      I0 => \data_counter[9]_i_2_n_0\,
      I1 => \^data_counter\(6),
      I2 => \start_sending__0\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \^data_counter\(7),
      O => \data_counter[7]_i_1_n_0\
    );
\data_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDF0020202000"
    )
        port map (
      I0 => \^data_counter\(6),
      I1 => \data_counter[9]_i_2_n_0\,
      I2 => \^data_counter\(7),
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \^data_counter\(8),
      O => \data_counter[8]_i_1_n_0\
    );
\data_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000020000000"
    )
        port map (
      I0 => \^data_counter\(7),
      I1 => \data_counter[9]_i_2_n_0\,
      I2 => \^data_counter\(6),
      I3 => \^data_counter\(8),
      I4 => src_sel_o_reg_i_3_n_0,
      I5 => \^data_counter\(9),
      O => \data_counter[9]_i_1_n_0\
    );
\data_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^data_counter\(4),
      I1 => \^data_counter\(2),
      I2 => \^data_counter\(0),
      I3 => \^data_counter\(1),
      I4 => \^data_counter\(3),
      I5 => \^data_counter\(5),
      O => \data_counter[9]_i_2_n_0\
    );
\data_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[0]_i_1_n_0\,
      Q => \^data_counter\(0)
    );
\data_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[10]_i_2_n_0\,
      Q => \^data_counter\(10)
    );
\data_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[1]_i_1_n_0\,
      Q => \^data_counter\(1)
    );
\data_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[2]_i_1_n_0\,
      Q => \^data_counter\(2)
    );
\data_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[3]_i_1_n_0\,
      Q => \^data_counter\(3)
    );
\data_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[4]_i_1_n_0\,
      Q => \^data_counter\(4)
    );
\data_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[5]_i_1_n_0\,
      Q => \^data_counter\(5)
    );
\data_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[6]_i_1_n_0\,
      Q => \^data_counter\(6)
    );
\data_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[7]_i_1_n_0\,
      Q => \^data_counter\(7)
    );
\data_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[8]_i_1_n_0\,
      Q => \^data_counter\(8)
    );
\data_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[10]_i_1_n_0\,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \data_counter[9]_i_1_n_0\,
      Q => \^data_counter\(9)
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
      INIT => X"FE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => rstn,
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
fft_ready_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => fft_ready_o_i_2_n_0,
      I1 => \^data_counter\(10),
      I2 => start_sending,
      O => fft_ready_o0
    );
fft_ready_o_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => fft_ready_o_i_3_n_0,
      I1 => \^data_counter\(4),
      I2 => \^data_counter\(5),
      I3 => \^data_counter\(2),
      I4 => \^data_counter\(3),
      O => fft_ready_o_i_2_n_0
    );
fft_ready_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^data_counter\(8),
      I1 => \^data_counter\(9),
      I2 => \^data_counter\(6),
      I3 => \^data_counter\(7),
      I4 => \^data_counter\(1),
      I5 => \^data_counter\(0),
      O => fft_ready_o_i_3_n_0
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
      I0 => \stage_counter_reg_n_0_[2]\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[0]\,
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
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \stage_counter_reg_n_0_[2]\,
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
      INIT => X"0008"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      O => \group_size[3]_i_1_n_0\
    );
\group_size[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \stage_counter_reg_n_0_[0]\,
      O => \group_size[4]_i_1_n_0\
    );
\group_size[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[0]\,
      I3 => \stage_counter_reg_n_0_[1]\,
      O => \group_size[5]_i_1_n_0\
    );
\group_size[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      O => \group_size[6]_i_1_n_0\
    );
\group_size[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \stage_counter_reg_n_0_[0]\,
      O => \group_size[7]_i_1_n_0\
    );
\group_size[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \stage_counter_reg_n_0_[0]\,
      O => \group_size[8]_i_1_n_0\
    );
\group_size[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[3]\,
      O => \group_size[9]_i_1_n_0\
    );
\group_size_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[0]_i_1_n_0\,
      Q => group_size(0)
    );
\group_size_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[1]_i_1_n_0\,
      Q => group_size(1)
    );
\group_size_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[2]_i_1_n_0\,
      Q => group_size(2)
    );
\group_size_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[3]_i_1_n_0\,
      Q => group_size(3)
    );
\group_size_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[4]_i_1_n_0\,
      Q => group_size(4)
    );
\group_size_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[5]_i_1_n_0\,
      Q => group_size(5)
    );
\group_size_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[6]_i_1_n_0\,
      Q => group_size(6)
    );
\group_size_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[7]_i_1_n_0\,
      Q => group_size(7)
    );
\group_size_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[8]_i_1_n_0\,
      Q => group_size(8)
    );
\group_size_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_size[9]_i_1_n_0\,
      Q => group_size(9)
    );
\group_start[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \stage_counter_reg_n_0_[0]\,
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
\group_start[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      O => \group_start[4]_i_1_n_0\
    );
\group_start[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F0000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[3]\,
      I4 => \bf_counter_reg_n_0_[4]\,
      O => \group_start[5]_i_1_n_0\
    );
\group_start[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0700"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \bf_counter_reg_n_0_[5]\,
      O => \group_start[6]_i_1_n_0\
    );
\group_start[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[3]\,
      I4 => \bf_counter_reg_n_0_[6]\,
      O => \group_start[7]_i_1_n_0\
    );
\group_start[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2333333320000000"
    )
        port map (
      I0 => \group_start[8]_i_2_n_0\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      I4 => \stage_counter_reg_n_0_[0]\,
      I5 => \bf_counter_reg_n_0_[7]\,
      O => \group_start[8]_i_1_n_0\
    );
\group_start[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[7]\,
      I1 => \bf_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \bf_counter_reg_n_0_[5]\,
      I4 => \stage_counter_reg_n_0_[2]\,
      I5 => \bf_counter_reg_n_0_[1]\,
      O => \group_start[8]_i_2_n_0\
    );
\group_start[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55570000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[0]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      I4 => \bf_counter_reg_n_0_[8]\,
      O => \group_start[9]_i_1_n_0\
    );
\group_start_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[1]_i_1_n_0\,
      Q => group_start(1)
    );
\group_start_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[2]_i_1_n_0\,
      Q => group_start(2)
    );
\group_start_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[3]_i_1_n_0\,
      Q => group_start(3)
    );
\group_start_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[4]_i_1_n_0\,
      Q => group_start(4)
    );
\group_start_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[5]_i_1_n_0\,
      Q => group_start(5)
    );
\group_start_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[6]_i_1_n_0\,
      Q => group_start(6)
    );
\group_start_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[7]_i_1_n_0\,
      Q => group_start(7)
    );
\group_start_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[8]_i_1_n_0\,
      Q => group_start(8)
    );
\group_start_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \group_start[9]_i_1_n_0\,
      Q => group_start(9)
    );
\local_index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[2]\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[0]\,
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
\local_index[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[3]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \bf_counter_reg_n_0_[3]\,
      O => \local_index[3]_i_1_n_0\
    );
\local_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[3]\,
      I4 => \bf_counter_reg_n_0_[4]\,
      O => \local_index[4]_i_1_n_0\
    );
\local_index[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[2]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \bf_counter_reg_n_0_[5]\,
      O => \local_index[5]_i_1_n_0\
    );
\local_index[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[0]\,
      I1 => \stage_counter_reg_n_0_[1]\,
      I2 => \stage_counter_reg_n_0_[2]\,
      I3 => \stage_counter_reg_n_0_[3]\,
      I4 => \bf_counter_reg_n_0_[6]\,
      O => \local_index[6]_i_1_n_0\
    );
\local_index[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[7]\,
      I1 => \stage_counter_reg_n_0_[3]\,
      O => \local_index[7]_i_1_n_0\
    );
\local_index[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => \bf_counter_reg_n_0_[8]\,
      I1 => \stage_counter_reg_n_0_[3]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \stage_counter_reg_n_0_[0]\,
      I4 => \stage_counter_reg_n_0_[2]\,
      O => \local_index[8]_i_1_n_0\
    );
\local_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[0]_i_1_n_0\,
      Q => local_index(0)
    );
\local_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[1]_i_1_n_0\,
      Q => local_index(1)
    );
\local_index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[2]_i_1_n_0\,
      Q => local_index(2)
    );
\local_index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[3]_i_1_n_0\,
      Q => local_index(3)
    );
\local_index_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[4]_i_1_n_0\,
      Q => local_index(4)
    );
\local_index_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[5]_i_1_n_0\,
      Q => local_index(5)
    );
\local_index_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[6]_i_1_n_0\,
      Q => local_index(6)
    );
\local_index_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[7]_i_1_n_0\,
      Q => local_index(7)
    );
\local_index_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_counter[10]_i_3_n_0\,
      D => \local_index[8]_i_1_n_0\,
      Q => local_index(8)
    );
src_sel_o_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => src_sel_o_reg_i_1_n_0,
      G => src_sel_o_reg_i_2_n_0,
      GE => '1',
      Q => src_sel_o
    );
src_sel_o_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \^state\(2),
      I3 => \start_sending__0\,
      O => src_sel_o_reg_i_1_n_0
    );
src_sel_o_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^state\(2),
      I1 => src_sel_o_reg_i_3_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => src_sel_o_reg_i_2_n_0
    );
src_sel_o_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \start_sending__0\,
      O => src_sel_o_reg_i_3_n_0
    );
\stage_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \start_sending__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[0]\,
      O => \stage_counter[0]_i_1_n_0\
    );
\stage_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \start_sending__0\,
      I2 => \stage_counter_reg_n_0_[0]\,
      I3 => \stage_counter_reg_n_0_[1]\,
      O => \stage_counter[1]_i_1_n_0\
    );
\stage_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF6A"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[2]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \start_sending__0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \stage_counter[2]_i_1_n_0\
    );
\stage_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \start_sending__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => stage_counter
    );
\stage_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[2]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \stage_counter_reg_n_0_[3]\,
      O => \stage_counter[3]_i_2_n_0\
    );
\stage_counter_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => stage_counter,
      D => \stage_counter[0]_i_1_n_0\,
      PRE => \data_counter[10]_i_3_n_0\,
      Q => \stage_counter_reg_n_0_[0]\
    );
\stage_counter_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => stage_counter,
      D => \stage_counter[1]_i_1_n_0\,
      PRE => \data_counter[10]_i_3_n_0\,
      Q => \stage_counter_reg_n_0_[1]\
    );
\stage_counter_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => stage_counter,
      D => \stage_counter[2]_i_1_n_0\,
      PRE => \data_counter[10]_i_3_n_0\,
      Q => \stage_counter_reg_n_0_[2]\
    );
\stage_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => stage_counter,
      CLR => \data_counter[10]_i_3_n_0\,
      D => \stage_counter[3]_i_2_n_0\,
      Q => \stage_counter_reg_n_0_[3]\
    );
staged_half_N_div: entity work.fft_control_unit_2_div_10bit
     port map (
      a(9 downto 0) => B"1000000000",
      b(9 downto 0) => group_size(9 downto 0),
      busy => NLW_staged_half_N_div_busy_UNCONNECTED,
      clk => clk,
      dbz => NLW_staged_half_N_div_dbz_UNCONNECTED,
      done => NLW_staged_half_N_div_done_UNCONNECTED,
      \rem\(9 downto 0) => NLW_staged_half_N_div_rem_UNCONNECTED(9 downto 0),
      rst => \data_counter[10]_i_3_n_0\,
      start => start_div_reg_n_0,
      val(9) => NLW_staged_half_N_div_val_UNCONNECTED(9),
      val(8 downto 0) => staged_half_N(8 downto 0),
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
      CLR => \data_counter[10]_i_3_n_0\,
      D => start_div_i_1_n_0,
      Q => start_div_reg_n_0
    );
start_sending_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \start_sending__0\,
      G => src_sel_o_reg_i_2_n_0,
      GE => '1',
      Q => start_sending
    );
\state[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \start_sending__0\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \^state\(0)
    );
\state[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => twiddle_addr_ad,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \^state\(1)
    );
\state[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => twiddle_addr_ad,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \^state\(2)
    );
\state[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \start_sending__0\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \^state\(3)
    );
\twiddle_addr_ad[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(3),
      I1 => staged_half_N(3),
      O => \twiddle_addr_ad[3]_i_2_n_0\
    );
\twiddle_addr_ad[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(2),
      I1 => staged_half_N(2),
      O => \twiddle_addr_ad[3]_i_3_n_0\
    );
\twiddle_addr_ad[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(1),
      I1 => staged_half_N(1),
      O => \twiddle_addr_ad[3]_i_4_n_0\
    );
\twiddle_addr_ad[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(0),
      I1 => staged_half_N(0),
      O => \twiddle_addr_ad[3]_i_5_n_0\
    );
\twiddle_addr_ad[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(7),
      I1 => staged_half_N(7),
      O => \twiddle_addr_ad[7]_i_2_n_0\
    );
\twiddle_addr_ad[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(6),
      I1 => staged_half_N(6),
      O => \twiddle_addr_ad[7]_i_3_n_0\
    );
\twiddle_addr_ad[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(5),
      I1 => staged_half_N(5),
      O => \twiddle_addr_ad[7]_i_4_n_0\
    );
\twiddle_addr_ad[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(4),
      I1 => staged_half_N(4),
      O => \twiddle_addr_ad[7]_i_5_n_0\
    );
\twiddle_addr_ad[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^twiddle_addr_o\(8),
      I1 => staged_half_N(8),
      O => \twiddle_addr_ad[8]_i_2_n_0\
    );
\twiddle_addr_ad_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(0),
      Q => \twiddle_addr_ad__0\(0)
    );
\twiddle_addr_ad_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(1),
      Q => \twiddle_addr_ad__0\(1)
    );
\twiddle_addr_ad_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(2),
      Q => \twiddle_addr_ad__0\(2)
    );
\twiddle_addr_ad_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(3),
      Q => \twiddle_addr_ad__0\(3)
    );
\twiddle_addr_ad_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \twiddle_addr_ad_reg[3]_i_1_n_0\,
      CO(2) => \twiddle_addr_ad_reg[3]_i_1_n_1\,
      CO(1) => \twiddle_addr_ad_reg[3]_i_1_n_2\,
      CO(0) => \twiddle_addr_ad_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^twiddle_addr_o\(3 downto 0),
      O(3 downto 0) => p_0_in(3 downto 0),
      S(3) => \twiddle_addr_ad[3]_i_2_n_0\,
      S(2) => \twiddle_addr_ad[3]_i_3_n_0\,
      S(1) => \twiddle_addr_ad[3]_i_4_n_0\,
      S(0) => \twiddle_addr_ad[3]_i_5_n_0\
    );
\twiddle_addr_ad_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(4),
      Q => \twiddle_addr_ad__0\(4)
    );
\twiddle_addr_ad_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(5),
      Q => \twiddle_addr_ad__0\(5)
    );
\twiddle_addr_ad_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(6),
      Q => \twiddle_addr_ad__0\(6)
    );
\twiddle_addr_ad_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(7),
      Q => \twiddle_addr_ad__0\(7)
    );
\twiddle_addr_ad_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \twiddle_addr_ad_reg[3]_i_1_n_0\,
      CO(3) => \twiddle_addr_ad_reg[7]_i_1_n_0\,
      CO(2) => \twiddle_addr_ad_reg[7]_i_1_n_1\,
      CO(1) => \twiddle_addr_ad_reg[7]_i_1_n_2\,
      CO(0) => \twiddle_addr_ad_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^twiddle_addr_o\(7 downto 4),
      O(3 downto 0) => p_0_in(7 downto 4),
      S(3) => \twiddle_addr_ad[7]_i_2_n_0\,
      S(2) => \twiddle_addr_ad[7]_i_3_n_0\,
      S(1) => \twiddle_addr_ad[7]_i_4_n_0\,
      S(0) => \twiddle_addr_ad[7]_i_5_n_0\
    );
\twiddle_addr_ad_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => twiddle_addr_ad,
      CLR => \data_counter[10]_i_3_n_0\,
      D => p_0_in(8),
      Q => \twiddle_addr_ad__0\(8)
    );
\twiddle_addr_ad_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \twiddle_addr_ad_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_twiddle_addr_ad_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_twiddle_addr_ad_reg[8]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in(8),
      S(3 downto 1) => B"000",
      S(0) => \twiddle_addr_ad[8]_i_2_n_0\
    );
\twiddle_addr_o_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[0]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(0)
    );
\twiddle_addr_o_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(0),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[0]_i_1_n_0\
    );
\twiddle_addr_o_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[1]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(1)
    );
\twiddle_addr_o_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(1),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[1]_i_1_n_0\
    );
\twiddle_addr_o_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[2]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(2)
    );
\twiddle_addr_o_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(2),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[2]_i_1_n_0\
    );
\twiddle_addr_o_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[3]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(3)
    );
\twiddle_addr_o_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(3),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[3]_i_1_n_0\
    );
\twiddle_addr_o_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[4]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(4)
    );
\twiddle_addr_o_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(4),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[4]_i_1_n_0\
    );
\twiddle_addr_o_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[5]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(5)
    );
\twiddle_addr_o_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(5),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[5]_i_1_n_0\
    );
\twiddle_addr_o_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[6]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(6)
    );
\twiddle_addr_o_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(6),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[6]_i_1_n_0\
    );
\twiddle_addr_o_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[7]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(7)
    );
\twiddle_addr_o_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(7),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[7]_i_1_n_0\
    );
\twiddle_addr_o_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \twiddle_addr_o_reg[8]_i_1_n_0\,
      G => \twiddle_addr_o_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^twiddle_addr_o\(8)
    );
\twiddle_addr_o_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \twiddle_addr_ad__0\(8),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[8]_i_1_n_0\
    );
\twiddle_addr_o_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => src_sel_o_reg_i_3_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \twiddle_addr_o_reg[8]_i_2_n_0\
    );
your_instance_name: entity work.fft_control_unit_2_data_counter_mux2
     port map (
      d0(9 downto 0) => data_counter_rev(9 downto 0),
      d1(9 downto 0) => \^data_counter\(9 downto 0),
      s => your_instance_name_i_1_n_0,
      y(9 downto 0) => data_counter_mux(9 downto 0)
    );
your_instance_name_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \stage_counter_reg_n_0_[1]\,
      I1 => \stage_counter_reg_n_0_[0]\,
      I2 => \stage_counter_reg_n_0_[3]\,
      I3 => \stage_counter_reg_n_0_[2]\,
      O => your_instance_name_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_control_unit_2 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    start_i : in STD_LOGIC;
    dl_busy_i : in STD_LOGIC;
    src_sel_o : out STD_LOGIC;
    fft_ready_o : out STD_LOGIC;
    busy_o : out STD_LOGIC;
    bf_ce_o : out STD_LOGIC;
    bram_addr_x0_o : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_addr_x1_o : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_x0_we_o : out STD_LOGIC;
    bram_x1_we_o : out STD_LOGIC;
    bram_x0_en_o : out STD_LOGIC;
    bram_x1_en_o : out STD_LOGIC;
    twiddle_addr_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_counter : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fft_control_unit_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_control_unit_2 : entity is "fft_control_unit_2,control_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_control_unit_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_control_unit_2 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_control_unit_2 : entity is "control_unit,Vivado 2021.1";
end fft_control_unit_2;

architecture STRUCTURE of fft_control_unit_2 is
  attribute BF_OP_CYCLES : integer;
  attribute BF_OP_CYCLES of inst : label is 10;
  attribute BRAM_SIZE : integer;
  attribute BRAM_SIZE of inst : label is 1024;
  attribute DIV_CYCLES : string;
  attribute DIV_CYCLES of inst : label is "4'b1011";
  attribute FIRST_STAGE : integer;
  attribute FIRST_STAGE of inst : label is 7;
  attribute HALF_N : integer;
  attribute HALF_N of inst : label is 512;
  attribute N : integer;
  attribute N of inst : label is 1024;
  attribute STAGES_NUM : integer;
  attribute STAGES_NUM of inst : label is 3;
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
  attribute S_SEND_RESULTS of inst : label is "4'b1001";
  attribute S_STORE_INPUTS : string;
  attribute S_STORE_INPUTS of inst : label is "4'b0001";
  attribute S_WAIT_MS : string;
  attribute S_WAIT_MS of inst : label is "4'b1000";
  attribute S_WRITE_BACK : string;
  attribute S_WRITE_BACK of inst : label is "4'b0110";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.fft_control_unit_2_control_unit
     port map (
      bf_ce_o => bf_ce_o,
      bram_addr_x0_o(9 downto 0) => bram_addr_x0_o(9 downto 0),
      bram_addr_x1_o(9 downto 0) => bram_addr_x1_o(9 downto 0),
      bram_x0_en_o => bram_x0_en_o,
      bram_x0_we_o => bram_x0_we_o,
      bram_x1_en_o => bram_x1_en_o,
      bram_x1_we_o => bram_x1_we_o,
      busy_o => busy_o,
      clk => clk,
      data_counter(10 downto 0) => data_counter(10 downto 0),
      dl_busy_i => dl_busy_i,
      fft_ready_o => fft_ready_o,
      rstn => rstn,
      src_sel_o => src_sel_o,
      start_i => start_i,
      state(3 downto 0) => state(3 downto 0),
      twiddle_addr_o(8 downto 0) => twiddle_addr_o(8 downto 0)
    );
end STRUCTURE;
