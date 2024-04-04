// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Apr  4 15:03:28 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/ip/fft/stage1/stage1.gen/sources_1/ip/fft_data_path/fft_data_path_stub.v
// Design      : fft_data_path
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_path,Vivado 2021.1" *)
module fft_data_path(clk, rstn, x0_re_i, x0_im_i, x1_re_i, x1_im_i, 
  bram_addr_i, w, src_sel_i, fft_ready_i, start_i, bram_we_i, bf_ce_i, x0_re_o, x0_im_o, x1_re_o, 
  x1_im_o)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,x0_re_i[31:0],x0_im_i[31:0],x1_re_i[31:0],x1_im_i[31:0],bram_addr_i[8:0],w[27:0],src_sel_i,fft_ready_i,start_i,bram_we_i,bf_ce_i,x0_re_o[31:0],x0_im_o[31:0],x1_re_o[31:0],x1_im_o[31:0]" */;
  input clk;
  input rstn;
  input [31:0]x0_re_i;
  input [31:0]x0_im_i;
  input [31:0]x1_re_i;
  input [31:0]x1_im_i;
  input [8:0]bram_addr_i;
  input [27:0]w;
  input src_sel_i;
  input fft_ready_i;
  input start_i;
  input bram_we_i;
  input bf_ce_i;
  output [31:0]x0_re_o;
  output [31:0]x0_im_o;
  output [31:0]x1_re_o;
  output [31:0]x1_im_o;
endmodule
