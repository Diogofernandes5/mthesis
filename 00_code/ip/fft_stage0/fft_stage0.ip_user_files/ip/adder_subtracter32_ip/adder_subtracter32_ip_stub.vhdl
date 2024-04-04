-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Feb 27 14:11:23 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top adder_subtracter32_ip -prefix
--               adder_subtracter32_ip_ adder_subtracter32_ip_stub.vhdl
-- Design      : adder_subtracter32_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtracter32_ip is
  Port ( 
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_in : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    v : out STD_LOGIC
  );

end adder_subtracter32_ip;

architecture stub of adder_subtracter32_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "x[31:0],y[31:0],c_in,r[31:0],v";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adder_subtracter32,Vivado 2021.1";
begin
end;
