-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  9 19:04:50 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fernandes/thesis/00_code/ip/fft/stage1/stage1.gen/sources_1/ip/fft_data_path/fft_data_path_stub.vhdl
-- Design      : fft_data_path
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fft_data_path is
  Port ( 
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

end fft_data_path;

architecture stub of fft_data_path is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,x0_re_i[31:0],x0_im_i[31:0],x1_re_i[31:0],x1_im_i[31:0],bram_addr_i[8:0],w[27:0],src_sel_i,fft_ready_i,start_i,bram_we_i,bf_ce_i,x0_re_o[31:0],x0_im_o[31:0],x1_re_o[31:0],x1_im_o[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_path,Vivado 2021.1";
begin
end;
