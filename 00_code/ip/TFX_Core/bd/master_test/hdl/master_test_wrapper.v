//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Mon Jun 16 16:30:59 2025
//Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target master_test_wrapper.bd
//Design      : master_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module master_test_wrapper
   (ACLK,
    ARESETN,
    cwt_done_o,
    start_i);
  input ACLK;
  input ARESETN;
  output cwt_done_o;
  input start_i;

  wire ACLK;
  wire ARESETN;
  wire cwt_done_o;
  wire start_i;

  master_test master_test_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .cwt_done_o(cwt_done_o),
        .start_i(start_i));
endmodule
