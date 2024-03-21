// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Feb 16 11:21:11 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top adder_16 -prefix
//               adder_16_ adder_stub.v
// Design      : adder
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2021.1" *)
module adder_16(A, B, CLK, C_IN, CE, C_OUT, S)
/* synthesis syn_black_box black_box_pad_pin="A[15:0],B[15:0],CLK,C_IN,CE,C_OUT,S[15:0]" */;
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input C_IN;
  input CE;
  output C_OUT;
  output [15:0]S;
endmodule
