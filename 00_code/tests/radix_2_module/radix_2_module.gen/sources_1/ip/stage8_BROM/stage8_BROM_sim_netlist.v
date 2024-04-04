// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar 28 12:16:00 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/stage8_BROM/stage8_BROM_sim_netlist.v
// Design      : stage8_BROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "stage8_BROM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module stage8_BROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [27:0]douta;

  wire [7:0]addra;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [27:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_INIT_FILE = "stage8_BROM.mem" *) 
  (* C_INIT_FILE_NAME = "stage8_BROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "28" *) 
  (* C_WRITE_WIDTH_B = "28" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  stage8_BROM_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19072)
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
