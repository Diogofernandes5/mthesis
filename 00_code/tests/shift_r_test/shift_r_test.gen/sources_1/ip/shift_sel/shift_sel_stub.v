// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Nov 10 00:28:52 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/tests/shift_r_test/shift_r_test.gen/sources_1/ip/shift_sel/shift_sel_stub.v
// Design      : shift_sel
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux2,Vivado 2021.1" *)
module shift_sel(d0, d1, s, y)
/* synthesis syn_black_box black_box_pad_pin="d0[31:0],d1[31:0],s,y[31:0]" */;
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;
endmodule
