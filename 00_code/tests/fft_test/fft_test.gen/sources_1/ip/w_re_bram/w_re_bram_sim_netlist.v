// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Nov 10 01:38:05 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/fft_test/fft_test.gen/sources_1/ip/w_re_bram/w_re_bram_sim_netlist.v
// Design      : w_re_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "w_re_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module w_re_bram
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
  (* C_INIT_FILE = "w_re_bram.mem" *) 
  (* C_INIT_FILE_NAME = "w_re_bram.mif" *) 
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
  w_re_bram_blk_mem_gen_v8_4_4 U0
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
