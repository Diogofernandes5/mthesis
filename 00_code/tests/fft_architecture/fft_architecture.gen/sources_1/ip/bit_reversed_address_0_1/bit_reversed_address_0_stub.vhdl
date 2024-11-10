-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Nov  5 10:48:42 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top bit_reversed_address_0 -prefix
--               bit_reversed_address_0_ bit_reversed_address_0_stub.vhdl
-- Design      : bit_reversed_address_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bit_reversed_address_0 is
  Port ( 
    index_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reversed_o : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end bit_reversed_address_0;

architecture stub of bit_reversed_address_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "index_i[4:0],reversed_o[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bit_reversed_address,Vivado 2021.1";
begin
end;
