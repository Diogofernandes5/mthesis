-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Nov 10 00:28:52 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fernandes/thesis/00_code/tests/shift_r_test/shift_r_test.gen/sources_1/ip/shift_sel/shift_sel_stub.vhdl
-- Design      : shift_sel
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_sel is
  Port ( 
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end shift_sel;

architecture stub of shift_sel is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d0[31:0],d1[31:0],s,y[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mux2,Vivado 2021.1";
begin
end;
