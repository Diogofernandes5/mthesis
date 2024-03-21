-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Thu Mar  7 17:54:51 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/butterfly_full_0/butterfly_full_0_sim_netlist.vhdl
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of butterfly_full_0_adder_subtracter32_ip : entity is "adder_subtracter32_ip";
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of butterfly_full_0_mux2_0 : entity is "mux2_0";
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
N5z8Je+/wqfhbS5QWYKlSJL7/sBNyAtIcFqS2oa601d6zW8CnDhlyFfRx+7Mi/Q3ljkidenyOhUs
lBFTBdNWI/cJZNX+Nl8MrGXUNxzkw8BWfOGLXhqhp1HBBjwn7xa/nTUmnimDR5WG/sO2WZKFareB
/NxO9YGHxQYDHolfaJuHg3qYq4UEoeBLWlDg9YgCXKdsGUOxZi+f2/8sLaYSrVrkmyGVPdVU+FpX
0Fr9BUeMgH8Vpit7i8oLWhgs9dKIHckAhJo2LG/vc2r6xEMbUDOtToQITJdw7GUfHaQAoY1yZeVy
bPTAFyzjjiwJ1/1IeqwP+ZmvTYfHbWSzdJaycQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Kfd676BhAtO4LW1laFKUIG0mQVO72P0dnCIfVYRXoeFSaTqWZnd3L9Ulz21oST6/EjysHuZbKuVH
uxcRz69LoV8oIb+w2ikEbXrqLDvpXKb0h2Kbrrezb7YBAWS9ba2CJ0dcFtMqmz9VpyviyOayuqB4
rmFXKGhX207DoFquFXKnfO2VZltYMn72wppU5p4Vuebzyq5NxGQhJrYfPpget8/x8ktowrFl1KqH
PpkA9wbLYj4/8+UJM4oo/tA4FqNX3NcArtOAzHI9MVMr7gwEPNfIoLH44EKN18aJpyc0B6E+NDMg
KLDxjRA7dgn7qUUtgWtPtaE+NIstrUjv+UuZ6Q==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 68096)
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of butterfly_full_0_multiplier : entity is "multiplier";
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of butterfly_full_0_butterfly_full : entity is "butterfly_full";
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
