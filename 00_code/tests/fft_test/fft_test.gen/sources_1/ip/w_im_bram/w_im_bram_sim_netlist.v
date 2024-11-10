// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Nov 10 01:38:05 2024
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
