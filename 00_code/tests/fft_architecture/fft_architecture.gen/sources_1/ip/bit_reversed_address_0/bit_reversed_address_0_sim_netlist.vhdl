-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Oct 30 14:53:18 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top bit_reversed_address_0 -prefix
--               bit_reversed_address_0_ bit_reversed_address_0_sim_netlist.vhdl
-- Design      : bit_reversed_address_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bit_reversed_address_0 is
  port (
    index_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reversed_o : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bit_reversed_address_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bit_reversed_address_0 : entity is "bit_reversed_address_0,bit_reversed_address,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bit_reversed_address_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bit_reversed_address_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bit_reversed_address_0 : entity is "bit_reversed_address,Vivado 2021.1";
end bit_reversed_address_0;

architecture STRUCTURE of bit_reversed_address_0 is
  signal \^index_i\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  \^index_i\(2 downto 0) <= index_i(2 downto 0);
  reversed_o(2) <= \^index_i\(0);
  reversed_o(1) <= \^index_i\(1);
  reversed_o(0) <= \^index_i\(2);
end STRUCTURE;
