//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Mon Jun  9 19:14:15 2025
//Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target TFX_Core_v1_0_bfm_1_wrapper.bd
//Design      : TFX_Core_v1_0_bfm_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TFX_Core_v1_0_bfm_1_wrapper
   (ACLK,
    ARESETN,
    
    txi_done_o,
    txo_done_o);
    
  input ACLK;
  input ARESETN;
  
  output txi_done_o;    
  output txo_done_o;

  wire ACLK;
  wire ARESETN;
  
  wire txi_done_o;    
  wire txo_done_o;
  
  master_test TFX_Core_v1_0_bfm_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        
        .txi_done_o(txi_done_o),
        .txo_done_o(txo_done_o));
        
endmodule
