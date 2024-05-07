-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr 23 17:59:16 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/ip/fft_data_path/data_path/data_path.gen/sources_1/ip/mux2_twiddle/mux2_twiddle_sim_netlist.vhdl
-- Design      : mux2_twiddle
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux2_twiddle_mux2 is
  port (
    y : out STD_LOGIC_VECTOR ( 17 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    d0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mux2_twiddle_mux2 : entity is "mux2";
end mux2_twiddle_mux2;

architecture STRUCTURE of mux2_twiddle_mux2 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \y[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \y[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \y[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \y[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \y[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \y[17]_INST_0\ : label is "soft_lutpair8";
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
\y[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(10),
      I1 => d0(10),
      I2 => s,
      O => y(10)
    );
\y[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(11),
      I1 => d0(11),
      I2 => s,
      O => y(11)
    );
\y[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(12),
      I1 => d0(12),
      I2 => s,
      O => y(12)
    );
\y[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(13),
      I1 => d0(13),
      I2 => s,
      O => y(13)
    );
\y[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(14),
      I1 => d0(14),
      I2 => s,
      O => y(14)
    );
\y[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(15),
      I1 => d0(15),
      I2 => s,
      O => y(15)
    );
\y[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(16),
      I1 => d0(16),
      I2 => s,
      O => y(16)
    );
\y[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(17),
      I1 => d0(17),
      I2 => s,
      O => y(17)
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
entity mux2_twiddle is
  port (
    d0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mux2_twiddle : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mux2_twiddle : entity is "mux2_twiddle,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mux2_twiddle : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mux2_twiddle : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mux2_twiddle : entity is "mux2,Vivado 2021.1";
end mux2_twiddle;

architecture STRUCTURE of mux2_twiddle is
begin
inst: entity work.mux2_twiddle_mux2
     port map (
      d0(17 downto 0) => d0(17 downto 0),
      d1(17 downto 0) => d1(17 downto 0),
      s => s,
      y(17 downto 0) => y(17 downto 0)
    );
end STRUCTURE;
