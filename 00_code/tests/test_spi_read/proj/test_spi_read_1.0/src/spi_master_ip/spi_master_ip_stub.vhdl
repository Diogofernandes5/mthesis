-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jan 31 18:26:22 2025
-- Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top spi_master_ip -prefix
--               spi_master_ip_ spi_master_ip_stub.vhdl
-- Design      : spi_master_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity spi_master_ip is
  Port ( 
    rstn_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    TX_count_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TX_byte_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TX_DV_i : in STD_LOGIC;
    TX_ready_o : out STD_LOGIC;
    RX_count_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RX_DV_o : out STD_LOGIC;
    RX_byte_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SPI_clk_o : out STD_LOGIC;
    SPI_MISO_i : in STD_LOGIC;
    SPI_MOSI_o : out STD_LOGIC;
    SPI_CS_o : out STD_LOGIC
  );

end spi_master_ip;

architecture stub of spi_master_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rstn_i,clk_i,TX_count_i[3:0],TX_byte_i[7:0],TX_DV_i,TX_ready_o,RX_count_o[3:0],RX_DV_o,RX_byte_o[7:0],SPI_clk_o,SPI_MISO_i,SPI_MOSI_o,SPI_CS_o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SPI_Master_With_Single_CS,Vivado 2021.1";
begin
end;
