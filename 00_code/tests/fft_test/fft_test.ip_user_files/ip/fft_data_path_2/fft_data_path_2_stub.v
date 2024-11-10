// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Nov 10 01:55:29 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/tests/fft_test/fft_test.gen/sources_1/ip/fft_data_path_2/fft_data_path_2_stub.v
// Design      : fft_data_path_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_path,Vivado 2021.1" *)
module fft_data_path_2(clk, rstn, x0_re_i, x0_im_i, x1_re_i, x1_im_i, 
  bram_addr_x0_i, bram_addr_x1_i, bram_x0_en_i, bram_x1_en_i, bram_x0_we_i, bram_x1_we_i, 
  src_sel_i, bf_ce_i, w, fft_ready_i, x0_re_o, x0_im_o, x1_re_o, x1_im_o, X0_re_bf, X0_im_bf, X1_re_bf, 
  X1_im_bf, x0_re_ram, x0_im_ram, x1_re_ram, x1_im_ram)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,x0_re_i[31:0],x0_im_i[31:0],x1_re_i[31:0],x1_im_i[31:0],bram_addr_x0_i[9:0],bram_addr_x1_i[9:0],bram_x0_en_i,bram_x1_en_i,bram_x0_we_i,bram_x1_we_i,src_sel_i,bf_ce_i,w[27:0],fft_ready_i,x0_re_o[31:0],x0_im_o[31:0],x1_re_o[31:0],x1_im_o[31:0],X0_re_bf[31:0],X0_im_bf[31:0],X1_re_bf[31:0],X1_im_bf[31:0],x0_re_ram[31:0],x0_im_ram[31:0],x1_re_ram[31:0],x1_im_ram[31:0]" */;
  input clk;
  input rstn;
  input [31:0]x0_re_i;
  input [31:0]x0_im_i;
  input [31:0]x1_re_i;
  input [31:0]x1_im_i;
  input [9:0]bram_addr_x0_i;
  input [9:0]bram_addr_x1_i;
  input bram_x0_en_i;
  input bram_x1_en_i;
  input bram_x0_we_i;
  input bram_x1_we_i;
  input src_sel_i;
  input bf_ce_i;
  input [27:0]w;
  input fft_ready_i;
  output [31:0]x0_re_o;
  output [31:0]x0_im_o;
  output [31:0]x1_re_o;
  output [31:0]x1_im_o;
  output [31:0]X0_re_bf;
  output [31:0]X0_im_bf;
  output [31:0]X1_re_bf;
  output [31:0]X1_im_bf;
  output [31:0]x0_re_ram;
  output [31:0]x0_im_ram;
  output [31:0]x1_re_ram;
  output [31:0]x1_im_ram;
endmodule
