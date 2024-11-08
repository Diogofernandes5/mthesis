// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Nov  7 16:24:32 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [13:0]douta;

  wire [4:0]addra;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  w_re_bram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
UnP4sSpvdDXQjSSY/WrXaRqR+hO73BTVokZYrA==
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
