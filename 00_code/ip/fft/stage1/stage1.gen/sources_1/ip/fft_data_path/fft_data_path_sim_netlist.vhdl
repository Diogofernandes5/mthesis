-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  9 19:04:50 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/ip/fft/stage1/stage1.gen/sources_1/ip/fft_data_path/fft_data_path_sim_netlist.vhdl
-- Design      : fft_data_path
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_data_path_demux2 is
  port (
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_data_path_demux2 : entity is "demux2";
end fft_data_path_demux2;

architecture STRUCTURE of fft_data_path_demux2 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \y0[0]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \y0[10]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \y0[11]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \y0[12]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \y0[13]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \y0[14]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \y0[15]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \y0[16]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \y0[17]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \y0[18]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \y0[19]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \y0[1]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \y0[20]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \y0[21]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \y0[22]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \y0[23]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \y0[24]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \y0[25]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \y0[26]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \y0[27]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \y0[28]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \y0[29]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \y0[2]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \y0[30]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \y0[31]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \y0[3]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \y0[4]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \y0[5]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \y0[6]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \y0[7]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \y0[8]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \y0[9]_INST_0\ : label is "soft_lutpair59";
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_demux2_0__4\ is
  port (
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_demux2_0__4\ : entity is "demux2";
end \fft_data_path_demux2_0__4\;

architecture STRUCTURE of \fft_data_path_demux2_0__4\ is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \y0[0]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \y0[10]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \y0[11]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \y0[12]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \y0[13]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \y0[14]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \y0[15]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \y0[16]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \y0[17]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \y0[18]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \y0[19]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \y0[1]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \y0[20]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \y0[21]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \y0[22]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \y0[23]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \y0[24]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \y0[25]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \y0[26]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \y0[27]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \y0[28]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \y0[29]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \y0[2]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \y0[30]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \y0[31]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \y0[3]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \y0[4]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \y0[5]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \y0[6]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \y0[7]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \y0[8]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \y0[9]_INST_0\ : label is "soft_lutpair43";
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_data_path_demux2_1 is
  port (
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_data_path_demux2_1 : entity is "demux2";
end fft_data_path_demux2_1;

architecture STRUCTURE of fft_data_path_demux2_1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \y0[0]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \y0[10]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y0[11]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y0[12]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \y0[13]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \y0[14]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \y0[15]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \y0[16]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \y0[17]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \y0[18]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \y0[19]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \y0[1]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \y0[20]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \y0[21]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \y0[22]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \y0[23]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \y0[24]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \y0[25]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \y0[26]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \y0[27]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \y0[28]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \y0[29]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \y0[2]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \y0[30]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y0[31]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y0[3]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \y0[4]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \y0[5]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \y0[6]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \y0[7]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \y0[8]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \y0[9]_INST_0\ : label is "soft_lutpair27";
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_data_path_demux2_2 is
  port (
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_data_path_demux2_2 : entity is "demux2";
end fft_data_path_demux2_2;

architecture STRUCTURE of fft_data_path_demux2_2 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \y0[0]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \y0[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \y0[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \y0[12]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \y0[13]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \y0[14]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \y0[15]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \y0[16]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y0[17]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y0[18]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \y0[19]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \y0[1]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \y0[20]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \y0[21]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \y0[22]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \y0[23]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \y0[24]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \y0[25]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \y0[26]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \y0[27]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \y0[28]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y0[29]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y0[2]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \y0[30]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y0[31]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y0[3]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \y0[4]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \y0[5]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \y0[6]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \y0[7]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \y0[8]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \y0[9]_INST_0\ : label is "soft_lutpair11";
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_mux2_0__1\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_mux2_0__1\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_mux2_0__1\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_data_path_mux2_0__1\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_mux2_0__1\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_mux2_0__1\ : entity is "mux2,Vivado 2021.1";
end \fft_data_path_mux2_0__1\;

architecture STRUCTURE of \fft_data_path_mux2_0__1\ is
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(31 downto 0) <= d0(31 downto 0);
  y(31 downto 0) <= \^d0\(31 downto 0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_mux2_0__2\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_mux2_0__2\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_mux2_0__2\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_data_path_mux2_0__2\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_mux2_0__2\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_mux2_0__2\ : entity is "mux2,Vivado 2021.1";
end \fft_data_path_mux2_0__2\;

architecture STRUCTURE of \fft_data_path_mux2_0__2\ is
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(31 downto 0) <= d0(31 downto 0);
  y(31 downto 0) <= \^d0\(31 downto 0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_mux2_0__3\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_mux2_0__3\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_mux2_0__3\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_data_path_mux2_0__3\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_mux2_0__3\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_mux2_0__3\ : entity is "mux2,Vivado 2021.1";
end \fft_data_path_mux2_0__3\;

architecture STRUCTURE of \fft_data_path_mux2_0__3\ is
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(31 downto 0) <= d0(31 downto 0);
  y(31 downto 0) <= \^d0\(31 downto 0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_mux2_0__4\ is
  port (
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_mux2_0__4\ : entity is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_mux2_0__4\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_data_path_mux2_0__4\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_mux2_0__4\ : entity is "mux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_mux2_0__4\ : entity is "mux2,Vivado 2021.1";
end \fft_data_path_mux2_0__4\;

architecture STRUCTURE of \fft_data_path_mux2_0__4\ is
  signal \^d0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^d0\(31 downto 0) <= d0(31 downto 0);
  y(31 downto 0) <= \^d0\(31 downto 0);
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38288)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_data_path_demux2_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_data_path_demux2_0 : entity is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_data_path_demux2_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_data_path_demux2_0 : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_data_path_demux2_0 : entity is "demux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_data_path_demux2_0 : entity is "demux2,Vivado 2021.1";
end fft_data_path_demux2_0;

architecture STRUCTURE of fft_data_path_demux2_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  y1(31) <= \<const0>\;
  y1(30) <= \<const0>\;
  y1(29) <= \<const0>\;
  y1(28) <= \<const0>\;
  y1(27) <= \<const0>\;
  y1(26) <= \<const0>\;
  y1(25) <= \<const0>\;
  y1(24) <= \<const0>\;
  y1(23) <= \<const0>\;
  y1(22) <= \<const0>\;
  y1(21) <= \<const0>\;
  y1(20) <= \<const0>\;
  y1(19) <= \<const0>\;
  y1(18) <= \<const0>\;
  y1(17) <= \<const0>\;
  y1(16) <= \<const0>\;
  y1(15) <= \<const0>\;
  y1(14) <= \<const0>\;
  y1(13) <= \<const0>\;
  y1(12) <= \<const0>\;
  y1(11) <= \<const0>\;
  y1(10) <= \<const0>\;
  y1(9) <= \<const0>\;
  y1(8) <= \<const0>\;
  y1(7) <= \<const0>\;
  y1(6) <= \<const0>\;
  y1(5) <= \<const0>\;
  y1(4) <= \<const0>\;
  y1(3) <= \<const0>\;
  y1(2) <= \<const0>\;
  y1(1) <= \<const0>\;
  y1(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.fft_data_path_demux2
     port map (
      d(31 downto 0) => d(31 downto 0),
      s => s,
      y0(31 downto 0) => y0(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_demux2_0__1\ is
  port (
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_demux2_0__1\ : entity is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_demux2_0__1\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_data_path_demux2_0__1\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_demux2_0__1\ : entity is "demux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_demux2_0__1\ : entity is "demux2,Vivado 2021.1";
end \fft_data_path_demux2_0__1\;

architecture STRUCTURE of \fft_data_path_demux2_0__1\ is
  signal \<const0>\ : STD_LOGIC;
begin
  y1(31) <= \<const0>\;
  y1(30) <= \<const0>\;
  y1(29) <= \<const0>\;
  y1(28) <= \<const0>\;
  y1(27) <= \<const0>\;
  y1(26) <= \<const0>\;
  y1(25) <= \<const0>\;
  y1(24) <= \<const0>\;
  y1(23) <= \<const0>\;
  y1(22) <= \<const0>\;
  y1(21) <= \<const0>\;
  y1(20) <= \<const0>\;
  y1(19) <= \<const0>\;
  y1(18) <= \<const0>\;
  y1(17) <= \<const0>\;
  y1(16) <= \<const0>\;
  y1(15) <= \<const0>\;
  y1(14) <= \<const0>\;
  y1(13) <= \<const0>\;
  y1(12) <= \<const0>\;
  y1(11) <= \<const0>\;
  y1(10) <= \<const0>\;
  y1(9) <= \<const0>\;
  y1(8) <= \<const0>\;
  y1(7) <= \<const0>\;
  y1(6) <= \<const0>\;
  y1(5) <= \<const0>\;
  y1(4) <= \<const0>\;
  y1(3) <= \<const0>\;
  y1(2) <= \<const0>\;
  y1(1) <= \<const0>\;
  y1(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.fft_data_path_demux2_2
     port map (
      d(31 downto 0) => d(31 downto 0),
      s => s,
      y0(31 downto 0) => y0(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_demux2_0__2\ is
  port (
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_demux2_0__2\ : entity is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_demux2_0__2\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_data_path_demux2_0__2\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_demux2_0__2\ : entity is "demux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_demux2_0__2\ : entity is "demux2,Vivado 2021.1";
end \fft_data_path_demux2_0__2\;

architecture STRUCTURE of \fft_data_path_demux2_0__2\ is
  signal \<const0>\ : STD_LOGIC;
begin
  y1(31) <= \<const0>\;
  y1(30) <= \<const0>\;
  y1(29) <= \<const0>\;
  y1(28) <= \<const0>\;
  y1(27) <= \<const0>\;
  y1(26) <= \<const0>\;
  y1(25) <= \<const0>\;
  y1(24) <= \<const0>\;
  y1(23) <= \<const0>\;
  y1(22) <= \<const0>\;
  y1(21) <= \<const0>\;
  y1(20) <= \<const0>\;
  y1(19) <= \<const0>\;
  y1(18) <= \<const0>\;
  y1(17) <= \<const0>\;
  y1(16) <= \<const0>\;
  y1(15) <= \<const0>\;
  y1(14) <= \<const0>\;
  y1(13) <= \<const0>\;
  y1(12) <= \<const0>\;
  y1(11) <= \<const0>\;
  y1(10) <= \<const0>\;
  y1(9) <= \<const0>\;
  y1(8) <= \<const0>\;
  y1(7) <= \<const0>\;
  y1(6) <= \<const0>\;
  y1(5) <= \<const0>\;
  y1(4) <= \<const0>\;
  y1(3) <= \<const0>\;
  y1(2) <= \<const0>\;
  y1(1) <= \<const0>\;
  y1(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.fft_data_path_demux2_1
     port map (
      d(31 downto 0) => d(31 downto 0),
      s => s,
      y0(31 downto 0) => y0(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_demux2_0__3\ is
  port (
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_demux2_0__3\ : entity is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_demux2_0__3\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \fft_data_path_demux2_0__3\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_demux2_0__3\ : entity is "demux2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_demux2_0__3\ : entity is "demux2,Vivado 2021.1";
end \fft_data_path_demux2_0__3\;

architecture STRUCTURE of \fft_data_path_demux2_0__3\ is
  signal \<const0>\ : STD_LOGIC;
begin
  y1(31) <= \<const0>\;
  y1(30) <= \<const0>\;
  y1(29) <= \<const0>\;
  y1(28) <= \<const0>\;
  y1(27) <= \<const0>\;
  y1(26) <= \<const0>\;
  y1(25) <= \<const0>\;
  y1(24) <= \<const0>\;
  y1(23) <= \<const0>\;
  y1(22) <= \<const0>\;
  y1(21) <= \<const0>\;
  y1(20) <= \<const0>\;
  y1(19) <= \<const0>\;
  y1(18) <= \<const0>\;
  y1(17) <= \<const0>\;
  y1(16) <= \<const0>\;
  y1(15) <= \<const0>\;
  y1(14) <= \<const0>\;
  y1(13) <= \<const0>\;
  y1(12) <= \<const0>\;
  y1(11) <= \<const0>\;
  y1(10) <= \<const0>\;
  y1(9) <= \<const0>\;
  y1(8) <= \<const0>\;
  y1(7) <= \<const0>\;
  y1(6) <= \<const0>\;
  y1(5) <= \<const0>\;
  y1(4) <= \<const0>\;
  y1(3) <= \<const0>\;
  y1(2) <= \<const0>\;
  y1(1) <= \<const0>\;
  y1(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.\fft_data_path_demux2_0__4\
     port map (
      d(31 downto 0) => d(31 downto 0),
      s => s,
      y0(31 downto 0) => y0(31 downto 0)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 87248)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_data_path_bram_results is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_data_path_bram_results : entity is "bram_results,blk_mem_gen_v8_4_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_data_path_bram_results : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_data_path_bram_results : entity is "bram_results";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_data_path_bram_results : entity is "blk_mem_gen_v8_4_4,Vivado 2021.1";
end fft_data_path_bram_results;

architecture STRUCTURE of fft_data_path_bram_results is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 1;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     3.53845 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 1;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "bram_results.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 512;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute X_INTERFACE_INFO of rsta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute X_INTERFACE_INFO of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
  rsta_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.fft_data_path_blk_mem_gen_v8_4_4
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => B"000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => NLW_U0_doutb_UNCONNECTED(31 downto 0),
      eccpipece => '0',
      ena => '1',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(8 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(8 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(8 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(8 downto 0),
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_bram_results__1\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_bram_results__1\ : entity is "bram_results,blk_mem_gen_v8_4_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_bram_results__1\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_bram_results__1\ : entity is "bram_results";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_bram_results__1\ : entity is "blk_mem_gen_v8_4_4,Vivado 2021.1";
end \fft_data_path_bram_results__1\;

architecture STRUCTURE of \fft_data_path_bram_results__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 1;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     3.53845 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 1;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "bram_results.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 512;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute X_INTERFACE_INFO of rsta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute X_INTERFACE_INFO of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
  rsta_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.\fft_data_path_blk_mem_gen_v8_4_4__1\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => B"000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => NLW_U0_doutb_UNCONNECTED(31 downto 0),
      eccpipece => '0',
      ena => '1',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(8 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(8 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(8 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(8 downto 0),
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_bram_results__2\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_bram_results__2\ : entity is "bram_results,blk_mem_gen_v8_4_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_bram_results__2\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_bram_results__2\ : entity is "bram_results";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_bram_results__2\ : entity is "blk_mem_gen_v8_4_4,Vivado 2021.1";
end \fft_data_path_bram_results__2\;

architecture STRUCTURE of \fft_data_path_bram_results__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 1;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     3.53845 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 1;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "bram_results.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 512;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute X_INTERFACE_INFO of rsta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute X_INTERFACE_INFO of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
  rsta_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.\fft_data_path_blk_mem_gen_v8_4_4__2\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => B"000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => NLW_U0_doutb_UNCONNECTED(31 downto 0),
      eccpipece => '0',
      ena => '1',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(8 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(8 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(8 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(8 downto 0),
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fft_data_path_bram_results__3\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \fft_data_path_bram_results__3\ : entity is "bram_results,blk_mem_gen_v8_4_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \fft_data_path_bram_results__3\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fft_data_path_bram_results__3\ : entity is "bram_results";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \fft_data_path_bram_results__3\ : entity is "blk_mem_gen_v8_4_4,Vivado 2021.1";
end \fft_data_path_bram_results__3\;

architecture STRUCTURE of \fft_data_path_bram_results__3\ is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 1;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     3.53845 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 1;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "bram_results.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 512;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute X_INTERFACE_INFO of rsta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute X_INTERFACE_INFO of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
  rsta_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.\fft_data_path_blk_mem_gen_v8_4_4__3\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => B"000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => NLW_U0_doutb_UNCONNECTED(31 downto 0),
      eccpipece => '0',
      ena => '1',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(8 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(8 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(8 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(8 downto 0),
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_data_path_data_path is
  port (
    x0_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    bram_we_i : in STD_LOGIC;
    bram_addr_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    fft_ready_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fft_data_path_data_path : entity is "data_path";
end fft_data_path_data_path;

architecture STRUCTURE of fft_data_path_data_path is
  signal x0_im_ram : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x0_im_sel : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x0_re_ram : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x0_re_sel : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x1_im_ram : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x1_im_sel : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x1_re_ram : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal x1_re_sel : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_x0_im_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_x0_im_demux_y1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_x0_re_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_x0_re_demux_y1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_x1_im_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_x1_im_demux_y1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_x1_re_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_x1_re_demux_y1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of x0_im_bram : label is "bram_results,blk_mem_gen_v8_4_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of x0_im_bram : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of x0_im_bram : label is "blk_mem_gen_v8_4_4,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x0_im_demux : label is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x0_im_demux : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of x0_im_demux : label is "package_project";
  attribute X_CORE_INFO of x0_im_demux : label is "demux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x0_im_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x0_im_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x0_im_mux : label is "package_project";
  attribute X_CORE_INFO of x0_im_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x0_re_bram : label is "bram_results,blk_mem_gen_v8_4_4,{}";
  attribute DowngradeIPIdentifiedWarnings of x0_re_bram : label is "yes";
  attribute X_CORE_INFO of x0_re_bram : label is "blk_mem_gen_v8_4_4,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x0_re_demux : label is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x0_re_demux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x0_re_demux : label is "package_project";
  attribute X_CORE_INFO of x0_re_demux : label is "demux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x0_re_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x0_re_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x0_re_mux : label is "package_project";
  attribute X_CORE_INFO of x0_re_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_im_bram : label is "bram_results,blk_mem_gen_v8_4_4,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_im_bram : label is "yes";
  attribute X_CORE_INFO of x1_im_bram : label is "blk_mem_gen_v8_4_4,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_im_demux : label is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_im_demux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_im_demux : label is "package_project";
  attribute X_CORE_INFO of x1_im_demux : label is "demux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_im_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_im_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_im_mux : label is "package_project";
  attribute X_CORE_INFO of x1_im_mux : label is "mux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_re_bram : label is "bram_results,blk_mem_gen_v8_4_4,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_re_bram : label is "yes";
  attribute X_CORE_INFO of x1_re_bram : label is "blk_mem_gen_v8_4_4,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_re_demux : label is "demux2_0,demux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_re_demux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_re_demux : label is "package_project";
  attribute X_CORE_INFO of x1_re_demux : label is "demux2,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of x1_re_mux : label is "mux2_0,mux2,{}";
  attribute DowngradeIPIdentifiedWarnings of x1_re_mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of x1_re_mux : label is "package_project";
  attribute X_CORE_INFO of x1_re_mux : label is "mux2,Vivado 2021.1";
begin
x0_im_bram: entity work.\fft_data_path_bram_results__2\
     port map (
      addra(8 downto 0) => bram_addr_i(8 downto 0),
      clka => clk,
      dina(31 downto 0) => x0_im_sel(31 downto 0),
      douta(31 downto 0) => x0_im_ram(31 downto 0),
      ena => '1',
      rsta => '0',
      rsta_busy => NLW_x0_im_bram_rsta_busy_UNCONNECTED,
      wea(0) => bram_we_i
    );
x0_im_demux: entity work.\fft_data_path_demux2_0__2\
     port map (
      d(31 downto 0) => x0_im_ram(31 downto 0),
      s => fft_ready_i,
      y0(31 downto 0) => x0_im_o(31 downto 0),
      y1(31 downto 0) => NLW_x0_im_demux_y1_UNCONNECTED(31 downto 0)
    );
x0_im_mux: entity work.\fft_data_path_mux2_0__2\
     port map (
      d0(31 downto 0) => x0_im_i(31 downto 0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 0) => x0_im_sel(31 downto 0)
    );
x0_re_bram: entity work.\fft_data_path_bram_results__1\
     port map (
      addra(8 downto 0) => bram_addr_i(8 downto 0),
      clka => clk,
      dina(31 downto 0) => x0_re_sel(31 downto 0),
      douta(31 downto 0) => x0_re_ram(31 downto 0),
      ena => '1',
      rsta => '0',
      rsta_busy => NLW_x0_re_bram_rsta_busy_UNCONNECTED,
      wea(0) => bram_we_i
    );
x0_re_demux: entity work.\fft_data_path_demux2_0__1\
     port map (
      d(31 downto 0) => x0_re_ram(31 downto 0),
      s => fft_ready_i,
      y0(31 downto 0) => x0_re_o(31 downto 0),
      y1(31 downto 0) => NLW_x0_re_demux_y1_UNCONNECTED(31 downto 0)
    );
x0_re_mux: entity work.\fft_data_path_mux2_0__1\
     port map (
      d0(31 downto 0) => x0_re_i(31 downto 0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 0) => x0_re_sel(31 downto 0)
    );
x1_im_bram: entity work.fft_data_path_bram_results
     port map (
      addra(8 downto 0) => bram_addr_i(8 downto 0),
      clka => clk,
      dina(31 downto 0) => x1_im_sel(31 downto 0),
      douta(31 downto 0) => x1_im_ram(31 downto 0),
      ena => '1',
      rsta => '0',
      rsta_busy => NLW_x1_im_bram_rsta_busy_UNCONNECTED,
      wea(0) => bram_we_i
    );
x1_im_demux: entity work.fft_data_path_demux2_0
     port map (
      d(31 downto 0) => x1_im_ram(31 downto 0),
      s => fft_ready_i,
      y0(31 downto 0) => x1_im_o(31 downto 0),
      y1(31 downto 0) => NLW_x1_im_demux_y1_UNCONNECTED(31 downto 0)
    );
x1_im_mux: entity work.\fft_data_path_mux2_0__4\
     port map (
      d0(31 downto 0) => x1_im_i(31 downto 0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 0) => x1_im_sel(31 downto 0)
    );
x1_re_bram: entity work.\fft_data_path_bram_results__3\
     port map (
      addra(8 downto 0) => bram_addr_i(8 downto 0),
      clka => clk,
      dina(31 downto 0) => x1_re_sel(31 downto 0),
      douta(31 downto 0) => x1_re_ram(31 downto 0),
      ena => '1',
      rsta => '0',
      rsta_busy => NLW_x1_re_bram_rsta_busy_UNCONNECTED,
      wea(0) => bram_we_i
    );
x1_re_demux: entity work.\fft_data_path_demux2_0__3\
     port map (
      d(31 downto 0) => x1_re_ram(31 downto 0),
      s => fft_ready_i,
      y0(31 downto 0) => x1_re_o(31 downto 0),
      y1(31 downto 0) => NLW_x1_re_demux_y1_UNCONNECTED(31 downto 0)
    );
x1_re_mux: entity work.\fft_data_path_mux2_0__3\
     port map (
      d0(31 downto 0) => x1_re_i(31 downto 0),
      d1(31 downto 0) => B"00000000000000000000000000000000",
      s => '0',
      y(31 downto 0) => x1_re_sel(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_data_path is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    x0_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    w : in STD_LOGIC_VECTOR ( 27 downto 0 );
    src_sel_i : in STD_LOGIC;
    fft_ready_i : in STD_LOGIC;
    start_i : in STD_LOGIC;
    bram_we_i : in STD_LOGIC;
    bf_ce_i : in STD_LOGIC;
    x0_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fft_data_path : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fft_data_path : entity is "fft_data_path,data_path,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fft_data_path : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fft_data_path : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fft_data_path : entity is "data_path,Vivado 2021.1";
end fft_data_path;

architecture STRUCTURE of fft_data_path is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.fft_data_path_data_path
     port map (
      bram_addr_i(8 downto 0) => bram_addr_i(8 downto 0),
      bram_we_i => bram_we_i,
      clk => clk,
      fft_ready_i => fft_ready_i,
      x0_im_i(31 downto 0) => x0_im_i(31 downto 0),
      x0_im_o(31 downto 0) => x0_im_o(31 downto 0),
      x0_re_i(31 downto 0) => x0_re_i(31 downto 0),
      x0_re_o(31 downto 0) => x0_re_o(31 downto 0),
      x1_im_i(31 downto 0) => x1_im_i(31 downto 0),
      x1_im_o(31 downto 0) => x1_im_o(31 downto 0),
      x1_re_i(31 downto 0) => x1_re_i(31 downto 0),
      x1_re_o(31 downto 0) => x1_re_o(31 downto 0)
    );
end STRUCTURE;
