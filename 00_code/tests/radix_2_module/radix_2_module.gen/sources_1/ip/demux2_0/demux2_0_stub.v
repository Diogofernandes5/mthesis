// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar  7 17:54:35 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top demux2_0 -prefix
//               demux2_0_ demux2_0_stub.v
// Design      : demux2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "demux2,Vivado 2021.1" *)
module demux2_0(d, s, y0, y1)
/* synthesis syn_black_box black_box_pad_pin="d[31:0],s,y0[31:0],y1[31:0]" */;
  input [31:0]d;
  input s;
  output [31:0]y0;
  output [31:0]y1;
endmodule
