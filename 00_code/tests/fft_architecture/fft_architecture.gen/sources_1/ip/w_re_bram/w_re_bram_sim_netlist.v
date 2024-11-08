// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Nov  4 23:54:12 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/fft_architecture/fft_architecture.gen/sources_1/ip/w_re_bram/w_re_bram_sim_netlist.v
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
  (* C_INIT_FILE = "w_re_bram.mem" *) 
  (* C_INIT_FILE_NAME = "w_re_bram.mif" *) 
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
  w_re_bram_blk_mem_gen_v8_4_4 U0
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
Gri5XXVxDXlY+bEi3vE=
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
