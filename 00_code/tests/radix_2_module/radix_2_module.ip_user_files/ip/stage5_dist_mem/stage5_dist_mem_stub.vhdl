-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Mar 27 14:47:09 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/stage5_dist_mem/stage5_dist_mem_stub.vhdl
-- Design      : stage5_dist_mem
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stage5_dist_mem is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 27 downto 0 )
  );

end stage5_dist_mem;

architecture stub of stage5_dist_mem is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[4:0],clk,spo[27:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2021.1";
begin
end;
