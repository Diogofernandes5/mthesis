-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Thu Mar 28 13:07:04 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top butterfly_full_0 -prefix
--               butterfly_full_0_ butterfly_full_0_sim_netlist.vhdl
-- Design      : butterfly_full_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity butterfly_full_0_adder_subtracter32_ip is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of butterfly_full_0_adder_subtracter32_ip : entity is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of butterfly_full_0_adder_subtracter32_ip : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of butterfly_full_0_adder_subtracter32_ip : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of butterfly_full_0_adder_subtracter32_ip : entity is "adder_subtracter32,Vivado 2021.1";
end butterfly_full_0_adder_subtracter32_ip;

architecture STRUCTURE of butterfly_full_0_adder_subtracter32_ip is
  signal \<const0>\ : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[0]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \r[1]_INST_0\ : label is "soft_lutpair68";
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
  r(3) <= \<const0>\;
  r(2) <= \<const0>\;
  r(1 downto 0) <= \^r\(1 downto 0);
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
\r[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => x(0),
      I1 => y(0),
      O => \^r\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_adder_subtracter32_ip__1\ is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_adder_subtracter32_ip__1\ : entity is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_adder_subtracter32_ip__1\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_adder_subtracter32_ip__1\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_adder_subtracter32_ip__1\ : entity is "adder_subtracter32_ip";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_adder_subtracter32_ip__1\ : entity is "adder_subtracter32,Vivado 2021.1";
end \butterfly_full_0_adder_subtracter32_ip__1\;

architecture STRUCTURE of \butterfly_full_0_adder_subtracter32_ip__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/add0/s0__0\ : STD_LOGIC;
  signal \inst/add10/c_out00_out\ : STD_LOGIC;
  signal \inst/add10/c_out0__0\ : STD_LOGIC;
  signal \inst/add10/s0__0\ : STD_LOGIC;
  signal \inst/add15/c_out00_out\ : STD_LOGIC;
  signal \inst/add15/c_out0__0\ : STD_LOGIC;
  signal \inst/add15/s0__0\ : STD_LOGIC;
  signal \inst/add20/c_out00_out\ : STD_LOGIC;
  signal \inst/add20/c_out0__0\ : STD_LOGIC;
  signal \inst/add20/s0__0\ : STD_LOGIC;
  signal \inst/add25/c_out00_out\ : STD_LOGIC;
  signal \inst/add25/c_out0__0\ : STD_LOGIC;
  signal \inst/add25/s0__0\ : STD_LOGIC;
  signal \inst/add29/s0__0\ : STD_LOGIC;
  signal \inst/add5/c_out00_out\ : STD_LOGIC;
  signal \inst/add5/c_out0__0\ : STD_LOGIC;
  signal \inst/add5/s0__0\ : STD_LOGIC;
  signal \inst/c_out_10\ : STD_LOGIC;
  signal \inst/c_out_11\ : STD_LOGIC;
  signal \inst/c_out_12\ : STD_LOGIC;
  signal \inst/c_out_13\ : STD_LOGIC;
  signal \inst/c_out_14\ : STD_LOGIC;
  signal \inst/c_out_15\ : STD_LOGIC;
  signal \inst/c_out_16\ : STD_LOGIC;
  signal \inst/c_out_17\ : STD_LOGIC;
  signal \inst/c_out_18\ : STD_LOGIC;
  signal \inst/c_out_19\ : STD_LOGIC;
  signal \inst/c_out_2\ : STD_LOGIC;
  signal \inst/c_out_20\ : STD_LOGIC;
  signal \inst/c_out_21\ : STD_LOGIC;
  signal \inst/c_out_22\ : STD_LOGIC;
  signal \inst/c_out_23\ : STD_LOGIC;
  signal \inst/c_out_24\ : STD_LOGIC;
  signal \inst/c_out_25\ : STD_LOGIC;
  signal \inst/c_out_26\ : STD_LOGIC;
  signal \inst/c_out_27\ : STD_LOGIC;
  signal \inst/c_out_29\ : STD_LOGIC;
  signal \inst/c_out_4\ : STD_LOGIC;
  signal \inst/c_out_6\ : STD_LOGIC;
  signal \inst/c_out_7\ : STD_LOGIC;
  signal \inst/c_out_8\ : STD_LOGIC;
  signal \inst/c_out_9\ : STD_LOGIC;
  signal \inst/s\ : STD_LOGIC_VECTOR ( 29 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[0]_INST_0_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r[10]_INST_0_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r[10]_INST_0_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r[12]_INST_0_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r[12]_INST_0_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r[13]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r[13]_INST_0_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r[13]_INST_0_i_7\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r[15]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r[15]_INST_0_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r[17]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r[17]_INST_0_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r[18]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r[18]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r[18]_INST_0_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r[1]_INST_0_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r[20]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r[20]_INST_0_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r[22]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r[22]_INST_0_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r[23]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r[23]_INST_0_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r[23]_INST_0_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r[25]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r[25]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r[27]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r[27]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r[29]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r[30]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r[31]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r[4]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r[5]_INST_0_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r[6]_INST_0_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r[6]_INST_0_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r[8]_INST_0_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r[8]_INST_0_i_2\ : label is "soft_lutpair17";
begin
  v <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\r[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/add0/s0__0\,
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(0)
    );
\r[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      O => \inst/add0/s0__0\
    );
\r[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(10),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(10)
    );
\r[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_8\,
      I1 => x(9),
      I2 => y(9),
      I3 => x(10),
      I4 => y(10),
      O => \inst/s\(10)
    );
\r[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(8),
      I1 => x(8),
      I2 => y(7),
      I3 => x(7),
      I4 => \inst/c_out_6\,
      O => \inst/c_out_8\
    );
\r[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(11),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(11)
    );
\r[11]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_10\,
      I1 => x(11),
      I2 => y(11),
      O => \inst/s\(11)
    );
\r[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(12),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(12)
    );
\r[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_10\,
      I1 => x(11),
      I2 => y(11),
      I3 => x(12),
      I4 => y(12),
      O => \inst/s\(12)
    );
\r[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(10),
      I1 => x(10),
      I2 => y(9),
      I3 => x(9),
      I4 => \inst/c_out_8\,
      O => \inst/c_out_10\
    );
\r[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(13),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(13)
    );
\r[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_11\,
      I1 => x(12),
      I2 => y(12),
      I3 => x(13),
      I4 => y(13),
      O => \inst/s\(13)
    );
\r[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(11),
      I1 => x(11),
      I2 => y(10),
      I3 => x(10),
      I4 => \inst/c_out_9\,
      O => \inst/c_out_11\
    );
\r[13]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(9),
      I1 => x(9),
      I2 => y(8),
      I3 => x(8),
      I4 => \inst/c_out_7\,
      O => \inst/c_out_9\
    );
\r[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => y(7),
      I1 => x(7),
      I2 => y(6),
      I3 => x(6),
      I4 => \inst/add5/c_out00_out\,
      I5 => \inst/add5/c_out0__0\,
      O => \inst/c_out_7\
    );
\r[13]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => x(5),
      I1 => y(5),
      O => \inst/add5/c_out00_out\
    );
\r[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_2\,
      I1 => x(3),
      I2 => y(3),
      I3 => x(4),
      I4 => y(4),
      I5 => \inst/add5/s0__0\,
      O => \inst/add5/c_out0__0\
    );
\r[13]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(5),
      I1 => x(5),
      O => \inst/add5/s0__0\
    );
\r[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(14),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(14)
    );
\r[14]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_13\,
      I1 => x(14),
      I2 => y(14),
      O => \inst/s\(14)
    );
\r[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(15),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(15)
    );
\r[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_13\,
      I1 => x(14),
      I2 => y(14),
      I3 => x(15),
      I4 => y(15),
      O => \inst/s\(15)
    );
\r[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(13),
      I1 => x(13),
      I2 => y(12),
      I3 => x(12),
      I4 => \inst/c_out_11\,
      O => \inst/c_out_13\
    );
\r[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(16),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(16)
    );
\r[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_15\,
      I1 => x(16),
      I2 => y(16),
      O => \inst/s\(16)
    );
\r[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(17),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(17)
    );
\r[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_15\,
      I1 => x(16),
      I2 => y(16),
      I3 => x(17),
      I4 => y(17),
      O => \inst/s\(17)
    );
\r[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(15),
      I1 => x(15),
      I2 => y(14),
      I3 => x(14),
      I4 => \inst/c_out_13\,
      O => \inst/c_out_15\
    );
\r[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(18),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(18)
    );
\r[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_16\,
      I1 => x(17),
      I2 => y(17),
      I3 => x(18),
      I4 => y(18),
      O => \inst/s\(18)
    );
\r[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(16),
      I1 => x(16),
      I2 => y(15),
      I3 => x(15),
      I4 => \inst/c_out_14\,
      O => \inst/c_out_16\
    );
\r[18]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(14),
      I1 => x(14),
      I2 => y(13),
      I3 => x(13),
      I4 => \inst/c_out_12\,
      O => \inst/c_out_14\
    );
\r[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => y(12),
      I1 => x(12),
      I2 => y(11),
      I3 => x(11),
      I4 => \inst/add10/c_out00_out\,
      I5 => \inst/add10/c_out0__0\,
      O => \inst/c_out_12\
    );
\r[18]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => x(10),
      I1 => y(10),
      O => \inst/add10/c_out00_out\
    );
\r[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_7\,
      I1 => x(8),
      I2 => y(8),
      I3 => x(9),
      I4 => y(9),
      I5 => \inst/add10/s0__0\,
      O => \inst/add10/c_out0__0\
    );
\r[18]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(10),
      I1 => x(10),
      O => \inst/add10/s0__0\
    );
\r[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(19),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(19)
    );
\r[19]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_18\,
      I1 => x(19),
      I2 => y(19),
      O => \inst/s\(19)
    );
\r[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(1),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(1)
    );
\r[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      O => \inst/s\(1)
    );
\r[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(20),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(20)
    );
\r[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_18\,
      I1 => x(19),
      I2 => y(19),
      I3 => x(20),
      I4 => y(20),
      O => \inst/s\(20)
    );
\r[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(18),
      I1 => x(18),
      I2 => y(17),
      I3 => x(17),
      I4 => \inst/c_out_16\,
      O => \inst/c_out_18\
    );
\r[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(21),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(21)
    );
\r[21]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_20\,
      I1 => x(21),
      I2 => y(21),
      O => \inst/s\(21)
    );
\r[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(22),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(22)
    );
\r[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_20\,
      I1 => x(21),
      I2 => y(21),
      I3 => x(22),
      I4 => y(22),
      O => \inst/s\(22)
    );
\r[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(20),
      I1 => x(20),
      I2 => y(19),
      I3 => x(19),
      I4 => \inst/c_out_18\,
      O => \inst/c_out_20\
    );
\r[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(23),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(23)
    );
\r[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_21\,
      I1 => x(22),
      I2 => y(22),
      I3 => x(23),
      I4 => y(23),
      O => \inst/s\(23)
    );
\r[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(21),
      I1 => x(21),
      I2 => y(20),
      I3 => x(20),
      I4 => \inst/c_out_19\,
      O => \inst/c_out_21\
    );
\r[23]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(19),
      I1 => x(19),
      I2 => y(18),
      I3 => x(18),
      I4 => \inst/c_out_17\,
      O => \inst/c_out_19\
    );
\r[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => y(17),
      I1 => x(17),
      I2 => y(16),
      I3 => x(16),
      I4 => \inst/add15/c_out00_out\,
      I5 => \inst/add15/c_out0__0\,
      O => \inst/c_out_17\
    );
\r[23]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => x(15),
      I1 => y(15),
      O => \inst/add15/c_out00_out\
    );
\r[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_12\,
      I1 => x(13),
      I2 => y(13),
      I3 => x(14),
      I4 => y(14),
      I5 => \inst/add15/s0__0\,
      O => \inst/add15/c_out0__0\
    );
\r[23]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(15),
      I1 => x(15),
      O => \inst/add15/s0__0\
    );
\r[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(24),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(24)
    );
\r[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_23\,
      I1 => x(24),
      I2 => y(24),
      O => \inst/s\(24)
    );
\r[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(25),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(25)
    );
\r[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_23\,
      I1 => x(24),
      I2 => y(24),
      I3 => x(25),
      I4 => y(25),
      O => \inst/s\(25)
    );
\r[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(23),
      I1 => x(23),
      I2 => y(22),
      I3 => x(22),
      I4 => \inst/c_out_21\,
      O => \inst/c_out_23\
    );
\r[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(26),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(26)
    );
\r[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_25\,
      I1 => x(26),
      I2 => y(26),
      O => \inst/s\(26)
    );
\r[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(27),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(27)
    );
\r[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_25\,
      I1 => x(26),
      I2 => y(26),
      I3 => x(27),
      I4 => y(27),
      O => \inst/s\(27)
    );
\r[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(25),
      I1 => x(25),
      I2 => y(24),
      I3 => x(24),
      I4 => \inst/c_out_23\,
      O => \inst/c_out_25\
    );
\r[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(28),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(28)
    );
\r[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_26\,
      I1 => x(27),
      I2 => y(27),
      I3 => x(28),
      I4 => y(28),
      O => \inst/s\(28)
    );
\r[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(29),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(29)
    );
\r[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \inst/c_out_26\,
      I1 => x(27),
      I2 => y(27),
      I3 => x(28),
      I4 => y(28),
      I5 => \inst/add29/s0__0\,
      O => \inst/s\(29)
    );
\r[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(26),
      I1 => x(26),
      I2 => y(25),
      I3 => x(25),
      I4 => \inst/c_out_24\,
      O => \inst/c_out_26\
    );
\r[29]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(29),
      I1 => x(29),
      O => \inst/add29/s0__0\
    );
\r[29]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(24),
      I1 => x(24),
      I2 => y(23),
      I3 => x(23),
      I4 => \inst/c_out_22\,
      O => \inst/c_out_24\
    );
\r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(2),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(2)
    );
\r[2]_INST_0_i_1\: unisim.vcomponents.LUT6
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
      O => \inst/s\(2)
    );
\r[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C114D77C"
    )
        port map (
      I0 => x(31),
      I1 => y(30),
      I2 => x(30),
      I3 => \inst/c_out_29\,
      I4 => y(31),
      O => r(30)
    );
\r[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBF022A"
    )
        port map (
      I0 => y(31),
      I1 => \inst/c_out_29\,
      I2 => x(30),
      I3 => y(30),
      I4 => x(31),
      O => r(31)
    );
\r[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => y(29),
      I1 => x(29),
      I2 => y(28),
      I3 => x(28),
      I4 => \inst/c_out_27\,
      O => \inst/c_out_29\
    );
\r[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => y(27),
      I1 => x(27),
      I2 => y(26),
      I3 => x(26),
      I4 => \inst/add25/c_out00_out\,
      I5 => \inst/add25/c_out0__0\,
      O => \inst/c_out_27\
    );
\r[31]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => x(25),
      I1 => y(25),
      O => \inst/add25/c_out00_out\
    );
\r[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_22\,
      I1 => x(23),
      I2 => y(23),
      I3 => x(24),
      I4 => y(24),
      I5 => \inst/add25/s0__0\,
      O => \inst/add25/c_out0__0\
    );
\r[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => y(22),
      I1 => x(22),
      I2 => y(21),
      I3 => x(21),
      I4 => \inst/add20/c_out00_out\,
      I5 => \inst/add20/c_out0__0\,
      O => \inst/c_out_22\
    );
\r[31]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(25),
      I1 => x(25),
      O => \inst/add25/s0__0\
    );
\r[31]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => x(20),
      I1 => y(20),
      O => \inst/add20/c_out00_out\
    );
\r[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_17\,
      I1 => x(18),
      I2 => y(18),
      I3 => x(19),
      I4 => y(19),
      I5 => \inst/add20/s0__0\,
      O => \inst/add20/c_out0__0\
    );
\r[31]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(20),
      I1 => x(20),
      O => \inst/add20/s0__0\
    );
\r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(3),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(3)
    );
\r[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_2\,
      I1 => x(3),
      I2 => y(3),
      O => \inst/s\(3)
    );
\r[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(4),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(4)
    );
\r[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_2\,
      I1 => x(3),
      I2 => y(3),
      I3 => x(4),
      I4 => y(4),
      O => \inst/s\(4)
    );
\r[4]_INST_0_i_2\: unisim.vcomponents.LUT6
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
\r[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(5),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(5)
    );
\r[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_4\,
      I1 => x(5),
      I2 => y(5),
      O => \inst/s\(5)
    );
\r[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(6),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(6)
    );
\r[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_4\,
      I1 => x(5),
      I2 => y(5),
      I3 => x(6),
      I4 => y(6),
      O => \inst/s\(6)
    );
\r[6]_INST_0_i_2\: unisim.vcomponents.LUT5
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
\r[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(7),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(7)
    );
\r[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_6\,
      I1 => x(7),
      I2 => y(7),
      O => \inst/s\(7)
    );
\r[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(8),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(8)
    );
\r[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \inst/c_out_6\,
      I1 => x(7),
      I2 => y(7),
      I3 => x(8),
      I4 => y(8),
      O => \inst/s\(8)
    );
\r[8]_INST_0_i_2\: unisim.vcomponents.LUT5
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
\r[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2A222BBBABAAA"
    )
        port map (
      I0 => \inst/s\(9),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(9)
    );
\r[9]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \inst/c_out_8\,
      I1 => x(9),
      I2 => y(9),
      O => \inst/s\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_adder_subtracter32_ip__2\ is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_adder_subtracter32_ip__2\ : entity is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_adder_subtracter32_ip__2\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_adder_subtracter32_ip__2\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_adder_subtracter32_ip__2\ : entity is "adder_subtracter32_ip";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_adder_subtracter32_ip__2\ : entity is "adder_subtracter32,Vivado 2021.1";
end \butterfly_full_0_adder_subtracter32_ip__2\;

architecture STRUCTURE of \butterfly_full_0_adder_subtracter32_ip__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/add10/c_out0__0\ : STD_LOGIC;
  signal \inst/add11/c_out0__0\ : STD_LOGIC;
  signal \inst/add12/c_out0__0\ : STD_LOGIC;
  signal \inst/add13/c_out0__0\ : STD_LOGIC;
  signal \inst/add14/c_out0__0\ : STD_LOGIC;
  signal \inst/add15/c_out0__0\ : STD_LOGIC;
  signal \inst/add16/c_out0__0\ : STD_LOGIC;
  signal \inst/add17/c_out0__0\ : STD_LOGIC;
  signal \inst/add18/c_out0__0\ : STD_LOGIC;
  signal \inst/add19/c_out0__0\ : STD_LOGIC;
  signal \inst/add2/c_out0__0\ : STD_LOGIC;
  signal \inst/add20/c_out0__0\ : STD_LOGIC;
  signal \inst/add21/c_out0__0\ : STD_LOGIC;
  signal \inst/add22/c_out0__0\ : STD_LOGIC;
  signal \inst/add23/c_out0__0\ : STD_LOGIC;
  signal \inst/add24/c_out0__0\ : STD_LOGIC;
  signal \inst/add25/c_out0__0\ : STD_LOGIC;
  signal \inst/add26/c_out0__0\ : STD_LOGIC;
  signal \inst/add27/c_out0__0\ : STD_LOGIC;
  signal \inst/add28/c_out0__0\ : STD_LOGIC;
  signal \inst/add3/c_out0__0\ : STD_LOGIC;
  signal \inst/add4/c_out0__0\ : STD_LOGIC;
  signal \inst/add5/c_out0__0\ : STD_LOGIC;
  signal \inst/add6/c_out0__0\ : STD_LOGIC;
  signal \inst/add7/c_out0__0\ : STD_LOGIC;
  signal \inst/add8/c_out0__0\ : STD_LOGIC;
  signal \inst/add9/c_out0__0\ : STD_LOGIC;
  signal \inst/c_out_1\ : STD_LOGIC;
  signal \inst/s\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[10]_INST_0_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r[12]_INST_0_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r[13]_INST_0_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r[15]_INST_0_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r[17]_INST_0_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r[18]_INST_0_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r[1]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r[1]_INST_0_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r[20]_INST_0_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r[22]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r[23]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r[25]_INST_0_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r[27]_INST_0_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r[28]_INST_0_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r[29]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r[30]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r[31]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r[3]_INST_0_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r[5]_INST_0_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r[6]_INST_0_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r[7]_INST_0_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r[8]_INST_0_i_1\ : label is "soft_lutpair26";
begin
  v <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\r[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(0),
      I5 => y(0),
      O => r(0)
    );
\r[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(10),
      I5 => \inst/add9/c_out0__0\,
      O => r(10)
    );
\r[10]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inst/add8/c_out0__0\,
      I1 => x(9),
      O => \inst/add9/c_out0__0\
    );
\r[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(11),
      I5 => \inst/add10/c_out0__0\,
      O => r(11)
    );
\r[11]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => x(9),
      I1 => \inst/add8/c_out0__0\,
      I2 => x(10),
      O => \inst/add10/c_out0__0\
    );
\r[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(12),
      I5 => \inst/add11/c_out0__0\,
      O => r(12)
    );
\r[12]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => x(10),
      I1 => \inst/add8/c_out0__0\,
      I2 => x(9),
      I3 => x(11),
      O => \inst/add11/c_out0__0\
    );
\r[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(13),
      I5 => \inst/add12/c_out0__0\,
      O => r(13)
    );
\r[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => x(11),
      I1 => x(9),
      I2 => \inst/add8/c_out0__0\,
      I3 => x(10),
      I4 => x(12),
      O => \inst/add12/c_out0__0\
    );
\r[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(14),
      I5 => \inst/add13/c_out0__0\,
      O => r(14)
    );
\r[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => x(12),
      I1 => x(10),
      I2 => \inst/add8/c_out0__0\,
      I3 => x(9),
      I4 => x(11),
      I5 => x(13),
      O => \inst/add13/c_out0__0\
    );
\r[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(15),
      I5 => \inst/add14/c_out0__0\,
      O => r(15)
    );
\r[15]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inst/add13/c_out0__0\,
      I1 => x(14),
      O => \inst/add14/c_out0__0\
    );
\r[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(16),
      I5 => \inst/add15/c_out0__0\,
      O => r(16)
    );
\r[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => x(14),
      I1 => \inst/add13/c_out0__0\,
      I2 => x(15),
      O => \inst/add15/c_out0__0\
    );
\r[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(17),
      I5 => \inst/add16/c_out0__0\,
      O => r(17)
    );
\r[17]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => x(15),
      I1 => \inst/add13/c_out0__0\,
      I2 => x(14),
      I3 => x(16),
      O => \inst/add16/c_out0__0\
    );
\r[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(18),
      I5 => \inst/add17/c_out0__0\,
      O => r(18)
    );
\r[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => x(16),
      I1 => x(14),
      I2 => \inst/add13/c_out0__0\,
      I3 => x(15),
      I4 => x(17),
      O => \inst/add17/c_out0__0\
    );
\r[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(19),
      I5 => \inst/add18/c_out0__0\,
      O => r(19)
    );
\r[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => x(17),
      I1 => x(15),
      I2 => \inst/add13/c_out0__0\,
      I3 => x(14),
      I4 => x(16),
      I5 => x(18),
      O => \inst/add18/c_out0__0\
    );
\r[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => \inst/s\(1),
      O => r(1)
    );
\r[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      O => \inst/s\(1)
    );
\r[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(20),
      I5 => \inst/add19/c_out0__0\,
      O => r(20)
    );
\r[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inst/add18/c_out0__0\,
      I1 => x(19),
      O => \inst/add19/c_out0__0\
    );
\r[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(21),
      I5 => \inst/add20/c_out0__0\,
      O => r(21)
    );
\r[21]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => x(19),
      I1 => \inst/add18/c_out0__0\,
      I2 => x(20),
      O => \inst/add20/c_out0__0\
    );
\r[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(22),
      I5 => \inst/add21/c_out0__0\,
      O => r(22)
    );
\r[22]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => x(20),
      I1 => \inst/add18/c_out0__0\,
      I2 => x(19),
      I3 => x(21),
      O => \inst/add21/c_out0__0\
    );
\r[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(23),
      I5 => \inst/add22/c_out0__0\,
      O => r(23)
    );
\r[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => x(21),
      I1 => x(19),
      I2 => \inst/add18/c_out0__0\,
      I3 => x(20),
      I4 => x(22),
      O => \inst/add22/c_out0__0\
    );
\r[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(24),
      I5 => \inst/add23/c_out0__0\,
      O => r(24)
    );
\r[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => x(22),
      I1 => x(20),
      I2 => \inst/add18/c_out0__0\,
      I3 => x(19),
      I4 => x(21),
      I5 => x(23),
      O => \inst/add23/c_out0__0\
    );
\r[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(25),
      I5 => \inst/add24/c_out0__0\,
      O => r(25)
    );
\r[25]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inst/add23/c_out0__0\,
      I1 => x(24),
      O => \inst/add24/c_out0__0\
    );
\r[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(26),
      I5 => \inst/add25/c_out0__0\,
      O => r(26)
    );
\r[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => x(24),
      I1 => \inst/add23/c_out0__0\,
      I2 => x(25),
      O => \inst/add25/c_out0__0\
    );
\r[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF0000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => x(28),
      I3 => x(30),
      I4 => x(27),
      I5 => \inst/add26/c_out0__0\,
      O => r(27)
    );
\r[27]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => x(25),
      I1 => \inst/add23/c_out0__0\,
      I2 => x(24),
      I3 => x(26),
      O => \inst/add26/c_out0__0\
    );
\r[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FFFF00"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => x(30),
      I3 => x(28),
      I4 => \inst/add27/c_out0__0\,
      O => r(28)
    );
\r[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => x(26),
      I1 => x(24),
      I2 => \inst/add23/c_out0__0\,
      I3 => x(25),
      I4 => x(27),
      O => \inst/add27/c_out0__0\
    );
\r[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF0"
    )
        port map (
      I0 => x(31),
      I1 => x(30),
      I2 => x(29),
      I3 => \inst/add28/c_out0__0\,
      O => r(29)
    );
\r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(2),
      I5 => \inst/c_out_1\,
      O => r(2)
    );
\r[2]_INST_0_i_1\: unisim.vcomponents.LUT4
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
\r[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7CCC"
    )
        port map (
      I0 => x(31),
      I1 => x(30),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(29),
      O => r(30)
    );
\r[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      O => r(31)
    );
\r[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => x(27),
      I1 => x(25),
      I2 => \inst/add23/c_out0__0\,
      I3 => x(24),
      I4 => x(26),
      I5 => x(28),
      O => \inst/add28/c_out0__0\
    );
\r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(3),
      I5 => \inst/add2/c_out0__0\,
      O => r(3)
    );
\r[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8800000"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      I4 => x(2),
      O => \inst/add2/c_out0__0\
    );
\r[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(4),
      I5 => \inst/add3/c_out0__0\,
      O => r(4)
    );
\r[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A880808000000000"
    )
        port map (
      I0 => x(2),
      I1 => y(1),
      I2 => x(1),
      I3 => x(0),
      I4 => y(0),
      I5 => x(3),
      O => \inst/add3/c_out0__0\
    );
\r[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(5),
      I5 => \inst/add4/c_out0__0\,
      O => r(5)
    );
\r[5]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inst/add3/c_out0__0\,
      I1 => x(4),
      O => \inst/add4/c_out0__0\
    );
\r[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(6),
      I5 => \inst/add5/c_out0__0\,
      O => r(6)
    );
\r[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => x(4),
      I1 => \inst/add3/c_out0__0\,
      I2 => x(5),
      O => \inst/add5/c_out0__0\
    );
\r[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(7),
      I5 => \inst/add6/c_out0__0\,
      O => r(7)
    );
\r[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => x(5),
      I1 => \inst/add3/c_out0__0\,
      I2 => x(4),
      I3 => x(6),
      O => \inst/add6/c_out0__0\
    );
\r[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(8),
      I5 => \inst/add7/c_out0__0\,
      O => r(8)
    );
\r[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => x(6),
      I1 => x(4),
      I2 => \inst/add3/c_out0__0\,
      I3 => x(5),
      I4 => x(7),
      O => \inst/add7/c_out0__0\
    );
\r[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFFFFFF4000"
    )
        port map (
      I0 => x(31),
      I1 => x(29),
      I2 => \inst/add28/c_out0__0\,
      I3 => x(30),
      I4 => x(9),
      I5 => \inst/add8/c_out0__0\,
      O => r(9)
    );
\r[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => x(7),
      I1 => x(5),
      I2 => \inst/add3/c_out0__0\,
      I3 => x(4),
      I4 => x(6),
      I5 => x(8),
      O => \inst/add8/c_out0__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_adder_subtracter32_ip__3\ is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_adder_subtracter32_ip__3\ : entity is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_adder_subtracter32_ip__3\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_adder_subtracter32_ip__3\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_adder_subtracter32_ip__3\ : entity is "adder_subtracter32_ip";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_adder_subtracter32_ip__3\ : entity is "adder_subtracter32,Vivado 2021.1";
end \butterfly_full_0_adder_subtracter32_ip__3\;

architecture STRUCTURE of \butterfly_full_0_adder_subtracter32_ip__3\ is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/add10/c_out0__0\ : STD_LOGIC;
  signal \inst/add15/c_out0__0\ : STD_LOGIC;
  signal \inst/add20/c_out0__0\ : STD_LOGIC;
  signal \inst/add25/c_out0__0\ : STD_LOGIC;
  signal \inst/add5/c_out0__0\ : STD_LOGIC;
  signal \inst/c_out_10\ : STD_LOGIC;
  signal \inst/c_out_11\ : STD_LOGIC;
  signal \inst/c_out_12\ : STD_LOGIC;
  signal \inst/c_out_13\ : STD_LOGIC;
  signal \inst/c_out_14\ : STD_LOGIC;
  signal \inst/c_out_15\ : STD_LOGIC;
  signal \inst/c_out_16\ : STD_LOGIC;
  signal \inst/c_out_17\ : STD_LOGIC;
  signal \inst/c_out_18\ : STD_LOGIC;
  signal \inst/c_out_19\ : STD_LOGIC;
  signal \inst/c_out_2\ : STD_LOGIC;
  signal \inst/c_out_20\ : STD_LOGIC;
  signal \inst/c_out_21\ : STD_LOGIC;
  signal \inst/c_out_22\ : STD_LOGIC;
  signal \inst/c_out_23\ : STD_LOGIC;
  signal \inst/c_out_24\ : STD_LOGIC;
  signal \inst/c_out_25\ : STD_LOGIC;
  signal \inst/c_out_26\ : STD_LOGIC;
  signal \inst/c_out_27\ : STD_LOGIC;
  signal \inst/c_out_29\ : STD_LOGIC;
  signal \inst/c_out_4\ : STD_LOGIC;
  signal \inst/c_out_6\ : STD_LOGIC;
  signal \inst/c_out_7\ : STD_LOGIC;
  signal \inst/c_out_8\ : STD_LOGIC;
  signal \inst/c_out_9\ : STD_LOGIC;
  signal \inst/s\ : STD_LOGIC_VECTOR ( 29 downto 1 );
  signal \r[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \r[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \r[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \r[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[0]_INST_0_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \r[10]_INST_0_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r[10]_INST_0_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r[12]_INST_0_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r[12]_INST_0_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r[13]_INST_0_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r[13]_INST_0_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \r[13]_INST_0_i_5\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \r[15]_INST_0_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r[15]_INST_0_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r[17]_INST_0_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r[17]_INST_0_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r[18]_INST_0_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r[18]_INST_0_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \r[18]_INST_0_i_5\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \r[1]_INST_0_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \r[20]_INST_0_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r[20]_INST_0_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r[22]_INST_0_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r[22]_INST_0_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r[23]_INST_0_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r[23]_INST_0_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \r[23]_INST_0_i_5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \r[25]_INST_0_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \r[25]_INST_0_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \r[27]_INST_0_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \r[27]_INST_0_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \r[29]_INST_0_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \r[30]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \r[31]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \r[31]_INST_0_i_7\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \r[4]_INST_0_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r[5]_INST_0_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \r[6]_INST_0_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r[6]_INST_0_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r[8]_INST_0_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r[8]_INST_0_i_2\ : label is "soft_lutpair35";
begin
  v <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\r[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555151511"
    )
        port map (
      I0 => \r[0]_INST_0_i_1_n_0\,
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(0)
    );
\r[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      O => \r[0]_INST_0_i_1_n_0\
    );
\r[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(10),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(10)
    );
\r[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_8\,
      I1 => x(9),
      I2 => y(9),
      I3 => x(10),
      I4 => y(10),
      O => \inst/s\(10)
    );
\r[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(8),
      I1 => x(8),
      I2 => y(7),
      I3 => x(7),
      I4 => \inst/c_out_6\,
      O => \inst/c_out_8\
    );
\r[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(11),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(11)
    );
\r[11]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_10\,
      I1 => x(11),
      I2 => y(11),
      O => \inst/s\(11)
    );
\r[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(12),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(12)
    );
\r[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_10\,
      I1 => x(11),
      I2 => y(11),
      I3 => x(12),
      I4 => y(12),
      O => \inst/s\(12)
    );
\r[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(10),
      I1 => x(10),
      I2 => y(9),
      I3 => x(9),
      I4 => \inst/c_out_8\,
      O => \inst/c_out_10\
    );
\r[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(13),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(13)
    );
\r[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_11\,
      I1 => x(12),
      I2 => y(12),
      I3 => x(13),
      I4 => y(13),
      O => \inst/s\(13)
    );
\r[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(11),
      I1 => x(11),
      I2 => y(10),
      I3 => x(10),
      I4 => \inst/c_out_9\,
      O => \inst/c_out_11\
    );
\r[13]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(9),
      I1 => x(9),
      I2 => y(8),
      I3 => x(8),
      I4 => \inst/c_out_7\,
      O => \inst/c_out_9\
    );
\r[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D44DD4DDD4D4D44"
    )
        port map (
      I0 => y(7),
      I1 => x(7),
      I2 => y(6),
      I3 => x(6),
      I4 => \r[13]_INST_0_i_5_n_0\,
      I5 => \inst/add5/c_out0__0\,
      O => \inst/c_out_7\
    );
\r[13]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(5),
      I1 => y(5),
      O => \r[13]_INST_0_i_5_n_0\
    );
\r[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E00FF8E00000000"
    )
        port map (
      I0 => \inst/c_out_2\,
      I1 => x(3),
      I2 => y(3),
      I3 => x(4),
      I4 => y(4),
      I5 => \r[13]_INST_0_i_7_n_0\,
      O => \inst/add5/c_out0__0\
    );
\r[13]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(5),
      I1 => x(5),
      O => \r[13]_INST_0_i_7_n_0\
    );
\r[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(14),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(14)
    );
\r[14]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_13\,
      I1 => x(14),
      I2 => y(14),
      O => \inst/s\(14)
    );
\r[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(15),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(15)
    );
\r[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_13\,
      I1 => x(14),
      I2 => y(14),
      I3 => x(15),
      I4 => y(15),
      O => \inst/s\(15)
    );
\r[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(13),
      I1 => x(13),
      I2 => y(12),
      I3 => x(12),
      I4 => \inst/c_out_11\,
      O => \inst/c_out_13\
    );
\r[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(16),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(16)
    );
\r[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_15\,
      I1 => x(16),
      I2 => y(16),
      O => \inst/s\(16)
    );
\r[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(17),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(17)
    );
\r[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_15\,
      I1 => x(16),
      I2 => y(16),
      I3 => x(17),
      I4 => y(17),
      O => \inst/s\(17)
    );
\r[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(15),
      I1 => x(15),
      I2 => y(14),
      I3 => x(14),
      I4 => \inst/c_out_13\,
      O => \inst/c_out_15\
    );
\r[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(18),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(18)
    );
\r[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_16\,
      I1 => x(17),
      I2 => y(17),
      I3 => x(18),
      I4 => y(18),
      O => \inst/s\(18)
    );
\r[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(16),
      I1 => x(16),
      I2 => y(15),
      I3 => x(15),
      I4 => \inst/c_out_14\,
      O => \inst/c_out_16\
    );
\r[18]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(14),
      I1 => x(14),
      I2 => y(13),
      I3 => x(13),
      I4 => \inst/c_out_12\,
      O => \inst/c_out_14\
    );
\r[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D44DD4DDD4D4D44"
    )
        port map (
      I0 => y(12),
      I1 => x(12),
      I2 => y(11),
      I3 => x(11),
      I4 => \r[18]_INST_0_i_5_n_0\,
      I5 => \inst/add10/c_out0__0\,
      O => \inst/c_out_12\
    );
\r[18]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(10),
      I1 => y(10),
      O => \r[18]_INST_0_i_5_n_0\
    );
\r[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E00FF8E00000000"
    )
        port map (
      I0 => \inst/c_out_7\,
      I1 => x(8),
      I2 => y(8),
      I3 => x(9),
      I4 => y(9),
      I5 => \r[18]_INST_0_i_7_n_0\,
      O => \inst/add10/c_out0__0\
    );
\r[18]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(10),
      I1 => x(10),
      O => \r[18]_INST_0_i_7_n_0\
    );
\r[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(19),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(19)
    );
\r[19]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_18\,
      I1 => x(19),
      I2 => y(19),
      O => \inst/s\(19)
    );
\r[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(1),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(1)
    );
\r[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      O => \inst/s\(1)
    );
\r[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(20),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(20)
    );
\r[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_18\,
      I1 => x(19),
      I2 => y(19),
      I3 => x(20),
      I4 => y(20),
      O => \inst/s\(20)
    );
\r[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(18),
      I1 => x(18),
      I2 => y(17),
      I3 => x(17),
      I4 => \inst/c_out_16\,
      O => \inst/c_out_18\
    );
\r[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(21),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(21)
    );
\r[21]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_20\,
      I1 => x(21),
      I2 => y(21),
      O => \inst/s\(21)
    );
\r[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(22),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(22)
    );
\r[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_20\,
      I1 => x(21),
      I2 => y(21),
      I3 => x(22),
      I4 => y(22),
      O => \inst/s\(22)
    );
\r[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(20),
      I1 => x(20),
      I2 => y(19),
      I3 => x(19),
      I4 => \inst/c_out_18\,
      O => \inst/c_out_20\
    );
\r[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(23),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(23)
    );
\r[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_21\,
      I1 => x(22),
      I2 => y(22),
      I3 => x(23),
      I4 => y(23),
      O => \inst/s\(23)
    );
\r[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(21),
      I1 => x(21),
      I2 => y(20),
      I3 => x(20),
      I4 => \inst/c_out_19\,
      O => \inst/c_out_21\
    );
\r[23]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(19),
      I1 => x(19),
      I2 => y(18),
      I3 => x(18),
      I4 => \inst/c_out_17\,
      O => \inst/c_out_19\
    );
\r[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D44DD4DDD4D4D44"
    )
        port map (
      I0 => y(17),
      I1 => x(17),
      I2 => y(16),
      I3 => x(16),
      I4 => \r[23]_INST_0_i_5_n_0\,
      I5 => \inst/add15/c_out0__0\,
      O => \inst/c_out_17\
    );
\r[23]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(15),
      I1 => y(15),
      O => \r[23]_INST_0_i_5_n_0\
    );
\r[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E00FF8E00000000"
    )
        port map (
      I0 => \inst/c_out_12\,
      I1 => x(13),
      I2 => y(13),
      I3 => x(14),
      I4 => y(14),
      I5 => \r[23]_INST_0_i_7_n_0\,
      O => \inst/add15/c_out0__0\
    );
\r[23]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(15),
      I1 => x(15),
      O => \r[23]_INST_0_i_7_n_0\
    );
\r[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(24),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(24)
    );
\r[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_23\,
      I1 => x(24),
      I2 => y(24),
      O => \inst/s\(24)
    );
\r[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(25),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(25)
    );
\r[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_23\,
      I1 => x(24),
      I2 => y(24),
      I3 => x(25),
      I4 => y(25),
      O => \inst/s\(25)
    );
\r[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(23),
      I1 => x(23),
      I2 => y(22),
      I3 => x(22),
      I4 => \inst/c_out_21\,
      O => \inst/c_out_23\
    );
\r[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(26),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(26)
    );
\r[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_25\,
      I1 => x(26),
      I2 => y(26),
      O => \inst/s\(26)
    );
\r[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(27),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(27)
    );
\r[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_25\,
      I1 => x(26),
      I2 => y(26),
      I3 => x(27),
      I4 => y(27),
      O => \inst/s\(27)
    );
\r[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(25),
      I1 => x(25),
      I2 => y(24),
      I3 => x(24),
      I4 => \inst/c_out_23\,
      O => \inst/c_out_25\
    );
\r[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(28),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(28)
    );
\r[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_26\,
      I1 => x(27),
      I2 => y(27),
      I3 => x(28),
      I4 => y(28),
      O => \inst/s\(28)
    );
\r[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(29),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(29)
    );
\r[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71FF00718E00FF8E"
    )
        port map (
      I0 => \inst/c_out_26\,
      I1 => x(27),
      I2 => y(27),
      I3 => x(28),
      I4 => y(28),
      I5 => \r[29]_INST_0_i_3_n_0\,
      O => \inst/s\(29)
    );
\r[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(26),
      I1 => x(26),
      I2 => y(25),
      I3 => x(25),
      I4 => \inst/c_out_24\,
      O => \inst/c_out_26\
    );
\r[29]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(29),
      I1 => x(29),
      O => \r[29]_INST_0_i_3_n_0\
    );
\r[29]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(24),
      I1 => x(24),
      I2 => y(23),
      I3 => x(23),
      I4 => \inst/c_out_22\,
      O => \inst/c_out_24\
    );
\r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(2),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(2)
    );
\r[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02D0FDD0FD2F02"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      I4 => x(2),
      I5 => y(2),
      O => \inst/s\(2)
    );
\r[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CC33441"
    )
        port map (
      I0 => x(31),
      I1 => y(30),
      I2 => x(30),
      I3 => \inst/c_out_29\,
      I4 => y(31),
      O => r(30)
    );
\r[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66D6D6DD"
    )
        port map (
      I0 => y(31),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      O => r(31)
    );
\r[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(29),
      I1 => x(29),
      I2 => y(28),
      I3 => x(28),
      I4 => \inst/c_out_27\,
      O => \inst/c_out_29\
    );
\r[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D44DD4DDD4D4D44"
    )
        port map (
      I0 => y(27),
      I1 => x(27),
      I2 => y(26),
      I3 => x(26),
      I4 => \r[31]_INST_0_i_3_n_0\,
      I5 => \inst/add25/c_out0__0\,
      O => \inst/c_out_27\
    );
\r[31]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(25),
      I1 => y(25),
      O => \r[31]_INST_0_i_3_n_0\
    );
\r[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E00FF8E00000000"
    )
        port map (
      I0 => \inst/c_out_22\,
      I1 => x(23),
      I2 => y(23),
      I3 => x(24),
      I4 => y(24),
      I5 => \r[31]_INST_0_i_6_n_0\,
      O => \inst/add25/c_out0__0\
    );
\r[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D44DD4DDD4D4D44"
    )
        port map (
      I0 => y(22),
      I1 => x(22),
      I2 => y(21),
      I3 => x(21),
      I4 => \r[31]_INST_0_i_7_n_0\,
      I5 => \inst/add20/c_out0__0\,
      O => \inst/c_out_22\
    );
\r[31]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(25),
      I1 => x(25),
      O => \r[31]_INST_0_i_6_n_0\
    );
\r[31]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(20),
      I1 => y(20),
      O => \r[31]_INST_0_i_7_n_0\
    );
\r[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E00FF8E00000000"
    )
        port map (
      I0 => \inst/c_out_17\,
      I1 => x(18),
      I2 => y(18),
      I3 => x(19),
      I4 => y(19),
      I5 => \r[31]_INST_0_i_9_n_0\,
      O => \inst/add20/c_out0__0\
    );
\r[31]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(20),
      I1 => x(20),
      O => \r[31]_INST_0_i_9_n_0\
    );
\r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(3),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(3)
    );
\r[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_2\,
      I1 => x(3),
      I2 => y(3),
      O => \inst/s\(3)
    );
\r[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(4),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(4)
    );
\r[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_2\,
      I1 => x(3),
      I2 => y(3),
      I3 => x(4),
      I4 => y(4),
      O => \inst/s\(4)
    );
\r[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD4D4D44DD4DDD4D"
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
\r[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(5),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(5)
    );
\r[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_4\,
      I1 => x(5),
      I2 => y(5),
      O => \inst/s\(5)
    );
\r[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(6),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(6)
    );
\r[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_4\,
      I1 => x(5),
      I2 => y(5),
      I3 => x(6),
      I4 => y(6),
      O => \inst/s\(6)
    );
\r[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(4),
      I1 => x(4),
      I2 => y(3),
      I3 => x(3),
      I4 => \inst/c_out_2\,
      O => \inst/c_out_4\
    );
\r[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(7),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(7)
    );
\r[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_6\,
      I1 => x(7),
      I2 => y(7),
      O => \inst/s\(7)
    );
\r[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(8),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(8)
    );
\r[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \inst/c_out_6\,
      I1 => x(7),
      I2 => y(7),
      I3 => x(8),
      I4 => y(8),
      O => \inst/s\(8)
    );
\r[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => y(6),
      I1 => x(6),
      I2 => y(5),
      I3 => x(5),
      I4 => \inst/c_out_4\,
      O => \inst/c_out_6\
    );
\r[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2A2A22"
    )
        port map (
      I0 => \inst/s\(9),
      I1 => x(31),
      I2 => y(30),
      I3 => x(30),
      I4 => \inst/c_out_29\,
      I5 => y(31),
      O => r(9)
    );
\r[9]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \inst/c_out_8\,
      I1 => x(9),
      I2 => y(9),
      O => \inst/s\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_adder_subtracter32_ip__4\ is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_adder_subtracter32_ip__4\ : entity is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_adder_subtracter32_ip__4\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_adder_subtracter32_ip__4\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_adder_subtracter32_ip__4\ : entity is "adder_subtracter32_ip";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_adder_subtracter32_ip__4\ : entity is "adder_subtracter32,Vivado 2021.1";
end \butterfly_full_0_adder_subtracter32_ip__4\;

architecture STRUCTURE of \butterfly_full_0_adder_subtracter32_ip__4\ is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/c_out_1\ : STD_LOGIC;
  signal \inst/c_out_10\ : STD_LOGIC;
  signal \inst/c_out_11\ : STD_LOGIC;
  signal \inst/c_out_12\ : STD_LOGIC;
  signal \inst/c_out_13\ : STD_LOGIC;
  signal \inst/c_out_14\ : STD_LOGIC;
  signal \inst/c_out_15\ : STD_LOGIC;
  signal \inst/c_out_16\ : STD_LOGIC;
  signal \inst/c_out_17\ : STD_LOGIC;
  signal \inst/c_out_18\ : STD_LOGIC;
  signal \inst/c_out_19\ : STD_LOGIC;
  signal \inst/c_out_2\ : STD_LOGIC;
  signal \inst/c_out_20\ : STD_LOGIC;
  signal \inst/c_out_21\ : STD_LOGIC;
  signal \inst/c_out_22\ : STD_LOGIC;
  signal \inst/c_out_23\ : STD_LOGIC;
  signal \inst/c_out_24\ : STD_LOGIC;
  signal \inst/c_out_25\ : STD_LOGIC;
  signal \inst/c_out_26\ : STD_LOGIC;
  signal \inst/c_out_27\ : STD_LOGIC;
  signal \inst/c_out_28\ : STD_LOGIC;
  signal \inst/c_out_3\ : STD_LOGIC;
  signal \inst/c_out_4\ : STD_LOGIC;
  signal \inst/c_out_5\ : STD_LOGIC;
  signal \inst/c_out_6\ : STD_LOGIC;
  signal \inst/c_out_7\ : STD_LOGIC;
  signal \inst/c_out_8\ : STD_LOGIC;
  signal \inst/c_out_9\ : STD_LOGIC;
  signal \inst/s\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[10]_INST_0_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \r[11]_INST_0_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \r[12]_INST_0_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \r[13]_INST_0_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \r[15]_INST_0_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \r[16]_INST_0_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \r[17]_INST_0_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \r[18]_INST_0_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \r[1]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \r[1]_INST_0_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \r[20]_INST_0_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \r[21]_INST_0_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \r[22]_INST_0_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \r[23]_INST_0_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \r[25]_INST_0_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \r[26]_INST_0_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \r[27]_INST_0_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \r[28]_INST_0_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \r[29]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \r[30]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \r[31]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \r[3]_INST_0_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \r[5]_INST_0_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \r[6]_INST_0_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \r[7]_INST_0_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \r[8]_INST_0_i_1\ : label is "soft_lutpair60";
begin
  v <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\r[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666066666666"
    )
        port map (
      I0 => x(0),
      I1 => y(0),
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(0)
    );
\r[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(10),
      I1 => \inst/c_out_9\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(10)
    );
\r[10]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x(9),
      I1 => \inst/c_out_8\,
      O => \inst/c_out_9\
    );
\r[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(11),
      I1 => \inst/c_out_10\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(11)
    );
\r[11]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => x(10),
      I1 => x(9),
      I2 => \inst/c_out_8\,
      O => \inst/c_out_10\
    );
\r[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(12),
      I1 => \inst/c_out_11\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(12)
    );
\r[12]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => x(11),
      I1 => x(10),
      I2 => x(9),
      I3 => \inst/c_out_8\,
      O => \inst/c_out_11\
    );
\r[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(13),
      I1 => \inst/c_out_12\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(13)
    );
\r[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => x(12),
      I1 => x(11),
      I2 => x(10),
      I3 => x(9),
      I4 => \inst/c_out_8\,
      O => \inst/c_out_12\
    );
\r[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(14),
      I1 => \inst/c_out_13\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(14)
    );
\r[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => x(13),
      I1 => x(12),
      I2 => x(11),
      I3 => x(10),
      I4 => x(9),
      I5 => \inst/c_out_8\,
      O => \inst/c_out_13\
    );
\r[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(15),
      I1 => \inst/c_out_14\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(15)
    );
\r[15]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x(14),
      I1 => \inst/c_out_13\,
      O => \inst/c_out_14\
    );
\r[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(16),
      I1 => \inst/c_out_15\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(16)
    );
\r[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => x(15),
      I1 => x(14),
      I2 => \inst/c_out_13\,
      O => \inst/c_out_15\
    );
\r[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(17),
      I1 => \inst/c_out_16\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(17)
    );
\r[17]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => x(16),
      I1 => x(15),
      I2 => x(14),
      I3 => \inst/c_out_13\,
      O => \inst/c_out_16\
    );
\r[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(18),
      I1 => \inst/c_out_17\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(18)
    );
\r[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => x(17),
      I1 => x(16),
      I2 => x(15),
      I3 => x(14),
      I4 => \inst/c_out_13\,
      O => \inst/c_out_17\
    );
\r[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(19),
      I1 => \inst/c_out_18\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(19)
    );
\r[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => x(18),
      I1 => x(17),
      I2 => x(16),
      I3 => x(15),
      I4 => x(14),
      I5 => \inst/c_out_13\,
      O => \inst/c_out_18\
    );
\r[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \inst/s\(1),
      I1 => \inst/c_out_28\,
      I2 => x(29),
      I3 => x(30),
      I4 => x(31),
      O => r(1)
    );
\r[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => y(0),
      I1 => x(0),
      I2 => x(1),
      I3 => y(1),
      O => \inst/s\(1)
    );
\r[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(20),
      I1 => \inst/c_out_19\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(20)
    );
\r[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x(19),
      I1 => \inst/c_out_18\,
      O => \inst/c_out_19\
    );
\r[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(21),
      I1 => \inst/c_out_20\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(21)
    );
\r[21]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => x(20),
      I1 => x(19),
      I2 => \inst/c_out_18\,
      O => \inst/c_out_20\
    );
\r[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(22),
      I1 => \inst/c_out_21\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(22)
    );
\r[22]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => x(21),
      I1 => x(20),
      I2 => x(19),
      I3 => \inst/c_out_18\,
      O => \inst/c_out_21\
    );
\r[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(23),
      I1 => \inst/c_out_22\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(23)
    );
\r[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => x(22),
      I1 => x(21),
      I2 => x(20),
      I3 => x(19),
      I4 => \inst/c_out_18\,
      O => \inst/c_out_22\
    );
\r[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(24),
      I1 => \inst/c_out_23\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(24)
    );
\r[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => x(23),
      I1 => x(22),
      I2 => x(21),
      I3 => x(20),
      I4 => x(19),
      I5 => \inst/c_out_18\,
      O => \inst/c_out_23\
    );
\r[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(25),
      I1 => \inst/c_out_24\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(25)
    );
\r[25]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x(24),
      I1 => \inst/c_out_23\,
      O => \inst/c_out_24\
    );
\r[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(26),
      I1 => \inst/c_out_25\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(26)
    );
\r[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => x(25),
      I1 => x(24),
      I2 => \inst/c_out_23\,
      O => \inst/c_out_25\
    );
\r[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999899999999"
    )
        port map (
      I0 => \inst/c_out_26\,
      I1 => x(27),
      I2 => x(28),
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(27)
    );
\r[27]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => x(26),
      I1 => x(25),
      I2 => x(24),
      I3 => \inst/c_out_23\,
      O => \inst/c_out_26\
    );
\r[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99989999"
    )
        port map (
      I0 => \inst/c_out_27\,
      I1 => x(28),
      I2 => x(29),
      I3 => x(30),
      I4 => x(31),
      O => r(28)
    );
\r[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => x(27),
      I1 => x(26),
      I2 => x(25),
      I3 => x(24),
      I4 => \inst/c_out_23\,
      O => \inst/c_out_27\
    );
\r[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9899"
    )
        port map (
      I0 => \inst/c_out_28\,
      I1 => x(29),
      I2 => x(30),
      I3 => x(31),
      O => r(29)
    );
\r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(2),
      I1 => \inst/c_out_1\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(2)
    );
\r[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D4DD"
    )
        port map (
      I0 => y(1),
      I1 => x(1),
      I2 => x(0),
      I3 => y(0),
      O => \inst/c_out_1\
    );
\r[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0E1"
    )
        port map (
      I0 => \inst/c_out_28\,
      I1 => x(29),
      I2 => x(30),
      I3 => x(31),
      O => r(30)
    );
\r[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => x(31),
      I1 => x(30),
      I2 => x(29),
      I3 => \inst/c_out_28\,
      O => r(31)
    );
\r[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => x(28),
      I1 => x(27),
      I2 => x(26),
      I3 => x(25),
      I4 => x(24),
      I5 => \inst/c_out_23\,
      O => \inst/c_out_28\
    );
\r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(3),
      I1 => \inst/c_out_2\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(3)
    );
\r[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBAFBFB"
    )
        port map (
      I0 => x(2),
      I1 => y(1),
      I2 => x(1),
      I3 => x(0),
      I4 => y(0),
      O => \inst/c_out_2\
    );
\r[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(4),
      I1 => \inst/c_out_3\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(4)
    );
\r[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFEEFFEFFFEF"
    )
        port map (
      I0 => x(3),
      I1 => x(2),
      I2 => y(1),
      I3 => x(1),
      I4 => x(0),
      I5 => y(0),
      O => \inst/c_out_3\
    );
\r[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(5),
      I1 => \inst/c_out_4\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(5)
    );
\r[5]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x(4),
      I1 => \inst/c_out_3\,
      O => \inst/c_out_4\
    );
\r[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(6),
      I1 => \inst/c_out_5\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(6)
    );
\r[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => x(5),
      I1 => x(4),
      I2 => \inst/c_out_3\,
      O => \inst/c_out_5\
    );
\r[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(7),
      I1 => \inst/c_out_6\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(7)
    );
\r[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => x(6),
      I1 => x(5),
      I2 => x(4),
      I3 => \inst/c_out_3\,
      O => \inst/c_out_6\
    );
\r[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(8),
      I1 => \inst/c_out_7\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(8)
    );
\r[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => x(7),
      I1 => x(6),
      I2 => x(5),
      I3 => x(4),
      I4 => \inst/c_out_3\,
      O => \inst/c_out_7\
    );
\r[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999099999999"
    )
        port map (
      I0 => x(9),
      I1 => \inst/c_out_8\,
      I2 => \inst/c_out_28\,
      I3 => x(29),
      I4 => x(30),
      I5 => x(31),
      O => r(9)
    );
\r[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => x(8),
      I1 => x(7),
      I2 => x(6),
      I3 => x(5),
      I4 => x(4),
      I5 => \inst/c_out_3\,
      O => \inst/c_out_8\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_adder_subtracter32_ip__5\ is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_adder_subtracter32_ip__5\ : entity is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_adder_subtracter32_ip__5\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_adder_subtracter32_ip__5\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_adder_subtracter32_ip__5\ : entity is "adder_subtracter32_ip";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_adder_subtracter32_ip__5\ : entity is "adder_subtracter32,Vivado 2021.1";
end \butterfly_full_0_adder_subtracter32_ip__5\;

architecture STRUCTURE of \butterfly_full_0_adder_subtracter32_ip__5\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  r(31) <= \^r\(1);
  r(30) <= \^r\(1);
  r(29) <= \^r\(1);
  r(28) <= \^r\(1);
  r(27) <= \^r\(1);
  r(26) <= \^r\(1);
  r(25) <= \^r\(1);
  r(24) <= \^r\(1);
  r(23) <= \^r\(1);
  r(22) <= \^r\(1);
  r(21) <= \^r\(1);
  r(20) <= \^r\(1);
  r(19) <= \^r\(1);
  r(18) <= \^r\(1);
  r(17) <= \^r\(1);
  r(16) <= \^r\(1);
  r(15) <= \^r\(1);
  r(14) <= \^r\(1);
  r(13) <= \^r\(1);
  r(12) <= \^r\(1);
  r(11) <= \^r\(1);
  r(10) <= \^r\(1);
  r(9) <= \^r\(1);
  r(8) <= \^r\(1);
  r(7) <= \^r\(1);
  r(6) <= \^r\(1);
  r(5) <= \^r\(1);
  r(4) <= \^r\(1);
  r(3) <= \^r\(1);
  r(2) <= \^r\(1);
  r(1 downto 0) <= \^r\(1 downto 0);
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
      I0 => x(0),
      I1 => y(0),
      O => \^r\(0)
    );
\r[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => x(0),
      I1 => y(0),
      O => \^r\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity butterfly_full_0_mux2_0 is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of butterfly_full_0_mux2_0 : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of butterfly_full_0_mux2_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of butterfly_full_0_mux2_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of butterfly_full_0_mux2_0 : entity is "mux2,Vivado 2021.1";
end butterfly_full_0_mux2_0;

architecture STRUCTURE of butterfly_full_0_mux2_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(0) <= d0(0);
  y(31) <= \<const0>\;
  y(30) <= \<const0>\;
  y(29) <= \<const0>\;
  y(28) <= \<const0>\;
  y(27) <= \<const0>\;
  y(26) <= \<const0>\;
  y(25) <= \<const0>\;
  y(24) <= \<const0>\;
  y(23) <= \<const0>\;
  y(22) <= \<const0>\;
  y(21) <= \<const0>\;
  y(20) <= \<const0>\;
  y(19) <= \<const0>\;
  y(18) <= \<const0>\;
  y(17) <= \<const0>\;
  y(16) <= \<const0>\;
  y(15) <= \<const0>\;
  y(14) <= \<const0>\;
  y(13) <= \<const0>\;
  y(12) <= \<const0>\;
  y(11) <= \<const0>\;
  y(10) <= \<const0>\;
  y(9) <= \<const0>\;
  y(8) <= \<const0>\;
  y(7) <= \<const0>\;
  y(6) <= \<const0>\;
  y(5) <= \<const0>\;
  y(4) <= \<const0>\;
  y(3) <= \<const0>\;
  y(2) <= \<const0>\;
  y(1) <= \<const0>\;
  y(0) <= \^d0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_mux2_0__1\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_mux2_0__1\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_mux2_0__1\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_mux2_0__1\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_mux2_0__1\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_mux2_0__1\ : entity is "mux2,Vivado 2021.1";
end \butterfly_full_0_mux2_0__1\;

architecture STRUCTURE of \butterfly_full_0_mux2_0__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(0) <= d0(0);
  y(31) <= \<const0>\;
  y(30) <= \<const0>\;
  y(29) <= \<const0>\;
  y(28) <= \<const0>\;
  y(27) <= \<const0>\;
  y(26) <= \<const0>\;
  y(25) <= \<const0>\;
  y(24) <= \<const0>\;
  y(23) <= \<const0>\;
  y(22) <= \<const0>\;
  y(21) <= \<const0>\;
  y(20) <= \<const0>\;
  y(19) <= \<const0>\;
  y(18) <= \<const0>\;
  y(17) <= \<const0>\;
  y(16) <= \<const0>\;
  y(15) <= \<const0>\;
  y(14) <= \<const0>\;
  y(13) <= \<const0>\;
  y(12) <= \<const0>\;
  y(11) <= \<const0>\;
  y(10) <= \<const0>\;
  y(9) <= \<const0>\;
  y(8) <= \<const0>\;
  y(7) <= \<const0>\;
  y(6) <= \<const0>\;
  y(5) <= \<const0>\;
  y(4) <= \<const0>\;
  y(3) <= \<const0>\;
  y(2) <= \<const0>\;
  y(1) <= \<const0>\;
  y(0) <= \^d0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_mux2_0__2\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_mux2_0__2\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_mux2_0__2\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_mux2_0__2\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_mux2_0__2\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_mux2_0__2\ : entity is "mux2,Vivado 2021.1";
end \butterfly_full_0_mux2_0__2\;

architecture STRUCTURE of \butterfly_full_0_mux2_0__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(0) <= d0(0);
  y(31) <= \<const0>\;
  y(30) <= \<const0>\;
  y(29) <= \<const0>\;
  y(28) <= \<const0>\;
  y(27) <= \<const0>\;
  y(26) <= \<const0>\;
  y(25) <= \<const0>\;
  y(24) <= \<const0>\;
  y(23) <= \<const0>\;
  y(22) <= \<const0>\;
  y(21) <= \<const0>\;
  y(20) <= \<const0>\;
  y(19) <= \<const0>\;
  y(18) <= \<const0>\;
  y(17) <= \<const0>\;
  y(16) <= \<const0>\;
  y(15) <= \<const0>\;
  y(14) <= \<const0>\;
  y(13) <= \<const0>\;
  y(12) <= \<const0>\;
  y(11) <= \<const0>\;
  y(10) <= \<const0>\;
  y(9) <= \<const0>\;
  y(8) <= \<const0>\;
  y(7) <= \<const0>\;
  y(6) <= \<const0>\;
  y(5) <= \<const0>\;
  y(4) <= \<const0>\;
  y(3) <= \<const0>\;
  y(2) <= \<const0>\;
  y(1) <= \<const0>\;
  y(0) <= \^d0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_mux2_0__3\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_mux2_0__3\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_mux2_0__3\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_mux2_0__3\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_mux2_0__3\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_mux2_0__3\ : entity is "mux2,Vivado 2021.1";
end \butterfly_full_0_mux2_0__3\;

architecture STRUCTURE of \butterfly_full_0_mux2_0__3\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(0) <= d0(0);
  y(31) <= \<const0>\;
  y(30) <= \<const0>\;
  y(29) <= \<const0>\;
  y(28) <= \<const0>\;
  y(27) <= \<const0>\;
  y(26) <= \<const0>\;
  y(25) <= \<const0>\;
  y(24) <= \<const0>\;
  y(23) <= \<const0>\;
  y(22) <= \<const0>\;
  y(21) <= \<const0>\;
  y(20) <= \<const0>\;
  y(19) <= \<const0>\;
  y(18) <= \<const0>\;
  y(17) <= \<const0>\;
  y(16) <= \<const0>\;
  y(15) <= \<const0>\;
  y(14) <= \<const0>\;
  y(13) <= \<const0>\;
  y(12) <= \<const0>\;
  y(11) <= \<const0>\;
  y(10) <= \<const0>\;
  y(9) <= \<const0>\;
  y(8) <= \<const0>\;
  y(7) <= \<const0>\;
  y(6) <= \<const0>\;
  y(5) <= \<const0>\;
  y(4) <= \<const0>\;
  y(3) <= \<const0>\;
  y(2) <= \<const0>\;
  y(1) <= \<const0>\;
  y(0) <= \^d0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_mux2_0__4\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_mux2_0__4\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_mux2_0__4\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_mux2_0__4\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_mux2_0__4\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_mux2_0__4\ : entity is "mux2,Vivado 2021.1";
end \butterfly_full_0_mux2_0__4\;

architecture STRUCTURE of \butterfly_full_0_mux2_0__4\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(0) <= d0(0);
  y(31) <= \<const0>\;
  y(30) <= \<const0>\;
  y(29) <= \<const0>\;
  y(28) <= \<const0>\;
  y(27) <= \<const0>\;
  y(26) <= \<const0>\;
  y(25) <= \<const0>\;
  y(24) <= \<const0>\;
  y(23) <= \<const0>\;
  y(22) <= \<const0>\;
  y(21) <= \<const0>\;
  y(20) <= \<const0>\;
  y(19) <= \<const0>\;
  y(18) <= \<const0>\;
  y(17) <= \<const0>\;
  y(16) <= \<const0>\;
  y(15) <= \<const0>\;
  y(14) <= \<const0>\;
  y(13) <= \<const0>\;
  y(12) <= \<const0>\;
  y(11) <= \<const0>\;
  y(10) <= \<const0>\;
  y(9) <= \<const0>\;
  y(8) <= \<const0>\;
  y(7) <= \<const0>\;
  y(6) <= \<const0>\;
  y(5) <= \<const0>\;
  y(4) <= \<const0>\;
  y(3) <= \<const0>\;
  y(2) <= \<const0>\;
  y(1) <= \<const0>\;
  y(0) <= \^d0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_mux2_0__5\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_mux2_0__5\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_mux2_0__5\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_mux2_0__5\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_mux2_0__5\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_mux2_0__5\ : entity is "mux2,Vivado 2021.1";
end \butterfly_full_0_mux2_0__5\;

architecture STRUCTURE of \butterfly_full_0_mux2_0__5\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(0) <= d0(0);
  y(31) <= \<const0>\;
  y(30) <= \<const0>\;
  y(29) <= \<const0>\;
  y(28) <= \<const0>\;
  y(27) <= \<const0>\;
  y(26) <= \<const0>\;
  y(25) <= \<const0>\;
  y(24) <= \<const0>\;
  y(23) <= \<const0>\;
  y(22) <= \<const0>\;
  y(21) <= \<const0>\;
  y(20) <= \<const0>\;
  y(19) <= \<const0>\;
  y(18) <= \<const0>\;
  y(17) <= \<const0>\;
  y(16) <= \<const0>\;
  y(15) <= \<const0>\;
  y(14) <= \<const0>\;
  y(13) <= \<const0>\;
  y(12) <= \<const0>\;
  y(11) <= \<const0>\;
  y(10) <= \<const0>\;
  y(9) <= \<const0>\;
  y(8) <= \<const0>\;
  y(7) <= \<const0>\;
  y(6) <= \<const0>\;
  y(5) <= \<const0>\;
  y(4) <= \<const0>\;
  y(3) <= \<const0>\;
  y(2) <= \<const0>\;
  y(1) <= \<const0>\;
  y(0) <= \^d0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_mux2_0__6\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_mux2_0__6\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_mux2_0__6\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_mux2_0__6\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_mux2_0__6\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_mux2_0__6\ : entity is "mux2,Vivado 2021.1";
end \butterfly_full_0_mux2_0__6\;

architecture STRUCTURE of \butterfly_full_0_mux2_0__6\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(0) <= d0(0);
  y(31) <= \<const0>\;
  y(30) <= \<const0>\;
  y(29) <= \<const0>\;
  y(28) <= \<const0>\;
  y(27) <= \<const0>\;
  y(26) <= \<const0>\;
  y(25) <= \<const0>\;
  y(24) <= \<const0>\;
  y(23) <= \<const0>\;
  y(22) <= \<const0>\;
  y(21) <= \<const0>\;
  y(20) <= \<const0>\;
  y(19) <= \<const0>\;
  y(18) <= \<const0>\;
  y(17) <= \<const0>\;
  y(16) <= \<const0>\;
  y(15) <= \<const0>\;
  y(14) <= \<const0>\;
  y(13) <= \<const0>\;
  y(12) <= \<const0>\;
  y(11) <= \<const0>\;
  y(10) <= \<const0>\;
  y(9) <= \<const0>\;
  y(8) <= \<const0>\;
  y(7) <= \<const0>\;
  y(6) <= \<const0>\;
  y(5) <= \<const0>\;
  y(4) <= \<const0>\;
  y(3) <= \<const0>\;
  y(2) <= \<const0>\;
  y(1) <= \<const0>\;
  y(0) <= \^d0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_mux2_0__7\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_mux2_0__7\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_mux2_0__7\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \butterfly_full_0_mux2_0__7\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_mux2_0__7\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_mux2_0__7\ : entity is "mux2,Vivado 2021.1";
end \butterfly_full_0_mux2_0__7\;

architecture STRUCTURE of \butterfly_full_0_mux2_0__7\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(0) <= d0(0);
  y(31) <= \<const0>\;
  y(30) <= \<const0>\;
  y(29) <= \<const0>\;
  y(28) <= \<const0>\;
  y(27) <= \<const0>\;
  y(26) <= \<const0>\;
  y(25) <= \<const0>\;
  y(24) <= \<const0>\;
  y(23) <= \<const0>\;
  y(22) <= \<const0>\;
  y(21) <= \<const0>\;
  y(20) <= \<const0>\;
  y(19) <= \<const0>\;
  y(18) <= \<const0>\;
  y(17) <= \<const0>\;
  y(16) <= \<const0>\;
  y(15) <= \<const0>\;
  y(14) <= \<const0>\;
  y(13) <= \<const0>\;
  y(12) <= \<const0>\;
  y(11) <= \<const0>\;
  y(10) <= \<const0>\;
  y(9) <= \<const0>\;
  y(8) <= \<const0>\;
  y(7) <= \<const0>\;
  y(6) <= \<const0>\;
  y(5) <= \<const0>\;
  y(4) <= \<const0>\;
  y(3) <= \<const0>\;
  y(2) <= \<const0>\;
  y(1) <= \<const0>\;
  y(0) <= \^d0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
OWAggS0mE6JxmIlB4IqLhyMXRYPJs2DDE2a2JuZy5MB/PdXC/CaU/QRB+AqcK6JP4szhXBycSS8z
iqxQxDTUg4A3iOIyJWDbM6Yncj1VoDx+K0dqn0H+Ux6ekz1SBdoBO4EU4Q5HLCtXLJW8EgM4jzqP
00dxe67N+SsT04R4oZY=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
W60eta8irdb38mdRDzCg4GlgwIYW3/Lru9l+tJih4ChBAcKfnfaR/vOiTL+ROuIZKJnwzJcrpzmt
gvCgGzHC7YTXilcaPZwKLJGNDJz1ephChHv+dU3RVUsAD/2hTtCy4ufxwBlvovQkfC/Lj1duYn0h
OSEhgHWR+DeMUPK2qQQbBb9ABKyCPg4Lz4jFlEL0WZOm0tl9WkZ2Rm3weM0zt1B539Waq4iEp23R
cjqiwLGibXKz4dVw0e8sQSzt2A1TAWBrBGX3u9QEmYGTRB5cP/N+EuOZmOBNhHzRMDgHUduPy9IS
T0HpKpqzIIZ0OwjalMVA697TIeOPpprjIuzHBQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
M3QC1E4EAgFwAqgbMpRj62ZSqGtwACtMfRQvzY5xpdVjwZ2o2aUOzqn08h+DpIbitujiMLpxPUyY
lcPiiMFuzADP0+HvnkKh+nqlni8Fnu+SpjDueyH4bQJ2dEx4L2m6E/ZRMYE/21qZ+IL9Mdwhy2zM
6J4NpTA3GU+XaQ48wh0=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Joy1pwH/OfLUGgLJRqMOST5TZobooPL/KHnb20ZjYwOKq7TVLXA6nkZ+J/8E9K70lSRvS1UpSRH0
t5Xf+iolfdIIM7/OPQhbsr7sGEWHdc0Q64eg+2GGAtSF2BZhsT705w77/DIW4nJKkUpC+VtMtRti
4i/AZB4v3m63KchVydIiWT2eypZaOcJdUaYuq7w3OS5NU1piGksgHh5Xb+szulbvxqFKE4Euv4Yx
O7uUo/+9PH/CzsgmGmKDh2HAp7VMhCk1Hmog74d7Pl7wyr3Y4dBrBBjw1c9mS9qqLDPt/gNTlehB
iOvhgs2sgiqrvmfcmcjLfXJB/a6mYZAOTPKzdA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
g5GY+ruVbJTSNLBZAxKMjzWHqiIBBFLVm0mTIk/27vAJCn/7qN2eNybonN/BbLo0bhsIPnygWtUL
HnBzb30j9hTIkOmb4h3ghEtCopb8bWgen8W+K7lAXMMqSm7UP7SZS+oM+10KcJe73JRSORmhfQmO
1F9OJcu1SAirUVlJoJqHPQM+dVcXzqk6Cy0tnQfjOZzeDPrV6KdMtxexq8eq6tFX+nHwbh71bmwl
4OMHzfEhBHHlRAUDFfsH8FYwkZAH2dnFSqcyb8m+vXobKB4O1tVszhDIgza9r+ofijta9/KCeReP
oi5b+rs6mP4QE2kKqCEN3629NW5mbzUug9MxiA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HNsfBze5a6QtwiAVnGLfFdHHbrU0Oi1c4+CJlHFAOZfXnXZ/b0aEkATWnGGXfvTJAl/Vcr9Whmt+
ekNOhMdu6oXKJ+MJfm2u2jzE3biF+Xa2B9OUw2cnR3sWidPCSfrg1AS5LI2BdlfVD335L8jMJwSV
9dfiE+IthObOKpmZsPiY8zMjdsXwLNxi03pCI8Xly1WwfwvnPHx8W9QTlilHJGrd8NoS1J4RBmrZ
V4U7cpvPr5rFlz0kaBhufye7oY6yr+YRvjdzygxJ9Is4LecDDaRMF4r1PTAtwheEd5a3Fpb6OLzb
12VR4H77zZWEihgmoRyssQ/RlLdENnMf74PhDA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
qajdWELb7xq5MRKDXqbY5G9KalZ6KvS/OFspNPgehavTLyCjfNFwOe7rD6u4OQ9DhpFj21XMOcHT
4IpirpdyiIXOWlDbI0L7UF7fg+oZhywH/4zzeLjKZ1VuNWMxku8tJIciokgfgS0Rc5zJRkFE1fFh
XqKbA8o5V2On2ZWFsxXRHCowiAVXpEbk4hoxIV8L5vuYfM+LmEAQrfNmzVr7ggxMKIAYY8HGsD5y
y68JxstiU/xG1rcmnjRIdeZIHXXBRuFGZjouuAthvqQCk4Aqa0dBLg1Pa5bvF8xwe+FNLdELWLsI
p4Imohkk8nqjgLE5kfHUvK6lNSUTJIGtfR7lWQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
G99JGOPeAWEzvhKOQHBjIJBTWpBqc6eHcwpnoconyJGsCO3rY4RPzw0sPWdTfUbZVf28/xzMdMAw
5Bl0VSYMJ3cfG3uenDKsZF2v9KBin+XsJwfKWs/gxK9A2D8qVJQyLd4ION84axXVPxfI5Gzv2FIm
d2V4C4p5YxpnLiGdskIrPJ2AAa4yZEeWuN01HCD/W+H9Ca3vsRn+2VmFDJbOHyec2GOMH66evWmZ
AlFNPDQSwT+6TVCHFXgpOYsFwwIg3mVZl2EBK7oPx1QESXZOnOLee+VELSumkJOFUI2v3kGFm4+2
yANu0tMCR+Ch57FICMokLG1y7s0yZ7DCuokjx1SKM3Ap/yHSSjBMyE6cOAjHL+oF9ZHdDbGV5v0U
s6Ses23kmJMCOcHQDKgORHBaU5DaZgcdobyCs2MMkJo9CarOL4u/Feim00de/2xjgBS0jQPmVxYI
DV5Y6z4b2qpXJD9yvkwweqY8ZifrG3dHasuUscjtRiYqbLIMonADOsos

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Yg8e7EeHtxErkKZVvi6QJXJCvHzYThtbtZDWYWwhr0hMZCh7wlRPMUDcoEsUXREL9HKBlNIU/8Ip
RFJXEQyG4fzyXOfxoqTV5aFAlBcJbbBITUlrf6b/PM/ef8SPakuJVxDFuGpznAfWV7MaQwD4pGCi
1hZVmFLCjiNVZ/pcZslIeU1yCGclZYjf4Ru+ChXq4zcRuRDybOhAnvOk6/sQJZHGiDiA/H5Lghki
plk50q2/VS4rx+xPeNogEvz/tKK3mUhK/3Sx0BqDTR9u+8Ltxs+0gK55oKH0CNj0HtBdvVId3fDy
w5WvPz8SmltzhMCYDtDP+iKXf+EKR9m/Co0FQA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kaeZvs+4PYnIU5aMEz9ayxvP9e8WfwlYe5V1+84GaX+OBEzJYZuOB78j11P7D17Wac2vVflmyegE
pzOuDr1V7ngOhfDZ9CdnyuG8kKZI8npB2ti19KCeTDE8YSlJGrl/IC5u4nGuroV+LwGGvtU6Po2y
tfmFCDGH8yqXqJi9iSzTwjWRY+Zmnz26cQslX39M3TbtTSHrrwTJ/dNB2rGOSCO8VAT72C/1vM0r
yuwg6HckwQH4SdgtgRunQ6F5Z2YlQDnI2g5kasCAbZsHBnorlLl4pjTc0g/6tf8POBDwxDzdNjZZ
ygUBLK1apQa4rPqPELLi0GZ17fwsVSVjtJ1l6Q==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fWPsb9XEoPk/eIkbvzqAxsrnkJCQrC7JMkh4yQfFePuixsz/gtzj3N4RiT7xGBfzfXNyRIuSv6nm
GrZTKTjfsyOhX/sPhRX7e+LozejMZvG4yPn5i8R8dLRPRJfkmf+sy4RIoxXYI32geyFKr/IenQpn
d2Coyu+R/A/RQtm00P91B5UZq33y+eVemMBiKarsjdo5sEcPsOIODLd9W6N62CrdKOL/OMESkwew
wACPgDbEMwfFez0AEDOMMt0dtWfvO0Yft1+YXkxFgdSAIgiAAlLMXHxHVjFk7J8ujqwFFbH9OjRq
9CxfSxume3LkK1gkyLU5iCY46VFLs3Ok/rquPQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 67712)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity butterfly_full_0_multiplier is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of butterfly_full_0_multiplier : entity is "multiplier,mult_gen_v12_0_17,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of butterfly_full_0_multiplier : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of butterfly_full_0_multiplier : entity is "mult_gen_v12_0_17,Vivado 2021.1";
end butterfly_full_0_multiplier;

architecture STRUCTURE of butterfly_full_0_multiplier is
  signal \<const0>\ : STD_LOGIC;
  signal \^p\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 32;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 32;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 0;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute c_optimize_goal : integer;
  attribute c_optimize_goal of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute X_INTERFACE_PARAMETER of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute X_INTERFACE_PARAMETER of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute X_INTERFACE_PARAMETER of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
  P(31) <= \<const0>\;
  P(30) <= \<const0>\;
  P(29) <= \<const0>\;
  P(28) <= \<const0>\;
  P(27) <= \<const0>\;
  P(26) <= \<const0>\;
  P(25) <= \<const0>\;
  P(24) <= \<const0>\;
  P(23) <= \<const0>\;
  P(22) <= \<const0>\;
  P(21) <= \<const0>\;
  P(20) <= \<const0>\;
  P(19) <= \<const0>\;
  P(18) <= \<const0>\;
  P(17) <= \<const0>\;
  P(16) <= \<const0>\;
  P(15) <= \<const0>\;
  P(14) <= \<const0>\;
  P(13) <= \<const0>\;
  P(12) <= \<const0>\;
  P(11) <= \<const0>\;
  P(10) <= \<const0>\;
  P(9) <= \<const0>\;
  P(8) <= \<const0>\;
  P(7) <= \<const0>\;
  P(6) <= \<const0>\;
  P(5) <= \<const0>\;
  P(4) <= \<const0>\;
  P(3) <= \<const0>\;
  P(2) <= \<const0>\;
  P(1) <= \<const0>\;
  P(0) <= \^p\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.butterfly_full_0_mult_gen_v12_0_17
     port map (
      A(31 downto 1) => B"0000000000000000000000000000000",
      A(0) => A(0),
      B(31 downto 1) => B"0000000000000000000000000000000",
      B(0) => B(0),
      CE => CE,
      CLK => CLK,
      P(31 downto 1) => NLW_U0_P_UNCONNECTED(31 downto 1),
      P(0) => \^p\(0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_multiplier__1\ is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_multiplier__1\ : entity is "multiplier,mult_gen_v12_0_17,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_multiplier__1\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_multiplier__1\ : entity is "multiplier";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_multiplier__1\ : entity is "mult_gen_v12_0_17,Vivado 2021.1";
end \butterfly_full_0_multiplier__1\;

architecture STRUCTURE of \butterfly_full_0_multiplier__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^p\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 32;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 32;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 0;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute c_optimize_goal : integer;
  attribute c_optimize_goal of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute X_INTERFACE_PARAMETER of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute X_INTERFACE_PARAMETER of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute X_INTERFACE_PARAMETER of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
  P(31) <= \<const0>\;
  P(30) <= \<const0>\;
  P(29) <= \<const0>\;
  P(28) <= \<const0>\;
  P(27) <= \<const0>\;
  P(26) <= \<const0>\;
  P(25) <= \<const0>\;
  P(24) <= \<const0>\;
  P(23) <= \<const0>\;
  P(22) <= \<const0>\;
  P(21) <= \<const0>\;
  P(20) <= \<const0>\;
  P(19) <= \<const0>\;
  P(18) <= \<const0>\;
  P(17) <= \<const0>\;
  P(16) <= \<const0>\;
  P(15) <= \<const0>\;
  P(14) <= \<const0>\;
  P(13) <= \<const0>\;
  P(12) <= \<const0>\;
  P(11) <= \<const0>\;
  P(10) <= \<const0>\;
  P(9) <= \<const0>\;
  P(8) <= \<const0>\;
  P(7) <= \<const0>\;
  P(6) <= \<const0>\;
  P(5) <= \<const0>\;
  P(4) <= \<const0>\;
  P(3) <= \<const0>\;
  P(2) <= \<const0>\;
  P(1) <= \<const0>\;
  P(0) <= \^p\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.\butterfly_full_0_mult_gen_v12_0_17__1\
     port map (
      A(31 downto 1) => B"0000000000000000000000000000000",
      A(0) => A(0),
      B(31 downto 1) => B"0000000000000000000000000000000",
      B(0) => B(0),
      CE => CE,
      CLK => CLK,
      P(31 downto 1) => NLW_U0_P_UNCONNECTED(31 downto 1),
      P(0) => \^p\(0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_multiplier__2\ is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_multiplier__2\ : entity is "multiplier,mult_gen_v12_0_17,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_multiplier__2\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_multiplier__2\ : entity is "multiplier";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_multiplier__2\ : entity is "mult_gen_v12_0_17,Vivado 2021.1";
end \butterfly_full_0_multiplier__2\;

architecture STRUCTURE of \butterfly_full_0_multiplier__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^p\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 32;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 32;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 0;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute c_optimize_goal : integer;
  attribute c_optimize_goal of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute X_INTERFACE_PARAMETER of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute X_INTERFACE_PARAMETER of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute X_INTERFACE_PARAMETER of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
  P(31) <= \<const0>\;
  P(30) <= \<const0>\;
  P(29) <= \<const0>\;
  P(28) <= \<const0>\;
  P(27) <= \<const0>\;
  P(26) <= \<const0>\;
  P(25) <= \<const0>\;
  P(24) <= \<const0>\;
  P(23) <= \<const0>\;
  P(22) <= \<const0>\;
  P(21) <= \<const0>\;
  P(20) <= \<const0>\;
  P(19) <= \<const0>\;
  P(18) <= \<const0>\;
  P(17) <= \<const0>\;
  P(16) <= \<const0>\;
  P(15) <= \<const0>\;
  P(14) <= \<const0>\;
  P(13) <= \<const0>\;
  P(12) <= \<const0>\;
  P(11) <= \<const0>\;
  P(10) <= \<const0>\;
  P(9) <= \<const0>\;
  P(8) <= \<const0>\;
  P(7) <= \<const0>\;
  P(6) <= \<const0>\;
  P(5) <= \<const0>\;
  P(4) <= \<const0>\;
  P(3) <= \<const0>\;
  P(2) <= \<const0>\;
  P(1) <= \<const0>\;
  P(0) <= \^p\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.\butterfly_full_0_mult_gen_v12_0_17__2\
     port map (
      A(31 downto 1) => B"0000000000000000000000000000000",
      A(0) => A(0),
      B(31 downto 1) => B"0000000000000000000000000000000",
      B(0) => B(0),
      CE => CE,
      CLK => CLK,
      P(31 downto 1) => NLW_U0_P_UNCONNECTED(31 downto 1),
      P(0) => \^p\(0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \butterfly_full_0_multiplier__3\ is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \butterfly_full_0_multiplier__3\ : entity is "multiplier,mult_gen_v12_0_17,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \butterfly_full_0_multiplier__3\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \butterfly_full_0_multiplier__3\ : entity is "multiplier";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \butterfly_full_0_multiplier__3\ : entity is "mult_gen_v12_0_17,Vivado 2021.1";
end \butterfly_full_0_multiplier__3\;

architecture STRUCTURE of \butterfly_full_0_multiplier__3\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^p\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 32;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 32;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 0;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute c_optimize_goal : integer;
  attribute c_optimize_goal of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute X_INTERFACE_PARAMETER of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute X_INTERFACE_PARAMETER of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute X_INTERFACE_PARAMETER of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
  P(31) <= \<const0>\;
  P(30) <= \<const0>\;
  P(29) <= \<const0>\;
  P(28) <= \<const0>\;
  P(27) <= \<const0>\;
  P(26) <= \<const0>\;
  P(25) <= \<const0>\;
  P(24) <= \<const0>\;
  P(23) <= \<const0>\;
  P(22) <= \<const0>\;
  P(21) <= \<const0>\;
  P(20) <= \<const0>\;
  P(19) <= \<const0>\;
  P(18) <= \<const0>\;
  P(17) <= \<const0>\;
  P(16) <= \<const0>\;
  P(15) <= \<const0>\;
  P(14) <= \<const0>\;
  P(13) <= \<const0>\;
  P(12) <= \<const0>\;
  P(11) <= \<const0>\;
  P(10) <= \<const0>\;
  P(9) <= \<const0>\;
  P(8) <= \<const0>\;
  P(7) <= \<const0>\;
  P(6) <= \<const0>\;
  P(5) <= \<const0>\;
  P(4) <= \<const0>\;
  P(3) <= \<const0>\;
  P(2) <= \<const0>\;
  P(1) <= \<const0>\;
  P(0) <= \^p\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.\butterfly_full_0_mult_gen_v12_0_17__3\
     port map (
      A(31 downto 1) => B"0000000000000000000000000000000",
      A(0) => A(0),
      B(31 downto 1) => B"0000000000000000000000000000000",
      B(0) => B(0),
      CE => CE,
      CLK => CLK,
      P(31 downto 1) => NLW_U0_P_UNCONNECTED(31 downto 1),
      P(0) => \^p\(0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity butterfly_full_0_butterfly_full is
  port (
    X0_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X0_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X1_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X1_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    x1_im_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_re_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_im_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    CE : in STD_LOGIC
  );
end butterfly_full_0_butterfly_full;

architecture STRUCTURE of butterfly_full_0_butterfly_full is
  signal w_im : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w_re : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x1_im : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x1_im_x_w_im : STD_LOGIC;
  signal x1_im_x_w_im_m : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x1_im_x_w_re : STD_LOGIC;
  signal x1_im_x_w_re_m : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x1_re : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x1_re_x_w_im : STD_LOGIC;
  signal x1_re_x_w_im_m : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x1_re_x_w_re : STD_LOGIC;
  signal x1_re_x_w_re_m : STD_LOGIC_VECTOR ( 0 to 0 );
  signal z_im : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal z_re : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_X0_im_add_v_UNCONNECTED : STD_LOGIC;
  signal NLW_X0_re_add_v_UNCONNECTED : STD_LOGIC;
  signal NLW_X1_im_sub_v_UNCONNECTED : STD_LOGIC;
  signal NLW_X1_re_sub_v_UNCONNECTED : STD_LOGIC;
  signal NLW_w_im_mux_y_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_w_re_mux_y_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_im_mux_y_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_im_w_im_mul_P_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_im_w_im_mux_y_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_im_w_re_y_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_im_w_re_mul_P_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_re_mux_y_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_re_w_im_mul_P_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_re_w_im_mux_y_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_re_w_re_mul_P_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_x1_re_w_re_mux_y_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_z_im_add_v_UNCONNECTED : STD_LOGIC;
  signal NLW_z_im_add_r_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_z_re_sub_v_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of X0_im_add : label is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of X0_im_add : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of X0_im_add : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of X0_im_add : label is "adder_subtracter32,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of X0_re_add : label is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings of X0_re_add : label is "yes";
  attribute IP_DEFINITION_SOURCE of X0_re_add : label is "package_project";
  attribute X_CORE_INFO of X0_re_add : label is "adder_subtracter32,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of X1_im_sub : label is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings of X1_im_sub : label is "yes";
  attribute IP_DEFINITION_SOURCE of X1_im_sub : label is "package_project";
  attribute X_CORE_INFO of X1_im_sub : label is "adder_subtracter32,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of X1_re_sub : label is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings of X1_re_sub : label is "yes";
  attribute IP_DEFINITION_SOURCE of X1_re_sub : label is "package_project";
  attribute X_CORE_INFO of X1_re_sub : label is "adder_subtracter32,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of w_im_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of w_im_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of w_im_mux : label is "package_project";
  attribute X_CORE_INFO of w_im_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of w_re_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of w_re_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of w_re_mux : label is "package_project";
  attribute X_CORE_INFO of w_re_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_im_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_im_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_im_mux : label is "package_project";
  attribute X_CORE_INFO of x1_im_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_im_w_im_mul : label is "multiplier,mult_gen_v12_0_17,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_im_w_im_mul : label is "yes";
  attribute X_CORE_INFO of x1_im_w_im_mul : label is "mult_gen_v12_0_17,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_im_w_im_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_im_w_im_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_im_w_im_mux : label is "package_project";
  attribute X_CORE_INFO of x1_im_w_im_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_im_w_re : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_im_w_re : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_im_w_re : label is "package_project";
  attribute X_CORE_INFO of x1_im_w_re : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_im_w_re_mul : label is "multiplier,mult_gen_v12_0_17,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_im_w_re_mul : label is "yes";
  attribute X_CORE_INFO of x1_im_w_re_mul : label is "mult_gen_v12_0_17,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_re_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_re_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_re_mux : label is "package_project";
  attribute X_CORE_INFO of x1_re_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_re_w_im_mul : label is "multiplier,mult_gen_v12_0_17,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_re_w_im_mul : label is "yes";
  attribute X_CORE_INFO of x1_re_w_im_mul : label is "mult_gen_v12_0_17,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_re_w_im_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_re_w_im_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_re_w_im_mux : label is "package_project";
  attribute X_CORE_INFO of x1_re_w_im_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_re_w_re_mul : label is "multiplier,mult_gen_v12_0_17,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_re_w_re_mul : label is "yes";
  attribute X_CORE_INFO of x1_re_w_re_mul : label is "mult_gen_v12_0_17,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_re_w_re_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_re_w_re_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_re_w_re_mux : label is "package_project";
  attribute X_CORE_INFO of x1_re_w_re_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of z_im_add : label is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings of z_im_add : label is "yes";
  attribute IP_DEFINITION_SOURCE of z_im_add : label is "package_project";
  attribute X_CORE_INFO of z_im_add : label is "adder_subtracter32,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of z_re_sub : label is "adder_subtracter32_ip,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings of z_re_sub : label is "yes";
  attribute IP_DEFINITION_SOURCE of z_re_sub : label is "package_project";
  attribute X_CORE_INFO of z_re_sub : label is "adder_subtracter32,Vivado 2021.1";
begin
X0_im_add: entity work.\butterfly_full_0_adder_subtracter32_ip__2\
     port map (
      c_in => '0',
      r(31 downto 0) => X0_im_o(31 downto 0),
      v => NLW_X0_im_add_v_UNCONNECTED,
      x(31 downto 0) => x0_im_i(31 downto 0),
      y(31 downto 2) => B"000000000000000000000000000000",
      y(1 downto 0) => z_im(1 downto 0)
    );
X0_re_add: entity work.\butterfly_full_0_adder_subtracter32_ip__1\
     port map (
      c_in => '0',
      r(31 downto 0) => X0_re_o(31 downto 0),
      v => NLW_X0_re_add_v_UNCONNECTED,
      x(31 downto 0) => x0_re_i(31 downto 0),
      y(31 downto 0) => z_re(31 downto 0)
    );
X1_im_sub: entity work.\butterfly_full_0_adder_subtracter32_ip__4\
     port map (
      c_in => '1',
      r(31 downto 0) => X1_im_o(31 downto 0),
      v => NLW_X1_im_sub_v_UNCONNECTED,
      x(31 downto 0) => x0_im_i(31 downto 0),
      y(31 downto 2) => B"000000000000000000000000000000",
      y(1 downto 0) => z_im(1 downto 0)
    );
X1_re_sub: entity work.\butterfly_full_0_adder_subtracter32_ip__3\
     port map (
      c_in => '1',
      r(31 downto 0) => X1_re_o(31 downto 0),
      v => NLW_X1_re_sub_v_UNCONNECTED,
      x(31 downto 0) => x0_re_i(31 downto 0),
      y(31 downto 0) => z_re(31 downto 0)
    );
w_im_mux: entity work.\butterfly_full_0_mux2_0__4\
     port map (
      d0(31 downto 1) => B"0000000000000000000000000000000",
      d0(0) => w_im_i(0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 1) => NLW_w_im_mux_y_UNCONNECTED(31 downto 1),
      y(0) => w_im(0)
    );
w_re_mux: entity work.\butterfly_full_0_mux2_0__3\
     port map (
      d0(31 downto 1) => B"0000000000000000000000000000000",
      d0(0) => w_re_i(0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 1) => NLW_w_re_mux_y_UNCONNECTED(31 downto 1),
      y(0) => w_re(0)
    );
x1_im_mux: entity work.\butterfly_full_0_mux2_0__2\
     port map (
      d0(31 downto 1) => B"0000000000000000000000000000000",
      d0(0) => x1_im_i(0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 1) => NLW_x1_im_mux_y_UNCONNECTED(31 downto 1),
      y(0) => x1_im(0)
    );
x1_im_w_im_mul: entity work.\butterfly_full_0_multiplier__2\
     port map (
      A(31 downto 1) => B"0000000000000000000000000000000",
      A(0) => x1_im(0),
      B(31 downto 1) => B"0000000000000000000000000000000",
      B(0) => w_im(0),
      CE => CE,
      CLK => clk,
      P(31 downto 1) => NLW_x1_im_w_im_mul_P_UNCONNECTED(31 downto 1),
      P(0) => x1_im_x_w_im_m(0)
    );
x1_im_w_im_mux: entity work.\butterfly_full_0_mux2_0__6\
     port map (
      d0(31 downto 1) => B"0000000000000000000000000000000",
      d0(0) => x1_im_x_w_im_m(0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 1) => NLW_x1_im_w_im_mux_y_UNCONNECTED(31 downto 1),
      y(0) => x1_im_x_w_im
    );
x1_im_w_re: entity work.butterfly_full_0_mux2_0
     port map (
      d0(31 downto 1) => B"0000000000000000000000000000000",
      d0(0) => x1_im_x_w_re_m(0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 1) => NLW_x1_im_w_re_y_UNCONNECTED(31 downto 1),
      y(0) => x1_im_x_w_re
    );
x1_im_w_re_mul: entity work.butterfly_full_0_multiplier
     port map (
      A(31 downto 1) => B"0000000000000000000000000000000",
      A(0) => x1_im(0),
      B(31 downto 1) => B"0000000000000000000000000000000",
      B(0) => w_re(0),
      CE => CE,
      CLK => clk,
      P(31 downto 1) => NLW_x1_im_w_re_mul_P_UNCONNECTED(31 downto 1),
      P(0) => x1_im_x_w_re_m(0)
    );
x1_re_mux: entity work.\butterfly_full_0_mux2_0__1\
     port map (
      d0(31 downto 1) => B"0000000000000000000000000000000",
      d0(0) => x1_re_i(0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 1) => NLW_x1_re_mux_y_UNCONNECTED(31 downto 1),
      y(0) => x1_re(0)
    );
x1_re_w_im_mul: entity work.\butterfly_full_0_multiplier__3\
     port map (
      A(31 downto 1) => B"0000000000000000000000000000000",
      A(0) => x1_re(0),
      B(31 downto 1) => B"0000000000000000000000000000000",
      B(0) => w_im(0),
      CE => CE,
      CLK => clk,
      P(31 downto 1) => NLW_x1_re_w_im_mul_P_UNCONNECTED(31 downto 1),
      P(0) => x1_re_x_w_im_m(0)
    );
x1_re_w_im_mux: entity work.\butterfly_full_0_mux2_0__7\
     port map (
      d0(31 downto 1) => B"0000000000000000000000000000000",
      d0(0) => x1_re_x_w_im_m(0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 1) => NLW_x1_re_w_im_mux_y_UNCONNECTED(31 downto 1),
      y(0) => x1_re_x_w_im
    );
x1_re_w_re_mul: entity work.\butterfly_full_0_multiplier__1\
     port map (
      A(31 downto 1) => B"0000000000000000000000000000000",
      A(0) => x1_re(0),
      B(31 downto 1) => B"0000000000000000000000000000000",
      B(0) => w_re(0),
      CE => CE,
      CLK => clk,
      P(31 downto 1) => NLW_x1_re_w_re_mul_P_UNCONNECTED(31 downto 1),
      P(0) => x1_re_x_w_re_m(0)
    );
x1_re_w_re_mux: entity work.\butterfly_full_0_mux2_0__5\
     port map (
      d0(31 downto 1) => B"0000000000000000000000000000000",
      d0(0) => x1_re_x_w_re_m(0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 1) => NLW_x1_re_w_re_mux_y_UNCONNECTED(31 downto 1),
      y(0) => x1_re_x_w_re
    );
z_im_add: entity work.butterfly_full_0_adder_subtracter32_ip
     port map (
      c_in => '0',
      r(31 downto 2) => NLW_z_im_add_r_UNCONNECTED(31 downto 2),
      r(1 downto 0) => z_im(1 downto 0),
      v => NLW_z_im_add_v_UNCONNECTED,
      x(31 downto 1) => B"0000000000000000000000000000000",
      x(0) => x1_re_x_w_im,
      y(31 downto 1) => B"0000000000000000000000000000000",
      y(0) => x1_im_x_w_re
    );
z_re_sub: entity work.\butterfly_full_0_adder_subtracter32_ip__5\
     port map (
      c_in => '1',
      r(31 downto 0) => z_re(31 downto 0),
      v => NLW_z_re_sub_v_UNCONNECTED,
      x(31 downto 1) => B"0000000000000000000000000000000",
      x(0) => x1_re_x_w_re,
      y(31 downto 1) => B"0000000000000000000000000000000",
      y(0) => x1_im_x_w_im
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity butterfly_full_0 is
  port (
    clk : in STD_LOGIC;
    CE : in STD_LOGIC;
    x0_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    w_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    w_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    X0_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X0_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X1_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X1_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of butterfly_full_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of butterfly_full_0 : entity is "butterfly_full_0,butterfly_full,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of butterfly_full_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of butterfly_full_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of butterfly_full_0 : entity is "butterfly_full,Vivado 2021.1";
end butterfly_full_0;

architecture STRUCTURE of butterfly_full_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.butterfly_full_0_butterfly_full
     port map (
      CE => CE,
      X0_im_o(31 downto 0) => X0_im_o(31 downto 0),
      X0_re_o(31 downto 0) => X0_re_o(31 downto 0),
      X1_im_o(31 downto 0) => X1_im_o(31 downto 0),
      X1_re_o(31 downto 0) => X1_re_o(31 downto 0),
      clk => clk,
      w_im_i(0) => w_im_i(0),
      w_re_i(0) => w_re_i(0),
      x0_im_i(31 downto 0) => x0_im_i(31 downto 0),
      x0_re_i(31 downto 0) => x0_re_i(31 downto 0),
      x1_im_i(0) => x1_im_i(0),
      x1_re_i(0) => x1_re_i(0)
    );
end STRUCTURE;
