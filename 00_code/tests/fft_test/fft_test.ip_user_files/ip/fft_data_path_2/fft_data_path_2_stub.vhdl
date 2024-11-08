-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Thu Nov  7 16:20:30 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top fft_data_path_2 -prefix
--               fft_data_path_2_ fft_data_path_0_stub.vhdl
-- Design      : fft_data_path_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fft_data_path_2 is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    x0_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_x0_i : in STD_LOGIC_VECTOR ( 5 downto 0 );
    bram_addr_x1_i : in STD_LOGIC_VECTOR ( 5 downto 0 );
    bram_x0_en_i : in STD_LOGIC;
    bram_x1_en_i : in STD_LOGIC;
    bram_x0_we_i : in STD_LOGIC;
    bram_x1_we_i : in STD_LOGIC;
    src_sel_i : in STD_LOGIC;
    bf_ce_i : in STD_LOGIC;
    w : in STD_LOGIC_VECTOR ( 27 downto 0 );
    fft_ready_i : in STD_LOGIC;
    x0_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X0_re_bf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X0_im_bf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X1_re_bf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X1_im_bf : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_re_ram : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_ram : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_ram : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_ram : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end fft_data_path_2;

architecture stub of fft_data_path_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,x0_re_i[31:0],x0_im_i[31:0],x1_re_i[31:0],x1_im_i[31:0],bram_addr_x0_i[5:0],bram_addr_x1_i[5:0],bram_x0_en_i,bram_x1_en_i,bram_x0_we_i,bram_x1_we_i,src_sel_i,bf_ce_i,w[27:0],fft_ready_i,x0_re_o[31:0],x0_im_o[31:0],x1_re_o[31:0],x1_im_o[31:0],X0_re_bf[31:0],X0_im_bf[31:0],X1_re_bf[31:0],X1_im_bf[31:0],x0_re_ram[31:0],x0_im_ram[31:0],x1_re_ram[31:0],x1_im_ram[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_path,Vivado 2021.1";
begin
end;
