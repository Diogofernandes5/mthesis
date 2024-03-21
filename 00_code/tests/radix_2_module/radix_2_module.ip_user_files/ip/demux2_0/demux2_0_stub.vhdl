-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Thu Mar  7 17:54:36 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/demux2_0/demux2_0_stub.vhdl
-- Design      : demux2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux2_0 is
  Port ( 
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end demux2_0;

architecture stub of demux2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d[31:0],s,y0[31:0],y1[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "demux2,Vivado 2021.1";
begin
end;
