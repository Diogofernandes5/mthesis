// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jun 27 11:44:31 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_1.0/src/acc_data_bram_2/acc_data_bram_sim_netlist.v
// Design      : acc_data_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "acc_data_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module acc_data_bram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [12:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [12:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [12:0]dina;
  wire [12:0]douta;
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
  wire [12:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.74805 mW" *) 
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
  (* C_INIT_FILE = "acc_data_bram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "13" *) 
  (* C_READ_WIDTH_B = "13" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "13" *) 
  (* C_WRITE_WIDTH_B = "13" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  acc_data_bram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[12:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[12:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20656)
`pragma protect data_block
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
UckU+h3Vhg0CO7b7/RyYmzGxPnZbUA==
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
