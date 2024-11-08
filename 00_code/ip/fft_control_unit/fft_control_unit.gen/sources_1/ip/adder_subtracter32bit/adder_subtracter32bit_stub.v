// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct 29 12:07:01 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/ip/fft_control_unit/fft_control_unit.gen/sources_1/ip/adder_subtracter32bit/adder_subtracter32bit_stub.v
// Design      : adder_subtracter32bit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adder_subtracter32,Vivado 2021.1" *)
module adder_subtracter32bit(x, y, c_in, r, v)
/* synthesis syn_black_box black_box_pad_pin="x[31:0],y[31:0],c_in,r[31:0],v" */;
  input [31:0]x;
  input [31:0]y;
  input c_in;
  output [31:0]r;
  output v;
endmodule
