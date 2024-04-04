-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Thu Mar  7 17:54:35 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top demux2_0 -prefix
--               demux2_0_ demux2_0_sim_netlist.vhdl
-- Design      : demux2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity demux2_0_demux2 is
  port (
    y1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end demux2_0_demux2;

architecture STRUCTURE of demux2_0_demux2 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \y0[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y0[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \y0[11]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \y0[12]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \y0[13]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \y0[14]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \y0[15]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \y0[16]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y0[17]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \y0[18]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \y0[19]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \y0[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y0[20]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \y0[21]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \y0[22]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \y0[23]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \y0[24]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \y0[25]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \y0[26]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y0[27]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \y0[28]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \y0[29]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \y0[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \y0[30]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \y0[31]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \y0[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \y0[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \y0[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \y0[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \y0[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y0[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \y0[9]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \y1[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y1[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \y1[11]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \y1[12]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \y1[13]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \y1[14]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \y1[15]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \y1[16]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y1[17]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \y1[18]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \y1[19]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \y1[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y1[20]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \y1[21]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \y1[22]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \y1[23]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \y1[24]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \y1[25]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \y1[26]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y1[27]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \y1[28]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \y1[29]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \y1[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \y1[30]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \y1[31]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \y1[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \y1[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \y1[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \y1[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \y1[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y1[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \y1[9]_INST_0\ : label is "soft_lutpair9";
begin
\y0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(0),
      I1 => s,
      O => y0(0)
    );
\y0[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(10),
      I1 => s,
      O => y0(10)
    );
\y0[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(11),
      I1 => s,
      O => y0(11)
    );
\y0[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(12),
      I1 => s,
      O => y0(12)
    );
\y0[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(13),
      I1 => s,
      O => y0(13)
    );
\y0[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(14),
      I1 => s,
      O => y0(14)
    );
\y0[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(15),
      I1 => s,
      O => y0(15)
    );
\y0[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(16),
      I1 => s,
      O => y0(16)
    );
\y0[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(17),
      I1 => s,
      O => y0(17)
    );
\y0[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(18),
      I1 => s,
      O => y0(18)
    );
\y0[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(19),
      I1 => s,
      O => y0(19)
    );
\y0[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(1),
      I1 => s,
      O => y0(1)
    );
\y0[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(20),
      I1 => s,
      O => y0(20)
    );
\y0[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(21),
      I1 => s,
      O => y0(21)
    );
\y0[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(22),
      I1 => s,
      O => y0(22)
    );
\y0[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(23),
      I1 => s,
      O => y0(23)
    );
\y0[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(24),
      I1 => s,
      O => y0(24)
    );
\y0[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(25),
      I1 => s,
      O => y0(25)
    );
\y0[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(26),
      I1 => s,
      O => y0(26)
    );
\y0[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(27),
      I1 => s,
      O => y0(27)
    );
\y0[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(28),
      I1 => s,
      O => y0(28)
    );
\y0[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(29),
      I1 => s,
      O => y0(29)
    );
\y0[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(2),
      I1 => s,
      O => y0(2)
    );
\y0[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(30),
      I1 => s,
      O => y0(30)
    );
\y0[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(31),
      I1 => s,
      O => y0(31)
    );
\y0[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(3),
      I1 => s,
      O => y0(3)
    );
\y0[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(4),
      I1 => s,
      O => y0(4)
    );
\y0[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(5),
      I1 => s,
      O => y0(5)
    );
\y0[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(6),
      I1 => s,
      O => y0(6)
    );
\y0[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(7),
      I1 => s,
      O => y0(7)
    );
\y0[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(8),
      I1 => s,
      O => y0(8)
    );
\y0[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(9),
      I1 => s,
      O => y0(9)
    );
\y1[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(0),
      O => y1(0)
    );
\y1[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(10),
      O => y1(10)
    );
\y1[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(11),
      O => y1(11)
    );
\y1[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(12),
      O => y1(12)
    );
\y1[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(13),
      O => y1(13)
    );
\y1[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(14),
      O => y1(14)
    );
\y1[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(15),
      O => y1(15)
    );
\y1[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(16),
      O => y1(16)
    );
\y1[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(17),
      O => y1(17)
    );
\y1[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(18),
      O => y1(18)
    );
\y1[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(19),
      O => y1(19)
    );
\y1[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(1),
      O => y1(1)
    );
\y1[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(20),
      O => y1(20)
    );
\y1[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(21),
      O => y1(21)
    );
\y1[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(22),
      O => y1(22)
    );
\y1[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(23),
      O => y1(23)
    );
\y1[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(24),
      O => y1(24)
    );
\y1[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(25),
      O => y1(25)
    );
\y1[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(26),
      O => y1(26)
    );
\y1[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(27),
      O => y1(27)
    );
\y1[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(28),
      O => y1(28)
    );
\y1[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(29),
      O => y1(29)
    );
\y1[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(2),
      O => y1(2)
    );
\y1[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(30),
      O => y1(30)
    );
\y1[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(31),
      O => y1(31)
    );
\y1[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(3),
      O => y1(3)
    );
\y1[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(4),
      O => y1(4)
    );
\y1[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(5),
      O => y1(5)
    );
\y1[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(6),
      O => y1(6)
    );
\y1[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(7),
      O => y1(7)
    );
\y1[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(8),
      O => y1(8)
    );
\y1[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => d(9),
      O => y1(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity demux2_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of demux2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of demux2_0 : entity is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of demux2_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of demux2_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of demux2_0 : entity is "demux2,Vivado 2021.1";
end demux2_0;

architecture STRUCTURE of demux2_0 is
begin
inst: entity work.demux2_0_demux2
     port map (
      d(31 downto 0) => d(31 downto 0),
      s => s,
      y0(31 downto 0) => y0(31 downto 0),
      y1(31 downto 0) => y1(31 downto 0)
    );
end STRUCTURE;
