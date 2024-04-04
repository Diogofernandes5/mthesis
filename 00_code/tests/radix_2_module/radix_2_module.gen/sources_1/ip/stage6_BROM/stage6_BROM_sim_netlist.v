// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar 28 11:41:35 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/stage6_BROM/stage6_BROM_sim_netlist.v
// Design      : stage6_BROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "stage6_BROM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module stage6_BROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [27:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [27:0]douta;
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
  wire [27:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [27:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.2088 mW" *) 
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
  (* C_INIT_FILE = "stage6_BROM.mem" *) 
  (* C_INIT_FILE_NAME = "stage6_BROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "28" *) 
  (* C_READ_WIDTH_B = "28" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "28" *) 
  (* C_WRITE_WIDTH_B = "28" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  stage6_BROM_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[27:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[27:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
Uoxvng==
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
