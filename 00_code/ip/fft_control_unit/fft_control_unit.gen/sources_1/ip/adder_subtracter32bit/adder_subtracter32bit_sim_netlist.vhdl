-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Oct 29 12:07:02 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/ip/fft_control_unit/fft_control_unit.gen/sources_1/ip/adder_subtracter32bit/adder_subtracter32bit_sim_netlist.vhdl
-- Design      : adder_subtracter32bit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_subtracter32bit is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adder_subtracter32bit : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adder_subtracter32bit : entity is "adder_subtracter32bit,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of adder_subtracter32bit : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of adder_subtracter32bit : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of adder_subtracter32bit : entity is "adder_subtracter32,Vivado 2021.1";
end adder_subtracter32bit;

architecture STRUCTURE of adder_subtracter32bit is
  signal \r[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \r[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \r[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \r[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \r[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \r[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \r[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \r[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \r[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \r[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \r[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \r[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \r[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \r[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r[1]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r[29]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r[29]_INST_0_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r[29]_INST_0_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r[29]_INST_0_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r[2]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r[3]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r[5]_INST_0_i_1\ : label is "soft_lutpair1";
begin
\r[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"28AA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => y(0),
      I2 => x(0),
      I3 => \r[29]_INST_0_i_3_n_0\,
      O => r(0)
    );
\r[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[10]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(10),
      I4 => x(10),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(10)
    );
\r[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(9),
      I1 => y(9),
      I2 => c_in,
      I3 => x(8),
      I4 => y(8),
      I5 => \r[8]_INST_0_i_1_n_0\,
      O => \r[10]_INST_0_i_1_n_0\
    );
\r[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[11]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(11),
      I4 => x(11),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(11)
    );
\r[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(10),
      I1 => y(10),
      I2 => c_in,
      I3 => x(9),
      I4 => y(9),
      I5 => \r[11]_INST_0_i_2_n_0\,
      O => \r[11]_INST_0_i_1_n_0\
    );
\r[11]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x(4),
      I1 => y(4),
      I2 => c_in,
      O => \r[11]_INST_0_i_10_n_0\
    );
\r[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(8),
      I1 => y(8),
      I2 => c_in,
      I3 => x(7),
      I4 => y(7),
      I5 => \r[11]_INST_0_i_3_n_0\,
      O => \r[11]_INST_0_i_2_n_0\
    );
\r[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8EEE8"
    )
        port map (
      I0 => x(6),
      I1 => \r[11]_INST_0_i_4_n_0\,
      I2 => x(5),
      I3 => \r[11]_INST_0_i_5_n_0\,
      I4 => \r[11]_INST_0_i_6_n_0\,
      I5 => \r[11]_INST_0_i_7_n_0\,
      O => \r[11]_INST_0_i_3_n_0\
    );
\r[11]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(6),
      O => \r[11]_INST_0_i_4_n_0\
    );
\r[11]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(5),
      O => \r[11]_INST_0_i_5_n_0\
    );
\r[11]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => x(4),
      I1 => y(4),
      I2 => c_in,
      O => \r[11]_INST_0_i_6_n_0\
    );
\r[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFFFFFFF"
    )
        port map (
      I0 => \r[2]_INST_0_i_1_n_0\,
      I1 => \r[11]_INST_0_i_8_n_0\,
      I2 => x(2),
      I3 => \r[11]_INST_0_i_9_n_0\,
      I4 => x(3),
      I5 => \r[11]_INST_0_i_10_n_0\,
      O => \r[11]_INST_0_i_7_n_0\
    );
\r[11]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(2),
      O => \r[11]_INST_0_i_8_n_0\
    );
\r[11]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(3),
      O => \r[11]_INST_0_i_9_n_0\
    );
\r[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[12]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(12)
    );
\r[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[11]_INST_0_i_1_n_0\,
      I1 => y(11),
      I2 => x(11),
      I3 => c_in,
      I4 => y(12),
      I5 => x(12),
      O => \r[12]_INST_0_i_1_n_0\
    );
\r[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[13]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(13),
      I4 => x(13),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(13)
    );
\r[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(12),
      I1 => y(12),
      I2 => c_in,
      I3 => x(11),
      I4 => y(11),
      I5 => \r[11]_INST_0_i_1_n_0\,
      O => \r[13]_INST_0_i_1_n_0\
    );
\r[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[14]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(14)
    );
\r[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[13]_INST_0_i_1_n_0\,
      I1 => y(13),
      I2 => x(13),
      I3 => c_in,
      I4 => y(14),
      I5 => x(14),
      O => \r[14]_INST_0_i_1_n_0\
    );
\r[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[15]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(15),
      I4 => x(15),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(15)
    );
\r[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(14),
      I1 => y(14),
      I2 => c_in,
      I3 => x(13),
      I4 => y(13),
      I5 => \r[13]_INST_0_i_1_n_0\,
      O => \r[15]_INST_0_i_1_n_0\
    );
\r[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[16]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(16),
      I4 => x(16),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(16)
    );
\r[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(15),
      I1 => y(15),
      I2 => c_in,
      I3 => x(14),
      I4 => y(14),
      I5 => \r[16]_INST_0_i_2_n_0\,
      O => \r[16]_INST_0_i_1_n_0\
    );
\r[16]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x(9),
      I1 => y(9),
      I2 => c_in,
      O => \r[16]_INST_0_i_10_n_0\
    );
\r[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(13),
      I1 => y(13),
      I2 => c_in,
      I3 => x(12),
      I4 => y(12),
      I5 => \r[16]_INST_0_i_3_n_0\,
      O => \r[16]_INST_0_i_2_n_0\
    );
\r[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8EEE8"
    )
        port map (
      I0 => x(11),
      I1 => \r[16]_INST_0_i_4_n_0\,
      I2 => x(10),
      I3 => \r[16]_INST_0_i_5_n_0\,
      I4 => \r[16]_INST_0_i_6_n_0\,
      I5 => \r[16]_INST_0_i_7_n_0\,
      O => \r[16]_INST_0_i_3_n_0\
    );
\r[16]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(11),
      O => \r[16]_INST_0_i_4_n_0\
    );
\r[16]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(10),
      O => \r[16]_INST_0_i_5_n_0\
    );
\r[16]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => x(9),
      I1 => y(9),
      I2 => c_in,
      O => \r[16]_INST_0_i_6_n_0\
    );
\r[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFFFFFFF"
    )
        port map (
      I0 => \r[11]_INST_0_i_3_n_0\,
      I1 => \r[16]_INST_0_i_8_n_0\,
      I2 => x(7),
      I3 => \r[16]_INST_0_i_9_n_0\,
      I4 => x(8),
      I5 => \r[16]_INST_0_i_10_n_0\,
      O => \r[16]_INST_0_i_7_n_0\
    );
\r[16]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(7),
      O => \r[16]_INST_0_i_8_n_0\
    );
\r[16]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(8),
      O => \r[16]_INST_0_i_9_n_0\
    );
\r[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[17]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(17)
    );
\r[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[16]_INST_0_i_1_n_0\,
      I1 => y(16),
      I2 => x(16),
      I3 => c_in,
      I4 => y(17),
      I5 => x(17),
      O => \r[17]_INST_0_i_1_n_0\
    );
\r[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[18]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(18),
      I4 => x(18),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(18)
    );
\r[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(17),
      I1 => y(17),
      I2 => c_in,
      I3 => x(16),
      I4 => y(16),
      I5 => \r[16]_INST_0_i_1_n_0\,
      O => \r[18]_INST_0_i_1_n_0\
    );
\r[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[19]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(19)
    );
\r[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[18]_INST_0_i_1_n_0\,
      I1 => y(18),
      I2 => x(18),
      I3 => c_in,
      I4 => y(19),
      I5 => x(19),
      O => \r[19]_INST_0_i_1_n_0\
    );
\r[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A80802A2AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => c_in,
      I2 => y(0),
      I3 => x(0),
      I4 => \r[1]_INST_0_i_1_n_0\,
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(1)
    );
\r[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => x(1),
      I1 => y(1),
      I2 => c_in,
      O => \r[1]_INST_0_i_1_n_0\
    );
\r[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[20]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(20),
      I4 => x(20),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(20)
    );
\r[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(19),
      I1 => y(19),
      I2 => c_in,
      I3 => x(18),
      I4 => y(18),
      I5 => \r[18]_INST_0_i_1_n_0\,
      O => \r[20]_INST_0_i_1_n_0\
    );
\r[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[21]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(21),
      I4 => x(21),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(21)
    );
\r[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(20),
      I1 => y(20),
      I2 => c_in,
      I3 => x(19),
      I4 => y(19),
      I5 => \r[21]_INST_0_i_2_n_0\,
      O => \r[21]_INST_0_i_1_n_0\
    );
\r[21]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x(14),
      I1 => y(14),
      I2 => c_in,
      O => \r[21]_INST_0_i_10_n_0\
    );
\r[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(18),
      I1 => y(18),
      I2 => c_in,
      I3 => x(17),
      I4 => y(17),
      I5 => \r[21]_INST_0_i_3_n_0\,
      O => \r[21]_INST_0_i_2_n_0\
    );
\r[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8EEE8"
    )
        port map (
      I0 => x(16),
      I1 => \r[21]_INST_0_i_4_n_0\,
      I2 => x(15),
      I3 => \r[21]_INST_0_i_5_n_0\,
      I4 => \r[21]_INST_0_i_6_n_0\,
      I5 => \r[21]_INST_0_i_7_n_0\,
      O => \r[21]_INST_0_i_3_n_0\
    );
\r[21]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(16),
      O => \r[21]_INST_0_i_4_n_0\
    );
\r[21]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(15),
      O => \r[21]_INST_0_i_5_n_0\
    );
\r[21]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => x(14),
      I1 => y(14),
      I2 => c_in,
      O => \r[21]_INST_0_i_6_n_0\
    );
\r[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFFFFFFF"
    )
        port map (
      I0 => \r[16]_INST_0_i_3_n_0\,
      I1 => \r[21]_INST_0_i_8_n_0\,
      I2 => x(12),
      I3 => \r[21]_INST_0_i_9_n_0\,
      I4 => x(13),
      I5 => \r[21]_INST_0_i_10_n_0\,
      O => \r[21]_INST_0_i_7_n_0\
    );
\r[21]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(12),
      O => \r[21]_INST_0_i_8_n_0\
    );
\r[21]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(13),
      O => \r[21]_INST_0_i_9_n_0\
    );
\r[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[22]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(22)
    );
\r[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[21]_INST_0_i_1_n_0\,
      I1 => y(21),
      I2 => x(21),
      I3 => c_in,
      I4 => y(22),
      I5 => x(22),
      O => \r[22]_INST_0_i_1_n_0\
    );
\r[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[23]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(23),
      I4 => x(23),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(23)
    );
\r[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(22),
      I1 => y(22),
      I2 => c_in,
      I3 => x(21),
      I4 => y(21),
      I5 => \r[21]_INST_0_i_1_n_0\,
      O => \r[23]_INST_0_i_1_n_0\
    );
\r[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[24]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(24)
    );
\r[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[23]_INST_0_i_1_n_0\,
      I1 => y(23),
      I2 => x(23),
      I3 => c_in,
      I4 => y(24),
      I5 => x(24),
      O => \r[24]_INST_0_i_1_n_0\
    );
\r[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[25]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(25),
      I4 => x(25),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(25)
    );
\r[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(24),
      I1 => y(24),
      I2 => c_in,
      I3 => x(23),
      I4 => y(23),
      I5 => \r[23]_INST_0_i_1_n_0\,
      O => \r[25]_INST_0_i_1_n_0\
    );
\r[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[26]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(26),
      I4 => x(26),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(26)
    );
\r[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(25),
      I1 => y(25),
      I2 => c_in,
      I3 => x(24),
      I4 => y(24),
      I5 => \r[26]_INST_0_i_2_n_0\,
      O => \r[26]_INST_0_i_1_n_0\
    );
\r[26]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x(19),
      I1 => y(19),
      I2 => c_in,
      O => \r[26]_INST_0_i_10_n_0\
    );
\r[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(23),
      I1 => y(23),
      I2 => c_in,
      I3 => x(22),
      I4 => y(22),
      I5 => \r[26]_INST_0_i_3_n_0\,
      O => \r[26]_INST_0_i_2_n_0\
    );
\r[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8EEE8"
    )
        port map (
      I0 => x(21),
      I1 => \r[26]_INST_0_i_4_n_0\,
      I2 => x(20),
      I3 => \r[26]_INST_0_i_5_n_0\,
      I4 => \r[26]_INST_0_i_6_n_0\,
      I5 => \r[26]_INST_0_i_7_n_0\,
      O => \r[26]_INST_0_i_3_n_0\
    );
\r[26]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(21),
      O => \r[26]_INST_0_i_4_n_0\
    );
\r[26]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(20),
      O => \r[26]_INST_0_i_5_n_0\
    );
\r[26]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => x(19),
      I1 => y(19),
      I2 => c_in,
      O => \r[26]_INST_0_i_6_n_0\
    );
\r[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFFFFFFF"
    )
        port map (
      I0 => \r[21]_INST_0_i_3_n_0\,
      I1 => \r[26]_INST_0_i_8_n_0\,
      I2 => x(17),
      I3 => \r[26]_INST_0_i_9_n_0\,
      I4 => x(18),
      I5 => \r[26]_INST_0_i_10_n_0\,
      O => \r[26]_INST_0_i_7_n_0\
    );
\r[26]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(17),
      O => \r[26]_INST_0_i_8_n_0\
    );
\r[26]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(18),
      O => \r[26]_INST_0_i_9_n_0\
    );
\r[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[27]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(27)
    );
\r[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[26]_INST_0_i_1_n_0\,
      I1 => y(26),
      I2 => x(26),
      I3 => c_in,
      I4 => y(27),
      I5 => x(27),
      O => \r[27]_INST_0_i_1_n_0\
    );
\r[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[28]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(28),
      I4 => x(28),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(28)
    );
\r[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(27),
      I1 => y(27),
      I2 => c_in,
      I3 => x(26),
      I4 => y(26),
      I5 => \r[26]_INST_0_i_1_n_0\,
      O => \r[28]_INST_0_i_1_n_0\
    );
\r[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[29]_INST_0_i_2_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(29)
    );
\r[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEAFEEAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_4_n_0\,
      I1 => \r[31]_INST_0_i_2_n_0\,
      I2 => \r[29]_INST_0_i_5_n_0\,
      I3 => x(29),
      I4 => \r[29]_INST_0_i_6_n_0\,
      I5 => x(30),
      O => \r[29]_INST_0_i_1_n_0\
    );
\r[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[28]_INST_0_i_1_n_0\,
      I1 => y(28),
      I2 => x(28),
      I3 => c_in,
      I4 => y(29),
      I5 => x(29),
      O => \r[29]_INST_0_i_2_n_0\
    );
\r[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF001717FF"
    )
        port map (
      I0 => \r[31]_INST_0_i_2_n_0\,
      I1 => \r[29]_INST_0_i_5_n_0\,
      I2 => x(29),
      I3 => \r[29]_INST_0_i_6_n_0\,
      I4 => x(30),
      I5 => \r[29]_INST_0_i_7_n_0\,
      O => \r[29]_INST_0_i_3_n_0\
    );
\r[29]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => x(31),
      I1 => y(31),
      I2 => c_in,
      O => \r[29]_INST_0_i_4_n_0\
    );
\r[29]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(29),
      O => \r[29]_INST_0_i_5_n_0\
    );
\r[29]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(30),
      O => \r[29]_INST_0_i_6_n_0\
    );
\r[29]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => x(31),
      I1 => y(31),
      I2 => c_in,
      O => \r[29]_INST_0_i_7_n_0\
    );
\r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[2]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(2),
      I4 => x(2),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(2)
    );
\r[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE28B8B8"
    )
        port map (
      I0 => x(1),
      I1 => y(1),
      I2 => c_in,
      I3 => x(0),
      I4 => y(0),
      O => \r[2]_INST_0_i_1_n_0\
    );
\r[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6884291269967BB6"
    )
        port map (
      I0 => \r[30]_INST_0_i_1_n_0\,
      I1 => c_in,
      I2 => y(30),
      I3 => x(30),
      I4 => y(31),
      I5 => x(31),
      O => r(30)
    );
\r[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(29),
      I1 => y(29),
      I2 => c_in,
      I3 => x(28),
      I4 => y(28),
      I5 => \r[28]_INST_0_i_1_n_0\,
      O => \r[30]_INST_0_i_1_n_0\
    );
\r[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9EE8"
    )
        port map (
      I0 => \r[31]_INST_0_i_1_n_0\,
      I1 => x(31),
      I2 => y(31),
      I3 => c_in,
      O => r(31)
    );
\r[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41D14147D1D747D7"
    )
        port map (
      I0 => x(30),
      I1 => y(30),
      I2 => c_in,
      I3 => x(29),
      I4 => y(29),
      I5 => \r[31]_INST_0_i_2_n_0\,
      O => \r[31]_INST_0_i_1_n_0\
    );
\r[31]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x(24),
      I1 => y(24),
      I2 => c_in,
      O => \r[31]_INST_0_i_10_n_0\
    );
\r[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(28),
      I1 => y(28),
      I2 => c_in,
      I3 => x(27),
      I4 => y(27),
      I5 => \r[31]_INST_0_i_3_n_0\,
      O => \r[31]_INST_0_i_2_n_0\
    );
\r[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8EEE8"
    )
        port map (
      I0 => x(26),
      I1 => \r[31]_INST_0_i_4_n_0\,
      I2 => x(25),
      I3 => \r[31]_INST_0_i_5_n_0\,
      I4 => \r[31]_INST_0_i_6_n_0\,
      I5 => \r[31]_INST_0_i_7_n_0\,
      O => \r[31]_INST_0_i_3_n_0\
    );
\r[31]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(26),
      O => \r[31]_INST_0_i_4_n_0\
    );
\r[31]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(25),
      O => \r[31]_INST_0_i_5_n_0\
    );
\r[31]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => x(24),
      I1 => y(24),
      I2 => c_in,
      O => \r[31]_INST_0_i_6_n_0\
    );
\r[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFFFFFFF"
    )
        port map (
      I0 => \r[26]_INST_0_i_3_n_0\,
      I1 => \r[31]_INST_0_i_8_n_0\,
      I2 => x(22),
      I3 => \r[31]_INST_0_i_9_n_0\,
      I4 => x(23),
      I5 => \r[31]_INST_0_i_10_n_0\,
      O => \r[31]_INST_0_i_7_n_0\
    );
\r[31]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(22),
      O => \r[31]_INST_0_i_8_n_0\
    );
\r[31]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(23),
      O => \r[31]_INST_0_i_9_n_0\
    );
\r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[3]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(3),
      I4 => x(3),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(3)
    );
\r[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => x(2),
      I1 => y(2),
      I2 => c_in,
      I3 => \r[2]_INST_0_i_1_n_0\,
      O => \r[3]_INST_0_i_1_n_0\
    );
\r[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[4]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(4),
      I4 => x(4),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(4)
    );
\r[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(3),
      I1 => y(3),
      I2 => c_in,
      I3 => x(2),
      I4 => y(2),
      I5 => \r[2]_INST_0_i_1_n_0\,
      O => \r[4]_INST_0_i_1_n_0\
    );
\r[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[5]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(5),
      I4 => x(5),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(5)
    );
\r[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => x(4),
      I1 => y(4),
      I2 => c_in,
      I3 => \r[4]_INST_0_i_1_n_0\,
      O => \r[5]_INST_0_i_1_n_0\
    );
\r[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[6]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(6),
      I4 => x(6),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(6)
    );
\r[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(5),
      I1 => y(5),
      I2 => c_in,
      I3 => x(4),
      I4 => y(4),
      I5 => \r[4]_INST_0_i_1_n_0\,
      O => \r[6]_INST_0_i_1_n_0\
    );
\r[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[7]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(7)
    );
\r[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[6]_INST_0_i_1_n_0\,
      I1 => y(6),
      I2 => x(6),
      I3 => c_in,
      I4 => y(7),
      I5 => x(7),
      O => \r[7]_INST_0_i_1_n_0\
    );
\r[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[8]_INST_0_i_1_n_0\,
      I2 => c_in,
      I3 => y(8),
      I4 => x(8),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => r(8)
    );
\r[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => x(7),
      I1 => y(7),
      I2 => c_in,
      I3 => x(6),
      I4 => y(6),
      I5 => \r[6]_INST_0_i_1_n_0\,
      O => \r[8]_INST_0_i_1_n_0\
    );
\r[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r[29]_INST_0_i_1_n_0\,
      I1 => \r[9]_INST_0_i_1_n_0\,
      I2 => \r[29]_INST_0_i_3_n_0\,
      O => r(9)
    );
\r[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE8B217B2174DE8"
    )
        port map (
      I0 => \r[8]_INST_0_i_1_n_0\,
      I1 => y(8),
      I2 => x(8),
      I3 => c_in,
      I4 => y(9),
      I5 => x(9),
      O => \r[9]_INST_0_i_1_n_0\
    );
v_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2841"
    )
        port map (
      I0 => x(31),
      I1 => y(31),
      I2 => c_in,
      I3 => \r[31]_INST_0_i_1_n_0\,
      O => v
    );
end STRUCTURE;
