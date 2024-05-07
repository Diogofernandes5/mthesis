// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Apr 10 15:42:54 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/ip/fft/stage1/stage1.gen/sources_1/ip/fft_control_unit/fft_control_unit_stub.v
// Design      : fft_control_unit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "control_unit,Vivado 2021.1" *)
module fft_control_unit(clk, rstn, start_i, src_sel_o, fft_ready_o, 
  bram_we_o, bf_ce_o, bram_addr_o, twiddle_addr_o)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,start_i,src_sel_o,fft_ready_o,bram_we_o,bf_ce_o,bram_addr_o[8:0],twiddle_addr_o[8:0]" */;
  input clk;
  input rstn;
  input start_i;
  output src_sel_o;
  output fft_ready_o;
  output bram_we_o;
  output bf_ce_o;
  output [8:0]bram_addr_o;
  output [8:0]twiddle_addr_o;
endmodule
