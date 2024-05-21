// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue May 21 12:48:25 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/fft_architecture/fft_architecture.gen/sources_1/ip/w_im_bram/w_im_bram_sim_netlist.v
// Design      : w_im_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "w_im_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module w_im_bram
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [8:0]addra;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_INIT_FILE = "w_im_bram.mem" *) 
  (* C_INIT_FILE_NAME = "w_im_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  w_im_bram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
elArig==
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
