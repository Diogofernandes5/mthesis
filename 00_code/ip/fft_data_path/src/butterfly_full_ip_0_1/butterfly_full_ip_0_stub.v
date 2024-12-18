// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec  3 12:01:49 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/ip/fft_data_path/src/butterfly_full_ip_0_1/butterfly_full_ip_0_stub.v
// Design      : butterfly_full_ip_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "butterfly_full,Vivado 2021.1" *)
module butterfly_full_ip_0(clk, rstn, CE, x0_re_i, x0_im_i, x1_re_i, x1_im_i, 
  w_re_i, w_im_i, X0_re_o, X0_im_o, X1_re_o, X1_im_o, x1_re_x_w_re_r, x1_im_x_w_im_r, 
  x1_re_x_w_im_r, x1_im_x_w_re_r, z_re_r, z_im_r, z_re, z_im, z_re_shifted, z_im_shifted)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,CE,x0_re_i[31:0],x0_im_i[31:0],x1_re_i[31:0],x1_im_i[31:0],w_re_i[31:0],w_im_i[31:0],X0_re_o[31:0],X0_im_o[31:0],X1_re_o[31:0],X1_im_o[31:0],x1_re_x_w_re_r[31:0],x1_im_x_w_im_r[31:0],x1_re_x_w_im_r[31:0],x1_im_x_w_re_r[31:0],z_re_r[31:0],z_im_r[31:0],z_re[31:0],z_im[31:0],z_re_shifted[31:0],z_im_shifted[31:0]" */;
  input clk;
  input rstn;
  input CE;
  input [31:0]x0_re_i;
  input [31:0]x0_im_i;
  input [31:0]x1_re_i;
  input [31:0]x1_im_i;
  input [31:0]w_re_i;
  input [31:0]w_im_i;
  output [31:0]X0_re_o;
  output [31:0]X0_im_o;
  output [31:0]X1_re_o;
  output [31:0]X1_im_o;
  output [31:0]x1_re_x_w_re_r;
  output [31:0]x1_im_x_w_im_r;
  output [31:0]x1_re_x_w_im_r;
  output [31:0]x1_im_x_w_re_r;
  output [31:0]z_re_r;
  output [31:0]z_im_r;
  output [31:0]z_re;
  output [31:0]z_im;
  output [31:0]z_re_shifted;
  output [31:0]z_im_shifted;
endmodule
