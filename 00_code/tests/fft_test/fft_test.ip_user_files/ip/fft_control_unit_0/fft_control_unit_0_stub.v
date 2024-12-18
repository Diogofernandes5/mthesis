// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Dec 18 00:21:26 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/tests/fft_test/fft_test.gen/sources_1/ip/fft_control_unit_0_1/fft_control_unit_0_stub.v
// Design      : fft_control_unit_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "control_unit,Vivado 2021.1" *)
module fft_control_unit_0(clk, rstn, start_i, dl_busy_i, src_sel_o, 
  fft_ready_o, busy_o, bf_ce_o, bram_addr_x0_o, bram_addr_x1_o, bram_x0_we_o, bram_x1_we_o, 
  bram_x0_en_o, bram_x1_en_o, twiddle_addr_o, state, data_counter)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,start_i,dl_busy_i,src_sel_o,fft_ready_o,busy_o,bf_ce_o,bram_addr_x0_o[9:0],bram_addr_x1_o[9:0],bram_x0_we_o,bram_x1_we_o,bram_x0_en_o,bram_x1_en_o,twiddle_addr_o[8:0],state[3:0],data_counter[10:0]" */;
  input clk;
  input rstn;
  input start_i;
  input dl_busy_i;
  output src_sel_o;
  output fft_ready_o;
  output busy_o;
  output bf_ce_o;
  output [9:0]bram_addr_x0_o;
  output [9:0]bram_addr_x1_o;
  output bram_x0_we_o;
  output bram_x1_we_o;
  output bram_x0_en_o;
  output bram_x1_en_o;
  output [8:0]twiddle_addr_o;
  output [3:0]state;
  output [10:0]data_counter;
endmodule
