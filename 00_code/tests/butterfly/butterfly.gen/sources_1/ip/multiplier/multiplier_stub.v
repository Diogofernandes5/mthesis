// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar  7 10:14:34 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/tests/butterfly/butterfly.gen/sources_1/ip/multiplier/multiplier_stub.v
// Design      : multiplier
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_17,Vivado 2021.1" *)
module multiplier(CLK, A, B, CE, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[31:0],B[31:0],CE,P[31:0]" */;
  input CLK;
  input [31:0]A;
  input [31:0]B;
  input CE;
  output [31:0]P;
endmodule
