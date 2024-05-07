// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Apr 12 15:22:55 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/bram/bram_sim_netlist.v
// Design      : bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module bram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [1:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [1:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [1:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "2" *) 
  (* C_ADDRB_WIDTH = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "bram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4" *) 
  (* C_READ_DEPTH_B = "4" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "4" *) 
  (* C_WRITE_DEPTH_B = "4" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[1:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[1:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19216)
`pragma protect data_block
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
IXRd7uYC/A==
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
