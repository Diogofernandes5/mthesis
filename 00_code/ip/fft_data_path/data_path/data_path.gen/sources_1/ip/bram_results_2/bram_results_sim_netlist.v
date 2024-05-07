// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr 30 17:51:24 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bram_results -prefix
//               bram_results_ bram_results_sim_netlist.v
// Design      : bram_results
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_results,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module bram_results
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [1:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [1:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.386699 mW" *) 
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
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_results.mem" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bram_results_blk_mem_gen_v8_4_4 U0
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
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22432)
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
