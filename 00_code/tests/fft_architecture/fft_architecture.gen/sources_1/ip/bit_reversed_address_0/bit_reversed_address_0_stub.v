// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Oct 30 14:53:17 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top bit_reversed_address_0 -prefix
//               bit_reversed_address_0_ bit_reversed_address_0_stub.v
// Design      : bit_reversed_address_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bit_reversed_address,Vivado 2021.1" *)
module bit_reversed_address_0(index_i, reversed_o)
/* synthesis syn_black_box black_box_pad_pin="index_i[2:0],reversed_o[2:0]" */;
  input [2:0]index_i;
  output [2:0]reversed_o;
endmodule
