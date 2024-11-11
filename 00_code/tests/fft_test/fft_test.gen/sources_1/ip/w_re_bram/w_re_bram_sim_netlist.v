// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Nov 11 18:10:14 2024
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
