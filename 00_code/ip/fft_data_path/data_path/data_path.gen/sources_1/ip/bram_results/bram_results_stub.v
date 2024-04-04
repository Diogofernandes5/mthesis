// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Apr  3 12:00:40 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fernandes/thesis/00_code/fft/data_path/data_path.gen/sources_1/ip/bram_results/bram_results_stub.v
// Design      : bram_results
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *)
module bram_results(clka, rsta, wea, addra, dina, douta, rsta_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,wea[0:0],addra[8:0],dina[31:0],douta[31:0],rsta_busy" */;
  input clka;
  input rsta;
  input [0:0]wea;
  input [8:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  output rsta_busy;
endmodule
