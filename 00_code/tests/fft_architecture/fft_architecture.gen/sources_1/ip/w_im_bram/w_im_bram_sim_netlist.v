// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Nov  4 23:54:01 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [2:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [13:0]douta;

  wire [2:0]addra;
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
  wire [2:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "3" *) 
  (* C_ADDRB_WIDTH = "3" *) 
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
  (* C_READ_DEPTH_A = "8" *) 
  (* C_READ_DEPTH_B = "8" *) 
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
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "8" *) 
  (* C_WRITE_DEPTH_B = "8" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  w_im_bram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[2:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[2:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19280)
`pragma protect data_block
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
OpJdz8ynZsYtG+Qh97M=
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
