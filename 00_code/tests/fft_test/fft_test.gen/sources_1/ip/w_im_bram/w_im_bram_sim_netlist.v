// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Nov  7 16:21:40 2024
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
  (* C_INIT_FILE = "w_im_bram.mem" *) 
  (* C_INIT_FILE_NAME = "w_im_bram.mif" *) 
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
  w_im_bram_blk_mem_gen_v8_4_4 U0
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
+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
KlRA1UJIFxQKcwPvBddWcFOYtEyO+lBykWCjjQ==
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
