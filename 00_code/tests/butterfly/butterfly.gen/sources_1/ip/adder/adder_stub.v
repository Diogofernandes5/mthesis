// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Feb 20 19:43:22 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top adder -prefix
//               adder_ adder_stub.v
// Design      : adder
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2021.1" *)
module adder(A, B, CLK, CE, C_OUT, S)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],CLK,CE,C_OUT,S[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input CE;
  output C_OUT;
  output [31:0]S;
endmodule
