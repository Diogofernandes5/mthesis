// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Jun  9 19:19:42 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_1.0/src/brom_vals/brom_vals_sim_netlist.v
// Design      : brom_vals
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brom_vals,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module brom_vals
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "brom_vals.mem" *) 
  (* C_INIT_FILE_NAME = "brom_vals.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  brom_vals_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18864)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
