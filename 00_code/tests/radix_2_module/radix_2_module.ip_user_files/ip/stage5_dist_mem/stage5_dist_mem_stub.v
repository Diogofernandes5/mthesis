// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Mar 27 14:47:09 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/stage5_dist_mem/stage5_dist_mem_stub.v
// Design      : stage5_dist_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *)
module stage5_dist_mem(a, clk, spo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],clk,spo[27:0]" */;
  input [4:0]a;
  input clk;
  output [27:0]spo;
endmodule
