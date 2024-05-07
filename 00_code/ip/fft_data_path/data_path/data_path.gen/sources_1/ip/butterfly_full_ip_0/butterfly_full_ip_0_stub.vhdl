-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  9 17:37:20 2024
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fernandes/thesis/00_code/ip/fft_data_path/data_path/data_path.gen/sources_1/ip/butterfly_full_ip_0/butterfly_full_ip_0_stub.vhdl
-- Design      : butterfly_full_ip_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity butterfly_full_ip_0 is
  Port ( 
    clk : in STD_LOGIC;
    CE : in STD_LOGIC;
    x0_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x0_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x1_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    w_re_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    w_im_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    X0_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X0_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X1_re_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    X1_im_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end butterfly_full_ip_0;

architecture stub of butterfly_full_ip_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,CE,x0_re_i[31:0],x0_im_i[31:0],x1_re_i[31:0],x1_im_i[31:0],w_re_i[31:0],w_im_i[31:0],X0_re_o[31:0],X0_im_o[31:0],X1_re_o[31:0],X1_im_o[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "butterfly_full,Vivado 2021.1";
begin
end;
