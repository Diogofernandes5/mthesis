// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Nov 11 18:10:14 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/fft_test/fft_test.gen/sources_1/ip/w_im_bram/w_im_bram_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [13:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [13:0]douta;
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
  wire [13:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.6264 mW" *) 
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
  (* C_READ_WIDTH_A = "14" *) 
  (* C_READ_WIDTH_B = "14" *) 
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
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[13:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[13:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19696)
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
