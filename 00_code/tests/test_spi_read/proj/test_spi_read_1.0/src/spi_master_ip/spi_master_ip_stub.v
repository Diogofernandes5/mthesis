// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jan 31 18:26:22 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top spi_master_ip -prefix
//               spi_master_ip_ spi_master_ip_stub.v
// Design      : spi_master_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPI_Master_With_Single_CS,Vivado 2021.1" *)
module spi_master_ip(rstn_i, clk_i, TX_count_i, TX_byte_i, TX_DV_i, 
  TX_ready_o, RX_count_o, RX_DV_o, RX_byte_o, SPI_clk_o, SPI_MISO_i, SPI_MOSI_o, SPI_CS_o)
/* synthesis syn_black_box black_box_pad_pin="rstn_i,clk_i,TX_count_i[3:0],TX_byte_i[7:0],TX_DV_i,TX_ready_o,RX_count_o[3:0],RX_DV_o,RX_byte_o[7:0],SPI_clk_o,SPI_MISO_i,SPI_MOSI_o,SPI_CS_o" */;
  input rstn_i;
  input clk_i;
  input [3:0]TX_count_i;
  input [7:0]TX_byte_i;
  input TX_DV_i;
  output TX_ready_o;
  output [3:0]RX_count_o;
  output RX_DV_o;
  output [7:0]RX_byte_o;
  output SPI_clk_o;
  input SPI_MISO_i;
  output SPI_MOSI_o;
  output SPI_CS_o;
endmodule
