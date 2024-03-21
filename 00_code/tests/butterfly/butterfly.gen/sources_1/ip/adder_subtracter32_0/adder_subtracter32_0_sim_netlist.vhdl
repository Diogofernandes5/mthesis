-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Feb 23 12:35:31 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fernandes/thesis/00_code/tests/butterfly/butterfly.gen/sources_1/ip/adder_subtracter32_0/adder_subtracter32_0_sim_netlist.vhdl
-- Design      : adder_subtracter32_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_subtracter32_0 is
  port (
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adder_subtracter32_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adder_subtracter32_0 : entity is "adder_subtracter32_0,adder_subtracter32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of adder_subtracter32_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of adder_subtracter32_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of adder_subtracter32_0 : entity is "adder_subtracter32,Vivado 2021.1";
end adder_subtracter32_0;

architecture STRUCTURE of adder_subtracter32_0 is
  signal \inst/add14/c_out00_out\ : STD_LOGIC;
  signal \inst/add14/c_out0__0\ : STD_LOGIC;
  signal \inst/add14/s0__0\ : STD_LOGIC;
  signal \inst/add19/c_out00_out\ : STD_LOGIC;
  signal \inst/add19/c_out0__0\ : STD_LOGIC;
  signal \inst/add19/s0__0\ : STD_LOGIC;
  signal \inst/add24/c_out00_out\ : STD_LOGIC;
  signal \inst/add24/c_out0__0\ : STD_LOGIC;
  signal \inst/add24/s0__0\ : STD_LOGIC;
  signal \inst/add29/c_out00_out\ : STD_LOGIC;
  signal \inst/add29/c_out0__0\ : STD_LOGIC;
  signal \inst/add29/s0__0\ : STD_LOGIC;
  signal \inst/add30/s0__0\ : STD_LOGIC;
  signal \inst/add31/s0__0\ : STD_LOGIC;
  signal \inst/add4/c_out00_out\ : STD_LOGIC;
  signal \inst/add4/c_out0__0\ : STD_LOGIC;
  signal \inst/add4/s0__0\ : STD_LOGIC;
  signal \inst/add9/c_out00_out\ : STD_LOGIC;
  signal \inst/add9/c_out0__0\ : STD_LOGIC;
  signal \inst/add9/s0__0\ : STD_LOGIC;
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
  signal \inst/c_out_5\ : STD_LOGIC;
  signal \inst/c_out_6\ : STD_LOGIC;
  signal \inst/c_out_7\ : STD_LOGIC;
  signal \inst/c_out_8\ : STD_LOGIC;
  signal \inst/c_out_9\ : STD_LOGIC;
  signal \inst/y010_out\ : STD_LOGIC;
  signal \inst/y012_out\ : STD_LOGIC;
  signal \inst/y014_out\ : STD_LOGIC;
  signal \inst/y018_out\ : STD_LOGIC;
  signal \inst/y020_out\ : STD_LOGIC;
  signal \inst/y022_out\ : STD_LOGIC;
  signal \inst/y024_out\ : STD_LOGIC;
  signal \inst/y028_out\ : STD_LOGIC;
  signal \inst/y02_out\ : STD_LOGIC;
  signal \inst/y030_out\ : STD_LOGIC;
  signal \inst/y032_out\ : STD_LOGIC;
  signal \inst/y034_out\ : STD_LOGIC;
  signal \inst/y038_out\ : STD_LOGIC;
  signal \inst/y040_out\ : STD_LOGIC;
  signal \inst/y042_out\ : STD_LOGIC;
  signal \inst/y044_out\ : STD_LOGIC;
  signal \inst/y048_out\ : STD_LOGIC;
  signal \inst/y04_out\ : STD_LOGIC;
  signal \inst/y050_out\ : STD_LOGIC;
  signal \inst/y052_out\ : STD_LOGIC;
  signal \inst/y054_out\ : STD_LOGIC;
  signal \inst/y056_out\ : STD_LOGIC;
  signal \inst/y058_out\ : STD_LOGIC;
  signal \inst/y060_out\ : STD_LOGIC;
  signal \inst/y08_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s[30]_INST_0_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s[30]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_12\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of v_INST_0_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of v_INST_0_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of v_INST_0_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of v_INST_0_i_5 : label is "soft_lutpair5";
begin
\s[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x(0),
      I1 => y(0),
      O => s(0)
    );
\s[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_9\,
      I1 => x(10),
      I2 => c_in,
      I3 => y(10),
      O => s(10)
    );
\s[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_9\,
      I1 => x(10),
      I2 => y(10),
      I3 => x(11),
      I4 => c_in,
      I5 => y(11),
      O => s(11)
    );
\s[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(9),
      I1 => c_in,
      I2 => x(9),
      I3 => y(8),
      I4 => x(8),
      I5 => \inst/c_out_7\,
      O => \inst/c_out_9\
    );
\s[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_10\,
      I1 => x(11),
      I2 => y(11),
      I3 => x(12),
      I4 => c_in,
      I5 => y(12),
      O => s(12)
    );
\s[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(10),
      I1 => c_in,
      I2 => x(10),
      I3 => y(9),
      I4 => x(9),
      I5 => \inst/c_out_8\,
      O => \inst/c_out_10\
    );
\s[12]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y(4),
      I1 => c_in,
      I2 => x(4),
      O => \inst/add4/s0__0\
    );
\s[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(8),
      I1 => c_in,
      I2 => x(8),
      I3 => y(7),
      I4 => x(7),
      I5 => \inst/c_out_6\,
      O => \inst/c_out_8\
    );
\s[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => \inst/y010_out\,
      I1 => x(6),
      I2 => \inst/y08_out\,
      I3 => x(5),
      I4 => \inst/add4/c_out00_out\,
      I5 => \inst/add4/c_out0__0\,
      O => \inst/c_out_6\
    );
\s[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(6),
      O => \inst/y010_out\
    );
\s[12]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(5),
      O => \inst/y08_out\
    );
\s[12]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => x(4),
      I1 => y(4),
      I2 => c_in,
      O => \inst/add4/c_out00_out\
    );
\s[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_1\,
      I1 => x(2),
      I2 => \inst/y02_out\,
      I3 => x(3),
      I4 => \inst/y04_out\,
      I5 => \inst/add4/s0__0\,
      O => \inst/add4/c_out0__0\
    );
\s[12]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(2),
      O => \inst/y02_out\
    );
\s[12]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(3),
      O => \inst/y04_out\
    );
\s[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_12\,
      I1 => x(13),
      I2 => c_in,
      I3 => y(13),
      O => s(13)
    );
\s[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_12\,
      I1 => x(13),
      I2 => y(13),
      I3 => x(14),
      I4 => c_in,
      I5 => y(14),
      O => s(14)
    );
\s[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(12),
      I1 => c_in,
      I2 => x(12),
      I3 => y(11),
      I4 => x(11),
      I5 => \inst/c_out_10\,
      O => \inst/c_out_12\
    );
\s[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_14\,
      I1 => x(15),
      I2 => c_in,
      I3 => y(15),
      O => s(15)
    );
\s[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_14\,
      I1 => x(15),
      I2 => y(15),
      I3 => x(16),
      I4 => c_in,
      I5 => y(16),
      O => s(16)
    );
\s[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(14),
      I1 => c_in,
      I2 => x(14),
      I3 => y(13),
      I4 => x(13),
      I5 => \inst/c_out_12\,
      O => \inst/c_out_14\
    );
\s[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_15\,
      I1 => x(16),
      I2 => y(16),
      I3 => x(17),
      I4 => c_in,
      I5 => y(17),
      O => s(17)
    );
\s[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(15),
      I1 => c_in,
      I2 => x(15),
      I3 => y(14),
      I4 => x(14),
      I5 => \inst/c_out_13\,
      O => \inst/c_out_15\
    );
\s[17]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y(9),
      I1 => c_in,
      I2 => x(9),
      O => \inst/add9/s0__0\
    );
\s[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(13),
      I1 => c_in,
      I2 => x(13),
      I3 => y(12),
      I4 => x(12),
      I5 => \inst/c_out_11\,
      O => \inst/c_out_13\
    );
\s[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => \inst/y020_out\,
      I1 => x(11),
      I2 => \inst/y018_out\,
      I3 => x(10),
      I4 => \inst/add9/c_out00_out\,
      I5 => \inst/add9/c_out0__0\,
      O => \inst/c_out_11\
    );
\s[17]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(11),
      O => \inst/y020_out\
    );
\s[17]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(10),
      O => \inst/y018_out\
    );
\s[17]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => x(9),
      I1 => y(9),
      I2 => c_in,
      O => \inst/add9/c_out00_out\
    );
\s[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_6\,
      I1 => x(7),
      I2 => \inst/y012_out\,
      I3 => x(8),
      I4 => \inst/y014_out\,
      I5 => \inst/add9/s0__0\,
      O => \inst/add9/c_out0__0\
    );
\s[17]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(7),
      O => \inst/y012_out\
    );
\s[17]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(8),
      O => \inst/y014_out\
    );
\s[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_17\,
      I1 => x(18),
      I2 => c_in,
      I3 => y(18),
      O => s(18)
    );
\s[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_17\,
      I1 => x(18),
      I2 => y(18),
      I3 => x(19),
      I4 => c_in,
      I5 => y(19),
      O => s(19)
    );
\s[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(17),
      I1 => c_in,
      I2 => x(17),
      I3 => y(16),
      I4 => x(16),
      I5 => \inst/c_out_15\,
      O => \inst/c_out_17\
    );
\s[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B87B478"
    )
        port map (
      I0 => x(0),
      I1 => y(0),
      I2 => x(1),
      I3 => c_in,
      I4 => y(1),
      O => s(1)
    );
\s[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_19\,
      I1 => x(20),
      I2 => c_in,
      I3 => y(20),
      O => s(20)
    );
\s[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_19\,
      I1 => x(20),
      I2 => y(20),
      I3 => x(21),
      I4 => c_in,
      I5 => y(21),
      O => s(21)
    );
\s[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(19),
      I1 => c_in,
      I2 => x(19),
      I3 => y(18),
      I4 => x(18),
      I5 => \inst/c_out_17\,
      O => \inst/c_out_19\
    );
\s[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_20\,
      I1 => x(21),
      I2 => y(21),
      I3 => x(22),
      I4 => c_in,
      I5 => y(22),
      O => s(22)
    );
\s[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(20),
      I1 => c_in,
      I2 => x(20),
      I3 => y(19),
      I4 => x(19),
      I5 => \inst/c_out_18\,
      O => \inst/c_out_20\
    );
\s[22]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y(14),
      I1 => c_in,
      I2 => x(14),
      O => \inst/add14/s0__0\
    );
\s[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(18),
      I1 => c_in,
      I2 => x(18),
      I3 => y(17),
      I4 => x(17),
      I5 => \inst/c_out_16\,
      O => \inst/c_out_18\
    );
\s[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => \inst/y030_out\,
      I1 => x(16),
      I2 => \inst/y028_out\,
      I3 => x(15),
      I4 => \inst/add14/c_out00_out\,
      I5 => \inst/add14/c_out0__0\,
      O => \inst/c_out_16\
    );
\s[22]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(16),
      O => \inst/y030_out\
    );
\s[22]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(15),
      O => \inst/y028_out\
    );
\s[22]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => x(14),
      I1 => y(14),
      I2 => c_in,
      O => \inst/add14/c_out00_out\
    );
\s[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_11\,
      I1 => x(12),
      I2 => \inst/y022_out\,
      I3 => x(13),
      I4 => \inst/y024_out\,
      I5 => \inst/add14/s0__0\,
      O => \inst/add14/c_out0__0\
    );
\s[22]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(12),
      O => \inst/y022_out\
    );
\s[22]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(13),
      O => \inst/y024_out\
    );
\s[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_22\,
      I1 => x(23),
      I2 => c_in,
      I3 => y(23),
      O => s(23)
    );
\s[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_22\,
      I1 => x(23),
      I2 => y(23),
      I3 => x(24),
      I4 => c_in,
      I5 => y(24),
      O => s(24)
    );
\s[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(22),
      I1 => c_in,
      I2 => x(22),
      I3 => y(21),
      I4 => x(21),
      I5 => \inst/c_out_20\,
      O => \inst/c_out_22\
    );
\s[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_24\,
      I1 => x(25),
      I2 => c_in,
      I3 => y(25),
      O => s(25)
    );
\s[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_24\,
      I1 => x(25),
      I2 => y(25),
      I3 => x(26),
      I4 => c_in,
      I5 => y(26),
      O => s(26)
    );
\s[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(24),
      I1 => c_in,
      I2 => x(24),
      I3 => y(23),
      I4 => x(23),
      I5 => \inst/c_out_22\,
      O => \inst/c_out_24\
    );
\s[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_25\,
      I1 => x(26),
      I2 => y(26),
      I3 => x(27),
      I4 => c_in,
      I5 => y(27),
      O => s(27)
    );
\s[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(25),
      I1 => c_in,
      I2 => x(25),
      I3 => y(24),
      I4 => x(24),
      I5 => \inst/c_out_23\,
      O => \inst/c_out_25\
    );
\s[27]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y(19),
      I1 => c_in,
      I2 => x(19),
      O => \inst/add19/s0__0\
    );
\s[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(23),
      I1 => c_in,
      I2 => x(23),
      I3 => y(22),
      I4 => x(22),
      I5 => \inst/c_out_21\,
      O => \inst/c_out_23\
    );
\s[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => \inst/y040_out\,
      I1 => x(21),
      I2 => \inst/y038_out\,
      I3 => x(20),
      I4 => \inst/add19/c_out00_out\,
      I5 => \inst/add19/c_out0__0\,
      O => \inst/c_out_21\
    );
\s[27]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(21),
      O => \inst/y040_out\
    );
\s[27]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(20),
      O => \inst/y038_out\
    );
\s[27]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => x(19),
      I1 => y(19),
      I2 => c_in,
      O => \inst/add19/c_out00_out\
    );
\s[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_16\,
      I1 => x(17),
      I2 => \inst/y032_out\,
      I3 => x(18),
      I4 => \inst/y034_out\,
      I5 => \inst/add19/s0__0\,
      O => \inst/add19/c_out0__0\
    );
\s[27]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(17),
      O => \inst/y032_out\
    );
\s[27]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(18),
      O => \inst/y034_out\
    );
\s[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_27\,
      I1 => x(28),
      I2 => c_in,
      I3 => y(28),
      O => s(28)
    );
\s[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_27\,
      I1 => x(28),
      I2 => y(28),
      I3 => x(29),
      I4 => c_in,
      I5 => y(29),
      O => s(29)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_1\,
      I1 => x(2),
      I2 => c_in,
      I3 => y(2),
      O => s(2)
    );
\s[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \inst/c_out_27\,
      I1 => x(28),
      I2 => \inst/y054_out\,
      I3 => x(29),
      I4 => \inst/y056_out\,
      I5 => \inst/add30/s0__0\,
      O => s(30)
    );
\s[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(27),
      I1 => c_in,
      I2 => x(27),
      I3 => y(26),
      I4 => x(26),
      I5 => \inst/c_out_25\,
      O => \inst/c_out_27\
    );
\s[30]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(28),
      O => \inst/y054_out\
    );
\s[30]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y(30),
      I1 => c_in,
      I2 => x(30),
      O => \inst/add30/s0__0\
    );
\s[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \inst/c_out_28\,
      I1 => x(29),
      I2 => \inst/y056_out\,
      I3 => x(30),
      I4 => \inst/y058_out\,
      I5 => \inst/add31/s0__0\,
      O => s(31)
    );
\s[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(28),
      I1 => c_in,
      I2 => x(28),
      I3 => y(27),
      I4 => x(27),
      I5 => \inst/c_out_26\,
      O => \inst/c_out_28\
    );
\s[31]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(22),
      O => \inst/y042_out\
    );
\s[31]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(23),
      O => \inst/y044_out\
    );
\s[31]_INST_0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y(24),
      I1 => c_in,
      I2 => x(24),
      O => \inst/add24/s0__0\
    );
\s[31]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(29),
      O => \inst/y056_out\
    );
\s[31]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(30),
      O => \inst/y058_out\
    );
\s[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y(31),
      I1 => c_in,
      I2 => x(31),
      O => \inst/add31/s0__0\
    );
\s[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E888EEE8EEE8E888"
    )
        port map (
      I0 => \inst/y050_out\,
      I1 => x(26),
      I2 => \inst/y048_out\,
      I3 => x(25),
      I4 => \inst/add24/c_out00_out\,
      I5 => \inst/add24/c_out0__0\,
      O => \inst/c_out_26\
    );
\s[31]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(26),
      O => \inst/y050_out\
    );
\s[31]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(25),
      O => \inst/y048_out\
    );
\s[31]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => x(24),
      I1 => y(24),
      I2 => c_in,
      O => \inst/add24/c_out00_out\
    );
\s[31]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_21\,
      I1 => x(22),
      I2 => \inst/y042_out\,
      I3 => x(23),
      I4 => \inst/y044_out\,
      I5 => \inst/add24/s0__0\,
      O => \inst/add24/c_out0__0\
    );
\s[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_1\,
      I1 => x(2),
      I2 => y(2),
      I3 => x(3),
      I4 => c_in,
      I5 => y(3),
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6E460E4"
    )
        port map (
      I0 => y(1),
      I1 => c_in,
      I2 => x(1),
      I3 => y(0),
      I4 => x(0),
      O => \inst/c_out_1\
    );
\s[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_3\,
      I1 => x(4),
      I2 => c_in,
      I3 => y(4),
      O => s(4)
    );
\s[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_3\,
      I1 => x(4),
      I2 => y(4),
      I3 => x(5),
      I4 => c_in,
      I5 => y(5),
      O => s(5)
    );
\s[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(3),
      I1 => c_in,
      I2 => x(3),
      I3 => y(2),
      I4 => x(2),
      I5 => \inst/c_out_1\,
      O => \inst/c_out_3\
    );
\s[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_5\,
      I1 => x(6),
      I2 => c_in,
      I3 => y(6),
      O => s(6)
    );
\s[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_5\,
      I1 => x(6),
      I2 => y(6),
      I3 => x(7),
      I4 => c_in,
      I5 => y(7),
      O => s(7)
    );
\s[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(5),
      I1 => c_in,
      I2 => x(5),
      I3 => y(4),
      I4 => x(4),
      I5 => \inst/c_out_3\,
      O => \inst/c_out_5\
    );
\s[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \inst/c_out_7\,
      I1 => x(8),
      I2 => c_in,
      I3 => y(8),
      O => s(8)
    );
\s[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EE8178E7117E8"
    )
        port map (
      I0 => \inst/c_out_7\,
      I1 => x(8),
      I2 => y(8),
      I3 => x(9),
      I4 => c_in,
      I5 => y(9),
      O => s(9)
    );
\s[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F672E472E46060"
    )
        port map (
      I0 => y(7),
      I1 => c_in,
      I2 => x(7),
      I3 => y(6),
      I4 => x(6),
      I5 => \inst/c_out_5\,
      O => \inst/c_out_7\
    );
v_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"099F00000000F660"
    )
        port map (
      I0 => \inst/add29/c_out0__0\,
      I1 => \inst/add29/c_out00_out\,
      I2 => x(30),
      I3 => \inst/y058_out\,
      I4 => x(31),
      I5 => \inst/y060_out\,
      O => v
    );
v_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \inst/c_out_26\,
      I1 => x(27),
      I2 => \inst/y052_out\,
      I3 => x(28),
      I4 => \inst/y054_out\,
      I5 => \inst/add29/s0__0\,
      O => \inst/add29/c_out0__0\
    );
v_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => x(29),
      I1 => y(29),
      I2 => c_in,
      O => \inst/add29/c_out00_out\
    );
v_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(31),
      O => \inst/y060_out\
    );
v_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_in,
      I1 => y(27),
      O => \inst/y052_out\
    );
v_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => y(29),
      I1 => c_in,
      I2 => x(29),
      O => \inst/add29/s0__0\
    );
end STRUCTURE;
