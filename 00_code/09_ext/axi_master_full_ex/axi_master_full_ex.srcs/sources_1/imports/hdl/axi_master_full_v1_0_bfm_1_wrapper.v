//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Thu Mar 27 15:25:12 2025
//Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target axi_master_full_v1_0_bfm_1_wrapper.bd
//Design      : axi_master_full_v1_0_bfm_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_master_full_v1_0_bfm_1_wrapper
   (ACLK,
    ARESETN,
    M_AXI_ERROR,
    M_AXI_INIT_AXI_TXN,
    M_AXI_TXN_DONE,
    tx_done_intr);
  input ACLK;
  input ARESETN;
  output M_AXI_ERROR;
  input M_AXI_INIT_AXI_TXN;
  output M_AXI_TXN_DONE;
  output tx_done_intr;

  wire ACLK;
  wire ARESETN;
  wire M_AXI_ERROR;
  wire M_AXI_INIT_AXI_TXN;
  wire M_AXI_TXN_DONE;
  wire tx_done_intr;

  axi_master_full_v1_0_bfm_1 axi_master_full_v1_0_bfm_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_AXI_ERROR(M_AXI_ERROR),
        .M_AXI_INIT_AXI_TXN(M_AXI_INIT_AXI_TXN),
        .M_AXI_TXN_DONE(M_AXI_TXN_DONE),
        .tx_done_intr(tx_done_intr));
endmodule
