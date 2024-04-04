-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Thu Apr  4 14:44:29 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fernandes/thesis/00_code/ip/fft/stage1/stage1.gen/sources_1/ip/fft_control_unit/fft_control_unit_stub.vhdl
-- Design      : fft_control_unit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fft_control_unit is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    start_i : in STD_LOGIC;
    src_sel_o : out STD_LOGIC;
    fft_ready_o : out STD_LOGIC;
    bram_we_o : out STD_LOGIC;
    bf_ce_o : out STD_LOGIC;
    bram_addr_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    twiddle_addr_o : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end fft_control_unit;

architecture stub of fft_control_unit is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,start_i,src_sel_o,fft_ready_o,bram_we_o,bf_ce_o,bram_addr_o[8:0],twiddle_addr_o[8:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "control_unit,Vivado 2021.1";
begin
end;
