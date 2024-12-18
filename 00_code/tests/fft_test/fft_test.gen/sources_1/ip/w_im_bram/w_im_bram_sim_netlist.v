// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sat Dec  7 15:01:38 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top w_im_bram -prefix
//               w_im_bram_ w_im_bram_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19408)
`pragma protect data_block
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
vE+6jCIdywzBO9JBKqgzip4/NaKGM0XUfkibAQ==
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
