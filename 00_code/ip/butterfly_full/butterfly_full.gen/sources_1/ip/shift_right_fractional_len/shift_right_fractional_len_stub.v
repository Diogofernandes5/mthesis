// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Nov 10 00:56:38 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/ip/butterfly_full/butterfly_full.gen/sources_1/ip/shift_right_fractional_len/shift_right_fractional_len_stub.v
// Design      : shift_right_fractional_len
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "shift_right,Vivado 2021.1" *)
module shift_right_fractional_len(data_in, data_out)
/* synthesis syn_black_box black_box_pad_pin="data_in[31:0],data_out[31:0]" */;
  input [31:0]data_in;
  output [31:0]data_out;
endmodule
