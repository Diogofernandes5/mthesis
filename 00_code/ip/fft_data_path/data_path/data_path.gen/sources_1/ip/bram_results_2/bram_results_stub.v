// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr 30 17:51:24 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top bram_results -prefix
//               bram_results_ bram_results_stub.v
// Design      : bram_results
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *)
module bram_results(clka, rsta, ena, wea, addra, dina, douta, rsta_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,wea[0:0],addra[1:0],dina[31:0],douta[31:0],rsta_busy" */;
  input clka;
  input rsta;
  input ena;
  input [0:0]wea;
  input [1:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  output rsta_busy;
endmodule
