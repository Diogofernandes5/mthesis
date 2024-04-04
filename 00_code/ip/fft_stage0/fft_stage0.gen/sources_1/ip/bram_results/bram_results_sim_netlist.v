// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Mar 12 10:57:11 2024
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
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [8:0]addra;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_INIT_FILE = "bram_results.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
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
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bram_results_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19504)
`pragma protect data_block
54wOmS8k341cRnGkM4JY/2jEwDN1jsVbXEza21AXaZVueBTphcvXQZCW7M2seF30pzuQ75i70mwn
Bl53VjP7SsICPeK7uIFkwWHcpm9XwSG35koGvGVO86QfYx4xZFsbc9THHQNwdkvB7O5hpjBzJtHr
tcHy/091UIEGvpMYLtsnI1jVUKLXQLpCBW+QkWCDOkzyjkoHLI/MTj/meS3yyJ/57hJNrIni4o/F
yD06HH3rDXlwhEyxHjvIeucEQULRS45l6XOL8PE2mLBljr4pmLSVrIYVHft8xq7FnJJIj57tWVYr
ubrSepZUygGoJFgEcsvJ53VOkuG+KnxAHaA4L02trECUG80rX9EnkzLRT7gjg3RE5FkpbohDfVp7
EDD4qWondNMCy9i1xrc8XGsvm26+t/QmkWOGSg19nM3D2RxBZrW5Krhbu2nn1i5cBtPlDNp43fzU
FBlwQaP2cNXVohvMIslzenQ/xhhgb94IzO5ss1xfZ69nFxpO/+kFoHZxdjSHvMX64Ad91kjEAFZw
R6Ei3OS4Lr6f5Qs1id2lAxma9dpwNNhJiWJyJlyySKMFbJceSlQ0HFmrb742jEpnzGXsUi0qur15
lMUw+iu3WVd+Sak1AVx82+xYtkSHQijlLAEt5PdRkHO8iz+LBSks33oiKZ16TS09ibXDUhsOLS3P
43Ut/Pop0+SPB15mmkLeo0JyMhqAEsZfYtwMtgUBcWBYU7P4E+vQF+E4Xi41fYlH07AUvye2td6z
1Cer4YDW6WfkTYflSpQZq5/kwfuSgBPdo41oyISNzyU9QgA4Vi9poNyv8HLGQtmlAqAD2JMXsEc2
JofcjkkGXofx29aMj8AQ5pRWfrTjYbty9mgWMRxQUWJxsRCC/0Ga5OlKiwiU9Q5PpPc36eFWpOEX
Y4teotYqqFEvI0kNrvMUsEhr9pSX1b5ar+HrY1+GXFEyl28SUI4ZD/Tjd9eoefiYtWO5emQMxpi4
BkfomOPQoMIahZaLqEgZpgffpuNQQEr+kS41WDoK9ZviXGilBZjV0qyIogok6Ao9hPPxBqsL5n0e
yiGutGdjd+EqkLdTpDYJaPgbT8mMYoy2SsVEt6VsjIrDCmZpFk3p9R8GmZs9ITWftjL4OBziL0A8
pm0Bf758oMnDFNugidnnz3DqY0DYByo90WhZTtDDsFNQzy3ifpJcK2sd7PLmiWPYwjnYfICx9dWV
IF79LGLR+Y68R8cYUPLQ/yHltu3cnzi6REcJECknTMZOkzi8TkDi23ZqJm0w6TsDlZ7rTp/Q7qu3
uqnQjIvJ0RDCPKMu/Q23ue4AP5MAU+edP8hRN9CW4K7hNuSbD1rOL6Af/4hW/3oLDiLrcmC4ikPK
o8D0v1EXVjP9S8CXFdxiIXAhJifeShKZ4yOCIfYofbuLYzhN5duXqkdtFWTgK61YTA8czxGbIScA
1VrygXID+c9Y+OXIEZasfpZjpRbimwA9Y3kLfqMVCzX5KVcY2s2VzIzRzst3KBdFbALDwJ+wCCVI
UWPnBPR2WbJ08UQi1Z+fNzqqYaIY1/+oIKKWskBlWpj4ohAQTJzsx6zmK3JzRrJZ2Si36rawJhwu
2ujGIZwINztxepRniaq9PvmxIXVswRVFTPDt4l3O/txfWKVYu6AnLxqOlp0nSFW1wzBYhYUz7SLd
VfPNzoIep5m88/hSxtiHslDoFJsb/8DRlennOmotv3rH4FQVO6MzmYhJ7ILWD+VMZuu0TzAU3kya
xNC+QqZBW4RFSslqBPQaK+zjJW4gU+AY0MqT0Vx/7S/B2xTQDzvnkwzkCkO7X5Z4PqFVxvjLpN2V
2m1e6RE4cUzJ814xZ7mYMhKv7eWUnd6Mb3y0yvl8CE5kbHnZnzy9eEFmIqAYB9bBS9Xo2bDjM4bC
lcCfZqEJE+4w2f5zB9XGWmMgUW69pCs02s/FVnEFT1szrZQUqj5z5DYPyPSI56yLdZVm96Ld/xvw
IFIWRl7FHRIT5mJebCFaFoGaEPDA5Vb+7U+APl4iOwwfc+xh0Iu/loi/ke6gj7rOEgbshO9yVvx3
6F0+vfQgfPamNB1WLy0JN16cNX5Rl/PUNPm3FsS2Gfc0YsnMbvTV3bqRWk3zCXis9s+roinKxIAB
hTr0MdFi0C/NkDzApDJH+eHlcgMgw1sEqAPEKAf9UqxJTF8tzMEAAE7Zdr4LJ9ut4x5pYtjMMbbh
CIVfxIyIqkiBSXIMznXfF3fNfFgjBZfBOtmWGgXEUOlA+Qi0Y64hAPFs0mJyTpC+RAetiVHfdNYz
Tu9vjF8qTQmSsGiWAxIa1CHoeujY8qqy12aFRLWrmK7KFw9NCxBB8R22iCEdRPvHGm2V2+ryGXKf
+964U6uDuLuR5OSXl5VVVAw7Uc/SboUihopE5fKdm/eyhLFQ1o8JhrhS6lxOjRPvi7XTOXJWmUoX
fTVlfyF6SqLweu3joL2jD7+gMnHOLgRuBURNtbyIvDJj21ec9knyIOXFNdr7cW9uQuITxf+oxVbR
8x1f9AKEFX4TzwO8sXD4mWUOzn0AACHwrHFCsjAbfyOppZtA+2WP28QM7CfnBMnyfzCIPDKnnmSB
xUHMLd05AcWn7K6idI4MiiFToEHoDAGUZru9Xg19c++VLWMBg6HIQpgI7Gsjz916Zm8mjhVNUmXO
PVUV3muvqzhUkh0fK68C8fmscxBCdDk1sZOUeW3EOj+nWsZcq+IS+eOQGTemz5IW6HpFh65l9fiN
IH5CpxF1aEAtpVJ5sXtSb74+YkeLC5OFhnsp6MNbDv97De5eMJQQvjxR8BPQ3+Ul+74yPhLXebLR
kVL2UaRvkOfxfuqWTB0hiJLIqK8E/sItxPim/1HSNi5bjmtp+e7piOS+2V24yAeGPZzz9qWtmkK2
eFDOrgsh5RLB7C38MVs2X4nys1zuT3HWfVTyNj+I66EFV2AWW5Cn4YN6rqD9GI7qbioFm7yHI/4k
gYlODhRLKoRNRPoAsmobN6+9THrq6gkHe2fqD6B4IRMPqPzt9daNwvgDGmjqJSIWh7qKK8oAkie+
UHVXhJuup3P4Jc1Iot883dm7BAcK4Ld0TrE5v9i/qtbZeAnt7lvr6cZoRprZjQj1IUcawLcHlrem
rtlT6ShZbm9wr2++nm5afbNqWIEaBY6RavvqwOO3hyYnJn/4rfBwq/fcrOqCUdwErY2KBqCid2Sn
Rqz79ybJEwR2ei2oyCCjqbIXj8aWK9B2Tqj2vSEEUxfNKqDTM0qC9hwIpOy/jFfuixwafqA5zKnq
qtvRAX2HC/6hAXYur4mAeipRwOxAsUuDNVQGZM33oDU6k1c1GvTeeaKaM31EfJOBvJRKD1uwE/LM
pLIiwRAoT44GEDed4JhK/reaLRliUwdDGhwuBGsR5olhX4pkxTR/994Rrh+UF8AgzVPBaB4lv0WA
SCjEdPmkBCcPH0XE1zU/HVhqfx5wYwKj2QMHrk7zJvoj8r7mhSlGt+jJn3VY2iRX0C8DS9qaIC9T
CEvioCZBqNs2RWczqRwtvUKQGJLxpmvJf0uDxbNT10aLzwsGTXsM+6TYckdGSL18zN5u2eNKhE2l
KfLFmIn87BZwo0HgXMICfiScA2eFa376aDWbMmYtQxsVyx0lXGWurhDdCZsEOgoMiYt2dKG41pav
zC4yCSlF5TN2EVI9J9A4sn5mi3geBx/s7ZvkG+VeA4a7nTGLrt8eKpAAPdWvz3Rt1er7k6q1SR1G
PcgWhAwHOqJZ2pmYwkyVPFJLXT+mOZmXMsWkxP7PKghCZ1LgzHriKUlluFyZjv6Ve9eGzwuqn804
PKyqqc5U1r4nqn42mNa9uxj/T1WKnuWQRB1wUyd2PD9srkmKA403pCE46QEh4ED4XIQCn/5p1hLr
kDBmfhtgK3B6QkVahbZ+RHPaoKFxTtmiSf0Ky19zaU8mwJFV96iag99g5DX53lY6KtManL1vhkBp
8E5pLWJIg0uIW27pKYq9vDJcd0XwtGU1nclX8jlkRv/kxNcvh61A2DCw1GVcoa2bG3yvWx37dam7
+ayO9HLZXsrE+Iyu0TpUWmoJQEhTaftkxLJHz+yEGWn01MQ6zmSA9cWnnV64rua0Tc+xrl3TedJv
vQNjd1b4p+yPH3JQ50g+8b9SvTg2s9o4he2ZbryziC3kuIwhfHoHql28u/g9woAvK2Q+59SuSHmp
ssit6tXP2QN/JKVv3LMKoe9LwGKSbFZHe4CQSBTHEvyhfuwEAltfgX+FC0qvmQn4V1Itez//SswD
8Z4o1Y0HPdwhXfb1tsoSOGBSRL+U2m8p7VeSOlD/YtOhu5tuIQY8y9o5jCMU9BArYtpTANCf+wE6
XJ8hT1eOzGTkFgyYAsRG2JgXWAUEako7asddkJ9zRWLwmNKri1DBSdn+yGwQo445qZgJM/xgHSiN
bu7VyCIJq4Q6Fzgq4Z7jbKp8xajv3rXKF7nIbtcaUDLONTOd2u/EdMPrTaC/aHDN6Ve2h8zVo43k
r6cdGUGKHZbGfDQq8OqEt4j4HgIRkTeoKM/XhMWbqkjEDPCqTz6cxzV96LC1jr4Qo+nE6lYImKYF
hIFxnsbp2FRYoWBS8V0hxA15+FBb/qppMvx4pqZ5fQ23ZWLFFksYnXSaCjJ61Mcv8yA9zlIFhve7
DK69PfbUV2wU/hJwheEziFhL/unqtwsdzf+8WY2HUGc6+OWGNmmgopNeKa7ANY6eGTnnJuGUmyOl
GIRjyuZNF9JCwS/JBfNbZ/Yy+BaI0WKHpkbVnRqLt+9wEPAWEe7hrxkdz5rGplKHAwGzxNkqfYf5
owiYOk5ycC+Y581HSZvZR51jfYn3i0lm81BxY4rpGwpu0d43SHY5C/VtFVIBQP41rpyYUX4laQ2V
DtJrDMR/pj50iaBJQMiIRRnrYJ7GTi+lAmKrkbap5gaGbuFO3bKUMnJsK4IQT3VdqGCaqYty/2Wy
zh3SmNw79Qh+mSTTRuUNKe3sQ1GIMNIWgYcbz3QPXOC9cR5b0qbTmloWsI9w4Kn4btwXHBbZeYk7
LLvpYZ5flgTRGiZqYU/IrtE43mpzwE6EUWZv71jySkpOG7x/zbTDQ3GmR0pM+vB0SBzrUhq9Purb
l2nnzu7Pqo7K7iSRXYMrmgW9Y8RaENQnBnYaEfEf3y49T1K4aCZaZGxWryGh8C42eNbHsx/WBSns
gxSyj8i3AsG4yEBQmJLTv+oPsdWaBwKn4ddeO4aNrmX03jjJb9hK5hFM+MUFc7CEJAgGQBSXMV/U
3CMlbTSKHX3Ins9oQquEKAi3rFbGwoQMjtD1vYIgbDDOsZLLc+UU9eiD42wYG95YE2NODUideuRv
XOSOieIPYVgfg73oglX30kaCjk2FkiHxVyKwx7sbI4+/OkUmuye6mTs5S8+kRm6Xi8JSruG2dQBg
Vd0yB322iTZ+kXIpLov5OuJ172r4SiQis+4e0nqjNOwYSAxwX7r+v6LGBrDWEuDRshM90uPMRTu8
VTx2exxfMo/l57Wzm8tZt1IUUSab0Kavp4wSMxrE0yHUdoF0jiuJIS0Czg3yflIeoXHnRytm1J+a
aEhfUouYqCZPRF1Aeam46rmOpQnHcwvSH2DTZi55sSnlD+qKdnDfNOY+qEP5GHkDnDU2cVQ+LlSn
SHc79IUq7VWA+CQ/cl12aFtxT16rRXRzqEW3csZgvmwU0HB6hKQpTdWHeeoSews6Aebu3voFvlX8
s85s1kIhHLTnPjObo5YwE1qmPivCcCK5v439LfD9GoqNKHiBMDxpuTf5T+b6Nuu8TOKIZbyhW5Gf
RlmLzPMD9pJ+ZbM65F4+H5bOBn9DZj4S/cz9fzFejfynEaEm3CQ80LKczp0xZkcnUQBfAileftpG
FEFndqualpvnztXPRLKFzf7B/9QGwaS8CcfkV/V/5BCKgIs3gqssstjteNZsA6Ik696Y/D6lFp27
UVtUv5pXiOWGYMUpUvMxxpFsBMkRn5zyiqLaUBVOfJd8VHDS76sDXHUgKLfJMBOydCHV8f4R833u
Hs1C+HR33MTlATMYAL7LKQK1V/k5/et6L0Dk16rJlH7sON74wR+vmw53jPizWXvbDHpncIQgFqQF
IY2eJg+MCbHML21CAxAm+5NDNJowV/2ceXzCGIwdkn+qPphWAD/cVeg+u0Uu9aId0f2vRjpqgspu
cSzmRNCAhNJSELRNjqzRkRSukcrqSPE6haZ/gWVPrNRBZKd0v8H6dNdo6JPiXeJb1HtFL9H6Lv3F
n6PNdqlBVdm7yb0KmAlQn1U2I44X4ZkoqwfzsK7aJEHDU92kfsCC3JR7izNwr7Npnlm+XoRncN4T
iN74vxFvdX+/PaDEdZOdMyItkQbyBFr4YmfaCwKrtupGnL15VmwcfdGhWCBT1aP4wFbBLbeI6x4S
SwHY8JVseqD5iIQrO6LCjUNRztI1nHTEvn5UgEkmX+s8aiIdTM4RAvW2U17JRgdHSPjyRgmUrBoc
n4uyeQN+FAUiCpWjcP9NeCzsBz5aeOE/OoC7z+8Jup+ZyTm4c9Ebvl0gv2c4j7E4JfgvwWnKTbtB
vQ+L450dmZU6bGRWOAY8Z2+ORGYpUG3/p0TwEO5MWMi16Sn/GO4h9B5e46M1r0oxkpm1ryqVf1m2
GPWAYtyCyCmqQ+8a1qV/9eAx6lr4sReGrTeNYALxz8fYc0dau7HoDUo08uJYYWcDSnsEeUQntCN9
rXemnyW4XxYD429tC5OH/7vROu0JlF9mUKUJzwVr5WKk/DoSG/DK+9ClhhNRoFQIcFsgCbEVjSEt
IyYU7MFNQTSda1x4/VdPYKNx2VEF9gvlbCGxwyDCVUWhPqaiMTUVH8Y1aa4/Lp1h2OEMxSGjHCJM
eua37gXdh52eHpjao49SB2+sEuxkMtxAY8h2pjjqQ1wn1FX6o7grXaXCMTVDtlOHzgJgBTTPXagB
VUEwq28788kI3aP8MPSAjMIGwDicats+ee25mL3nAJDmWu6zsCIfclL6L7/cXQ/HaQDMNXz4sY7N
T5vFaxHsKOLlKgftErl00IWb1bNaT5xQVdbTBIk0T5pAoFGYARPfVZkC2+Rk8akzFbgXo9LSi159
yMOdx23cHXBVOzrEQmcQouyKeV0SkwxBxEwtazNofeSZY5LuXsCUDVGJvG32bmuhPnGv1L+Pjt7+
49s29wx+rGL1rJTx84q2/1fpc6+zeMEgLKr48hwZ5HKdUfkeGc4aXoG63ZON8x6vMZDjgbkAVHDH
Ovih94lQDu2ON7srCgEE+tsx3hSEMMzfl6ABPCewS7vvCWdeaUfBP/OQ7ivmXvcpwpP6Ubl8FF6j
bQfurLAProLyVAjWvr5b4VvgK08f98OqR5VQKld0MQ/3CiUaBiz5wkEryOoGDMtbc9vQdMRaKexd
HXmgM+Ja8tWailq6Dg2HkVgCdXJO47lxv2PM3VH/ISKGjwxl5HGRSSG9IZnxROfZgUlbwsYDNk88
OEBp2O1nIaZ/ioBkJs9s9pqLI83oAhanOVmtG1W2kihdLr1Z97kFe1uszm8SO7sEphuDiznXGxbQ
qJJaQ7y5WYJsWN7JvyxYhiMemoRxX6mFNLFwkV4rlUit3771QvKKGUXE2r+aw9fFb9IM+nWXSEsO
0o3si8EGLpA0+2rdAhnpDap/5FVmLbMSUVaPo1PYWFv3UnST0uBMK4w5CuCKPdTUUGzUNHudF1Jx
40R2duz/MUoUlqhl7FQ6CQuFk9o9NiUbK0/nukbZ7SW7/nnH+QiMnCWJqFQcM+kpMeBKC50EVKT9
I8YBi/UaXNkzAUZwrGywaxWGY9XNguJLAuT5Ib2Kfx9gGsDHGPvIsDM6sn6iRHYqSVc64U/7lV6b
B7GuKpwRVtFQwHcmw3ZQHuPMBGj9lbmJ9h/5C9xqpoop9EtBQIqdQNRpwjiQrfVL2p9hsD0qbOGt
D+l1zM1suamLFFjiRMltwCFroIRfDyIgvIOp+El16ppaFvem+vWIupdddQ6oFPQky95SBtWSAlBQ
ie9VW+9VuQtke8jr25e7mG/R8HtZnJOpNCqLsrLln6buQXALpVUYCXidwz0QGaDabQxNW0GT/Pw5
PuDOZd65S6YQgg+Ut0Fb58IpLmgFBLnlZq3dVCoIal553LBTOwIo7c8m4jb4qXpJHRV4n67wxqAy
OHDG6cTJazfZAqErRFwTPZI0oPAYU7UidMexDK+tiaxkUqVQq94nvl77/yLWs8/doaSfukgF/iU7
bTwJif2RoRebB+yKFzhByLZueoa6uYuMDQvFImi84kxBqrLh8TsNtKnV89r6mclfOWC1uo/JyEbo
20yjP9OpbfHVXyJXg8m4UrXY1h8BDcnJRzBhU0+d9b1GpjWEerrJP2LTekdzrPZQXjZmhMdfkCvJ
lW3XJY8G4H+TmoMYkDxDYRTgXFRcB5UN0OdEGyojeVNI0Ufm6ZvBhsED0bpis7XllcoJdKR88blY
PVv9QqVHWfmKhnsgDM1Gq6pCRI6u7qmGf4o/xTCWUOSPndffeOKrPHA3Yi1xoKPk+uOqp1WAmXNA
E1hv4Vphw9G/tzQyUMswnyN8A9kwYIu+3d9cgwvSGe5sTgpQibSTy/26CAAuxwwRkq+piTUn/VUy
cjdAtIEtzUbNYf3wPx12kU7dQ4cBmAQ0kcnlFZYYWoGcm1IZ4S6j/pG5Wn08qcJBREswMPZypY/0
VapyIgckangE2ELhPIrQ0IJkxL43LFh+gEJiRs4C4n4W9xxOUERU2bHObMrh/NPfekWjZPPVF2gr
1sGr2rCWDJscRxBYrRBd//FG9eQaZFSge2UtjnmQ6Oxo/ZaPQ6vd+YnhvCMnU9B4E01gddyk2yVZ
YHHc/DEapCCUFJzJ9S0UCSHQGDgMLng+fhAgatfyMl18wzi280cYeY3uIPMXYXidoIFFykqGS3Ze
+owhFztv6ccwZupQJyE6qgGbwkhPrlvEZfmirvqPTpNqONzqPQ8JT/2BlrVyKkEkfYtiztcu3TxM
0MGfyKU1worAuCikMmOmtZEpMaatLg5EAXMPIZ+eL0lCXt6Gq718dIAvmsFbV0YhaRQWzlcv4oi6
MMSaMVJ/fRApLwlwVqiTkV1Zx2Sbt+36co5sn/M09jQ61HuLB0FaqNfhaWjHm7WtIKOCoJ3m72pX
jljFu2lk96w4mYnQrKYF1b9kUOLkHAU+jcrkjx5dk1N8Zb0WnuMiuaT9qIYoHFbSOVAtKhRM55Bo
0KGLo97j6dyeFqSHgS/QSyg1cKDEr1g6lvygIY3gLn0FIMN0zr2rlFGebaDlKofKVHL2rpruQlWK
TSawIspeUd5LD+RhktnkzwbkBvzo25eVmCpu7Kp8dr1tm9J5AowoatwwaW6Ui4Rs4N35ir/sB1Wq
QEfUoRXl+Wv8c0XSdwKb/g5wBHTC9O/2R++cwDJsWlqoqzL98jQQNG3fl7FXE33yDGbqWgCErdtk
3butaLKG/+t0BH9n82O6vNdLeYzCOKhc5z0eGsySD1CXhVUZfclR7rvDOPXkQ1WeKtlxFUbnrVy4
bT7ZVH5DpZQHGDJm3CkexHuSntBFyoMXoIM6OVIahVco+hKZLUIoBcShjKPig3VA2Q6hzuz3TIUt
V+MjGqHr6xUyfKXGcIKMQZicReqjHbSQYxlhd1Na2IJzzDXluvl/kXJP/DHwGbaLQHKL5jEvn5NR
vBlxlPjWbryYfmKfo/50haRfTXL74MhT8VAWoLANHCWzv3QeLyuxltE61rkWy4Bj2Z52+uRh0Dzf
E6DgO7czl0njrdNZNAlIsvMjE5TBPdiGEyVdJM+WDkCmTrcACWxEm3t9PRrKl6w0SWMsglNiRrl8
AK/hyxxS+thODheOFGFOoEtbM6deiYtsPmar98zLExNdxLOnuXj4jHDbsI71GM9PCun4jP6lzOi0
ausyW0pNWt3E3Xku2dm6UO1Y26koqZ9ZrT8I162no6IyyxNUuux7mM+o4jXpv/hM6yB0VCNdVye3
mcJr2BQUiOzsJMT/C0FiMWnEvJfiKhkqGXY8GizcGqw6B1o1OUQj38Ft1U+FUtvyAS7ov9z5KM+Y
dF0LTYPcQ4GwFOTwFXk7lv2ArEzgCfgWag2xnMJ3Y8QYqGPqZGsh4P2u6Wtw0cDBQm1mB6WCgUZf
KmNCzMaGvX5S4Kmyl9byXWv7Vo5lsFkrauNV5lMIM4H7IqB4uIaYUM9iY2ZTttMu3pxUA02D2scM
7ZudoIlEVMTSIzFxcXWs36z5RZ270CaqVbFerylQU8s8YIyIyfpmBS/T95Yv0u6I5iQg7HnonchA
HlF/zvqrqM5oz7pLwrql6GSKE9rDtaA97vUXeBrr/T0N7QtYGBUg+TwWMVnxMrAmYMentN7IC29j
XBBWBzXcehK8117vU9fwyw/dylKONwRmQz71yaJ3JIsNFnLugWVJQgTDQXbtdc+rAzXiebzf4Goj
mX1tglcYtYwRA9xi3w1vPqpqmuSd8Az5VtN7UrqT+NkVqpDCINClV9we+jTP1m/8c2yw84g58hIw
y4zCKwEoGBVJNn5siMQNHFHat1bjICQE7YEvrzPDxjbZ7hJRIqVzMW8UAqDemLFBqj5PgzKTxo1m
MGXpQT72h0buO9/f6cMoQ0KKECCh39TTkqHDGVOFj67cV0UvJ+qv6bkvNupfkC9HYFnD15aR3Gqq
8WJOvDqUqtYIUwxaVMo65Bi82FAPV509QHmPpvXEuUHVPnTJLa0bZ/f3Fhkh0RV2IeLna1KELDi3
/17NH3Y85xFDPt/Pr/GzkJqF90z+JNztt3Hr9ZcpRWOFyTs8MRl+OOYAGCqyO9SfsNXn1lMttvWQ
Us2WlfobmmFKgb005qxBjcFPgvrkHKU0XAs61Yo+mcAa5KQAyadd+aIklaL8KNwfXolrC/qqHYZe
45R7N6gQr2RTST0tAXQowwTFHW2NMgsgMRuePAalOVXRp3d7QM7gaj8YFEFASaMjuwuro1mVA94M
B1KfNbCC8wbC8Eiv1B8VZYni0Dwf3wKXc+C6EFlasm1BJ3juRe7YBCEk85MN6zbc5KHfb/akgkqQ
sN10F2rJS3AWgIXm9vftaUAuZXLB17pQLNtvogOsw8KSkJy9JN/k6UnUa/FaKGv5/SEsl+3b4hfX
28TMmXTolDD5LgeLm+EJO3u44ukJ6nWO0X9oWacCx5LGL08cktrtgzBytI2epBDNXZ0UdTjKf2QS
lnRM0ZJl+1mVEZ4ctBAseyzAZWD24lbXPLi4adNzFDgb7Ov9VaMRUnfJMJQxPg9o1+Qjw1qyRukQ
KlSt9lh8rZn0bFmKDvOCoQFxQz9rJGZpW1TGl62WSpEKraxy/aW6uwCyan/uz9+lTCAUXfVXBd0p
qs/OWMEgAeIo6UUXVvO4jZPP6SM+PKG8eYYBKY4iYzPUr88EJAkCQOs7Grep/debBWbXZQeLiN8J
DjHNjVcbNuHiSa40fwOpXDytd0TB2amwipwAcNd5z0qYsrqBxWswArc6zwNntvwALjmXwrXop60O
w5KE/aWOoddhGn8pfIxGH/gJXFKK0/9sb0cgUtLRkn4TSF94vTzZWrftjnB3cXyyzZxOiICdrzwX
Gvl6pVXCQmReVVmKUEmM2CnILRwGueEptaGbFTwoD0vE7ZcyGGxWaBJiXRvBAkze76VIgjfGkWcd
cWLE/nfLJhgB9Up+OBcVSkIB7gBexytZ0WW4VnjicPKp5w6XwGpGEL4n5+ebLuHPucqxJCBiFiLy
4CyAQ7LMjHzRiEJHKASMZL4QeircaJ2SvURe16/NNGmdNnZgToy2r2uN/lGyLeIcFSJHZVpibKwY
WMYIa764OwaI0eZvMXuQUifzr/L1gxkbbuAe2UfphY+tOegigDBrHE+Rq0hS4gjiGi82XNGjtFak
tZFbAwIlttzlfvPrl/b9c9Ev0xBdtJRgL1MNK7fUtPtkYUmo3I20U2wP67oE7ULBt23NgvhST/fq
8cDRwzd0wZmUlPQQNgySajDHPs7lCg9j2mqj/CpJBYO+sJ2SBgFc50SVJAa21f87hQEUsvDAjO7l
kumApHXoga8vvqerRLuYNMirg4vagdSQIbiEPkODQK6r/Ne1Z9kkE3tUF9/fa/ySyl2/GXQgRIP8
cVAyAUV05LwJTnDNuoEtHF3tQvKg/HJgi5wC++Uk27xuQAkPKAINOEqOZAIndskhY7zNep58HSBO
C6PnjwOr3Zubz2HTPKsB5w0ksSdg/AUAnD0epu2lZMurnSMQqSGHQQ55Ah8HEr1ykSl/k7tdkTrS
dfYjd23tM3Mnbx2Af1LWUUiT/vCD/D/6JOD/ufjC1X2Ujoo/3U1bRJqvOmb4ElhltuYICWEFLujp
nP93h1bYrq8kmFFaiOEi/vHq02sgkunJHBpsO/Jvs4CqTWdXydA4LpZowP+t7moeqKveHgmaHtq8
ycZxJR2zOuKPfaab+/cLQB4Lhoc7cyn04dqZUThpJFRK7GwXwX2oWMqu4dzxsFD0Ajq6dSwPCe3M
f1oSUzx8cGdrgS89CdAyshTUwNJ56asGMoYZvOjygwGWc6Ny3QI5z7ZHddL+3LmuBrt2JUfaSpU9
XKE5uVa29CdyQcQnOInjk2EibpbuddqtGDwFsFDoti3NTG3teMBggMTrQHcq7LxtG9YG5aqNbK4c
L124x7Km5d+Jv05zJday3UB945vcW61wGt6pKsL0QAlupb6pwuWbiA798ZesWp50vbI3vrrPFgsb
PS5vyIEqDQ85JmkH3PQWrYn1hxLPwqJianDju2BBfjVccUqnOySmnwahByT739p31Shsozhdnw74
3wYh1nW1YVz+tZut4gOyTklJBToHza5L//XASoXY/hyTHhtd1WQ5JM4PYs2XEUtCLuZF3MA88NZ+
OABvqPpkoYP5oTZvXczH45M8YuoBLYlRMEQEdc0nMOf3heSQGXgDLQPukHevOw2xbWnWNR8d9+iz
Ypfr52kmbVTPno/FRAMccukqxBQY0L8ZL+/WfPzXTdzQ5ofLeig0nOh5SP4jATuFOPnNG1UwVRR4
+iZZpT8FIQp+CtGFgByCt2ocknvfgGofRUHelw0ZVojntOGW4+KJx/Epe3g2Tocl200z9WXOmKei
VsRn76nvxMuhuCJQT0UXQ9woMZ/mXI+NBB4Uk3KZZP4PtsFGZSN/xY2M9SJ+cEExMAk6T9hk+eG8
c+Zx3lT2/JjKSFtrQ3ccsOg053bOBO29tViJOQ7PCHkoI+XefSfUvbpptYxUc/H8P6QGLqCMvxqB
I8cw72UNt3GZxz1c2Blh7w9jVp6bI5J8zUeBKYIovCWXC94HitZzHx8Uk6MDVN3MmruvJ4i2cb/I
NNzBEPYHi1eyxGj2U6IXlwhYP8ZsCBIlPEH9oYb0OsProvmCb9tVaDYxY9Gg9W0qYHQ0E1gekWPc
UfH1DGI1mGj30ESuz22j8c3oMYLtTeUs+dfpoxxs7KU7AisX5YZecgIfvjHSpdC1EFUsy/X39zfM
d2CK0agDNJ6qjyRZtaBYTxKMaKlroaViHExtRLZZuXvV74sgeNtpEh3pkEUiniw3Izf4p3Kh51bx
c77+8PYVhIe5lK3dA8j2cYmN91ZYXNupZIaC/8vLcFzr/HMIJeq7XaTsuidBsD/1l9IbZWknksFG
KoOZ9rnm79+NvDugAf4Lc1DCW09MREiujRi4kLp42OIFNF286gWvvqzrlSwwm+dGH9DJgw8XW9UP
LQn4InedODCCaZVWtQWW1ojqTpD/yJiKXndtCTvlK/iraykdURw5+DAJMYvxBgq7gQiXJvsSL4FQ
761fERR2uqslwzBMnvKkz39Kz5f+sIlpwncNwh7jnPr7Kdmh3TqzyJsO7ESLfpjEKUvG0bXGKPOv
Kv9sRlh0aFALa2nAhjzAZrqxabR0wxgyU7fj2GmDDlx7Zo86pvNVFU8CsmKKQMTAMJ8FmyVn00Zk
cbwea79NIygZbwrBzQIqTOvUeJVLPCwjwDVR1bCK+guOsygv78l3fewqxPbMkgKuxufkRVPp6IQ7
TkBbBsdUy6KXiI2olIo0Un12OwL7lqyXNOKYT9uAKYPW7liuSgeCaMoKRCE7hywBETqcNw0+9l3A
zfAKZ/HAr+7GUuFrOK7HphLm4hS9rCfqz2LmABd1DoiBofgdC0fOPJqwvsr6HjinocoinEqL8k6U
8l/DxKG2adU1h2YrSh3XTlmEH0cOmNkq+QKo4vF3tdRhMbiCL68TQ79qNuS2k5GgN0arMP2g91Zd
GK82k0IJvWRb8vatfWWArgNFdD7E4dQoXuExF7NGLzPLj+rb/rFIeXrXIPaSz0L++qhZ9aFADc2o
qza8tj6JuBnOC8fP3k0j1IDGNHxu5mD/1IVDirTOHaZz8aiEIkbMTerBGCWyRcWNdeNjX4alacyd
6gApaCyLeCLfQsz1aCRIRUV6/dUrYnb6YY08yNu5I5+3LWmBCBVcrA1/Bexd8TO5vBb1RLpH7JIx
3xkEmA4H2DjtarFSDgT8ZAFOWhFSVJ5p0C9pjawJf0U3wShcCc1N9xKTB1vqYiy/xNANhczre0tr
5KmQ4lD4Cst5ICZUVQA7IRFGeFxR/9g3N5TMnkECN76pDo6ND+/Elz7PpYQA/e29BmjNG0Kq8Zrv
6xf/jz6DGPL5nBcc1eA8meLKT/6a4sjDK9kN+TTaymrWjNKidQIFTWb3uJ8A4g/4D68HDQuAAMC9
58lipT1/r/DjrvIETJuNQJNSzaCdHO1/Lg6nVoYWoqCVxgRno4u+7L3wqN4SX75IeeK8j6UDpVPS
FaQqQc5EOT2MDufVLWqD8QTbIzC0mkmy1j+Mirxl/pCkKD2X3HlriN4ko+mqBmG3Z0meRqm0wZxZ
2ZlBEoNFBaUBrLdBZPUL/6tu7cZBjvEZeSfX2D1cE5lTfWTt2rlKcu2cu12MO3/tFttQyvAx+lN3
yLNmUHpMcmhW3MvLg8DOY79aYk6+FD4YVMxLg3MAD7pChXMySLbaOfCyHIveEi5ocTEcYCz1zkiG
Eo9fQLp/u72P6EhjSGtcMiX70xPDKb1RVqmayTgFWSTB0PbXKlYBbuMN+tOWWnlanEKVh78lqedo
6P8JDbjGhxR2CnhAJqXlmHFO309jG/73jgqsjyaUBnIreF2ByOkvzDcY+Z+6sxSA9slBUDYZjRfP
ZorBmLVmKE7okf6SIi566h5V5sgrV39q0XdbEEgLH273ZziDe2fP/2sAMPh8oU+I4wsk6QtlgI6S
kP/ZfjqU8EujxHKmmStcDUyX8ilkYcQ7Xw7rAxDZ0rD+lx2empgNYa6cRBUnZQxE2VFEEph6t4sU
6PVChR08x2vd/Sn+kapW0A6HDL55UJb9522j/lbOdGVQP90pHGjdOV5crOVkQE6Ri82mWrDJ5XWO
IU98CQqzJJXJEAPn4zK9woauVw6ghX9/c1chN6tQnHWWVcd8wFnaAsvw8FLDkwIQE24qVXI/nTkB
Yqj8o39mv/0cZr/omZXKjd+ETsi6rYcvQHfXHoICrzSzuw3J/D5I7+ZqN+A6smr+afxTUBGlqnRJ
5AhGXNvSllywxAAwW1wWKO/WaHPHLCUdd6jfMm53p9+iEwPh/ko8/Qi/gCdvfLZ1ukgy1ItDfsUJ
mC8VFjMZrpo8tBjO5u+GX8mUBwOZ48G1amofNz3VEcMAgj4bnTF6h5KlJn3MS/GPYGIp0UNb4OUz
7l3u+jKill/nnpBOiodPH+2P1tjrQGhhAGEiV1vLpWQ8JFMYfvuhnAtOLnXUe3le9vB+MJYvJFpe
I0PYfakoPliEtST5BVqnL7geDU+GbS+Vzxul33CvqbqiiJk74nLXBCtv33mrtn3UA4P57fv4L3sN
m1S2h6/aAdP9eSdbPAKqwWukVI6/U1xy/YQfdoDu1SliuiL8qKQu/IiYH7VgMLaEbryg7sksRAGl
/MqfreYM8BQEcs5GSphr5jHugLKPU0ZTmiuSdQCXkSgybkOM6ZFFeLwpovASB5enTIWVQfhsRCzs
gTX/z/TjbjJ4QrSEsrPE08yZqr11EUSgsS6wU5/HdoPF0yn8UjY82vDu1eRajb+ZQ7+R5dNWlZ37
L3x0AKSWi+dwx/NAx90MDAyg1EcYHuy2pgfh3JcpTy/6iK46VJJe7jWp0Oh261+zY30sULmCpIsh
EfotB3c0BHGxX3chv8whD2B2JKoCx/cJ3umC/6HMXVFS9cTiSSj6Crlir2p9H6f5/c3lnLCiFP7m
b79NOQtmxRGXYEYFXFpR3p/wzHZh1PMl+pA98afmtiWMgmLs6lvTPuX/Zx8pNJ1buQl4bLU/RRyi
aJlkCBf1K9VQWlGgZZg8tKBkfv78lGI8YB7YhktoU0j0Rcn/ulWVAcjfW7AnTXXF6W6ICJ0XBhGF
NaW0LR6EyBVFzwhlVIbOAhT7p392pLnM+NuLDhI0pr85gnY1CQ+3IgT2bFLNLf2TeO5oHYSD4lhs
/7CnydqCoP1njLJIh+B5stkLuhxGTEGn9MzlbEsIMo6HBKnJbpDOGb1ar7H+qP5UVtqSbCE8IuHE
6hd6GeYsNNnCmpVLsCBMB+uzfQ0StWVpFIG8UgGCQ7tQCoHDmp6kNMUoBrV88P5oO5P5yO6EYINH
D1Z8NCj5d2UzYwgFdwBieufAM0x0HBsXbbOCgKuL2/2pbwY0PeWXuFKClXKwEW+HOafc8v9D9rwg
CteerHFemq+A3ZQK47k6QFg9YS6DOYso6VO98QZS5kT1mZWglsTdbB13ndHpgZiij3bTevbAdkWU
HBlhwy4sMLGk8p3POw3FUvRM9cGhrqDz0Oivp3CiYLwoixgvpVPAcSMLPHkcTMt/cDkt0mlX0Z/l
jQOKjRx5Er/KO3ysPdspc8tO9luJpYtXpoB4G/MVdPGaZt7SLZxDfXjrvSWh6FJGORjDCdjVNWeo
HrIJFJ5+GkOaoJ4Kpuo/SFBaX7Ym0Ds0RJLn+Y6I/VmK9aX6rTJngI55Q/loMCktlov+pAmlRNzD
143ogRGF/MBlLW082Su761H85BqgxwE4IhzSGGJpPjkFwJrJX1Tkrp38Iaf2d7UZfpDplIQjG3Kl
pD69ZZ3d4yAdBcGcRecsS8HPRe1AqyEvblkz5jxDtj+nb87AHhsic+eCIg9oXw/OfMttq31mt8/1
dmyx+1dAnyd4sZop1ij0ZySe28TjPmnOFsgQC1Ckpc+94ZqDcMnzYX7+NkOpZD21Bqh9BiclqqN4
jz3DoLiVmspXDEzdfF8TJyGP5dOL3+ci1LkLuoNwfIwVB0F5j+yiVnJKDaKYZ7ZSb5sBezmTAxYV
0bmj7dCTjjM1iuZRUJn7PgMH7T4LMzP6EwrXp0DFEXNLNWIKe5DqV0ClpUcdnIa5+W4WuAXQB5px
GI1CiV6F8D/6BzcxfvJrlXOX/SGMmSmIUTeqMHHIjhYxgHXL0xwMUU2VYHHhbm7wr2jBDUEKh+hC
lO2fpXr2oLJc6gW5EszfqX5ij91FkB5ELfCAZg/1/VzBJV4NWZLfZVf0kdg6qLqTVSwM4r7tEtbx
XvGGCQ3WFxn4j/lq4f8/g7cJf/MQ7ippuQ+smIYIPaLKz8A3iFwNAt4uOeKulVPxjHhS6ikIv3Hs
opIL/u5YV5/8tSWWoBQkBKoKR5E2DZ1mvMG8VsGvLdA6eork7UH8R48/4+rNml65OO0S4aiUtQXi
b0mfQsPXQrekHl4fRm/wKzNV/PfmRbNahBwhP2F6QdNFqr6Dv63x4Sa5wKlsaNSMLEdQYzNDkTuR
c3m2XOUdBus1qaplP12MTNqq/k9X2lNTXSzXe2RcprDsC6E7c1duGj2q6BcSQ5ZnDjhhuHpgivbG
dJS2d0Y6XMu1dIKvaE7q9v4HWWtK374Lyqt1yOFwg/uvOfrQjJg0uoW/5Mv8DtWsbdFfT1YpmUNv
oO/ZMK/gNq8z9Lcff1VQYQP16CXYbZumiOrReqfaP68zXgMEvgkLmXRKF2PPHRRg27m5gwhfkT8k
+pc22JbxXhEKi6PPWjN5sWxqyk9lePQt1KZNR5QLmVZ+T3EHgeEsLUn9EtBOCJ1T7qoqRjQpyM71
oPBBsqlii+ldAxnMGLqm4b7w3dtNI4oCcxlke649isprMoWY6wicLupgBDhpK6kMaXwRyDBO0zj3
JqWyVFs4goOexE4zNPukHKqs+2fuzWQV31X/VEPaCWniFLT9uxW+YA53hp4+N+p6AdV+clVrLsko
ST+9QGSjikfwAdMOuX60Mh1VqUDYlsWWptCybm0/iUto9Iv1vCVdcWJAsKPjp2ITzuoW5TSUyB7A
gKcc+C+Lx9gErhltPuJ//DXTDQXp3V3yMb7zAhHJu/3JeJoqB/xB9xJD6d3UVsDLI4DZzNwgHx32
QGxqgbzlncuNsPRFUH45KFoSrHhNVMBjS1S31W8W1qeY+UtbCPLnLYxunUowSxD9P+c0SXpDjFY7
7hCZE0JPoukLIqPV7cmZ2kpxTyV5ILyI/ebB9VnrzBtdSBruvgcJl47i6JlK1lUs6UwIbzLbqRXm
Vz7ZbTtrNQnERLXh3jBFsov6s1dBo0nZl+WUugyI//kda9AdqOHt9LUMqCMnmhFyRavTJdwPorKE
x42DRAY1fXQfp0usD1lnUCVSz9yFol3XtOWhccqvU9yrpo/2OqGq+P9ND6RqBInQgmv0WhnP+lLq
SUt28WTTb+rnLsFoQegQAkbCnShJmePweXFRQowLCRiHlc94VzwaWio2unTEAzaVvYA5ThoQlsqn
aJUI2/fw2V8zLJfN4WOOLX89/hlhFd31xbpdsoBHjttah/5Bn6KxZILJyZlxuS5u6F0AYPb2tzkj
N7/q3VexRPzT2KmrUt002s0FzTLARZKaIIsF5bnEll/zy7RWnM1/0M0hJLtl6nF+4DFUB8WKZI3u
7sxPWG0mhT5hGMEvSI0ICNonDSb7NCXNG6JHeqC5hgao0QcTnFXyhknF/R6HAZ/AaVOq0ygFqGzM
eFo6YQiaNZYjec72/dHTP79jYUKCajDHD9n101QuYyGQFTT51XytT82YEPaoUQJOAkYQeLRVb4Ne
noeYmrkjbkCSWAPLNOybXrZnNx4g0HSsp1UvKdYR2+yzLoNungfiwmorlMk39bE9GFhXKNhpWuU6
69IyavSMrTCAccdgLhJjnnbzsFAkrc1XMSlixyAARLUlAPTtbcs6qDCkIyDNG8f1hhnPkh4Ovib7
5DxUbB/hbrOajpfDQ+h7JahYowNuTNYPC1Hxt2rObJU/kBlpqkIQd/gpSJHkErQp0LJVlZSBF9ek
ZnEOBv/rM55mzzIjbClfswZD/fcOolIEtvV1OXqW1Piq+1Uj8efpHlMllapQ3MWRiY0Ax+usYw6b
1qFLD5NM0l5rFwitTLRbAAbxpSrMgwsolhnHW4MLlZ+qxibHhGBcvrMEH6aNa1gMlgGN69Qx2E6Z
9m3OkahWNC3Cw0xQLm8AcVbjl9brbn/ZlWQj8JBfWdSP6awFBX90WjmItT9K4ZHABcV+c5xCZ8AD
1spu9CE+uUmL2vODXKwiFMyEVcw6csLbpao2906SqSF58+yYTQV0pCyCDe6hNoSfnY7hMP3QSC5x
cDDYDgeuffz5ZELOP28X0vIJOzqW3nhhSg8VbMS9h7NOfwpuJhA0FkXx9t3cCl1bb1E+WNsn2QUU
ds24lvevIk6nc65O5k23L5Divi/BHH9iYcQo/KsjhRVfuW0luv9grtwSl59uWkDFlVH7fb09e4O3
1jAjqzD+jO+qBL1Pm6c00owWGT71fM2jcybWFnPunPyV4aERw7Ln/1oU9W0mw4+cFIcWPG2Z14VR
EvhxaMMjNZIxEWYZHM/Cu7B86atthmh2/bj3V4AB87O2ThJSJmiafoG7CaXTh8rk2DbbStQ1CO1H
vdUEBXI4ON9K0zUVAmWUXbx29GWR+A+/K2PeIqWWmONC7BV5qixut6nwjRJH9WNTLY2Ub3HxXvj8
HIXqFpTeMGqSy5fLHnpexQZ0I7BtIr+VDVBzYThyNa6r+jCOHShYhtHfSCynOr740xbHJ+KH54SW
znaAWsCgMvXu/6SoRSQ3i5Hf5ESZYvh4m5UyoTVfGG3Xw5yi1Q0SoYEF4gnXgQFQvZWTQKwr0JQe
quNM3XmzXMt9qaUCTKAM1nRa3oyVZL6Mzf6Ac7VKipOo/dS8Fo+sB5Vgr6dkXm4dha/R08+CgvWB
hp2ENEnxqNHzyriubCY/C45wpCCt6ZBanLnizBCvbZ2evs8hWbAQFyh8Hj2BAkw3TImORyfd0fpV
g7noRe46LiMC77XclkcPdlm8wX/7qKotjT0AuZpmZzzOw3OJodxmrdi0TElzTuDT/X9OMTLOuiLR
fx1rYqylPt3P9K/7mL7I4RMc07cuEE8mQPfSXffwReMBTexhO6Zc+pJgqkdtAMdEvlsXbfoVEXj2
PDmVzYKG2A0REIWsmKOCkKPOvFldBS2axpDuPIfM8HIPOkZ21udYA8SlXvk+Zq0XIGbiz4AuPA3+
XK3cZSm7aFHhBxTfrhsLj1Q/PbjEImtFhmYrNPzTwc2zupc7//m/hBXCGrdmoync2rUOY2c3wGUK
jBuUINfxmooM8/hEFqgifL7+ShTVlY0P9pfqrjVAF9jFyKPCzzK9YxlaUhMhUwYugGaur2RNPDYP
3tc83NpZx5nVv1TmRhnBC1TuZZMlvWv1Vdgd8juzKudyMTdJZdtR34HQFg0tsWiOGYNcg1bojSOm
q2Fv8D0XHJqIGX3qSqE2UoD55QTFvPHXDn/o+iMkgKpXeenoacSAV8NaxvJhV2sqpmcZ/+D36vxs
Ki1gbSSs+rKIfnxGsFHgmv3Om0WCMicpOllgQu1uZuxU3QZcu9FgiFQ89Lw+ysMBi9MtuhrKg1vu
ymVxl5aClxIGULK0baXBrAlkruBQx/V1eiCcgJxagfc4p6qz0SCkpCEefZH25MS/QEUPLoz5thO0
u/41vZe7eIhfxHU8i4erfBA9UVuaJUOZhWVpauq8CXkQvBAmIOkUvVwDRQoxb0qyGFasT/8g8O6Z
gJivB4LX6sh4bwiCAZ0y8p5eJC53UHZnMNCU8zjzFeG+7aZA7izLeCMvEDdQsek7dMYd5FIiLtIf
C38TX6qXoMUwvku5lKPTPZiNQzw1ZWBLhNR7mEbxX+Nq+VGzrhkueNqlg0Lk/1dev+L6Kwy/kZDY
g1EKCYptRLVjLNf0ArzJnbZXpFuifToXjmw+ng9dGL56AxmDIVckO5sDlSKlPssdhJWO4hJ6w0n+
LZfsf7HEWWzVAazsqF8/MlQ/MEaSPEKMK2GsgKIJHSMnEP5YOaCI4W4HKWMjdMky6ikfwKypTY23
dvln2tCDWz9QfHhAEYQAQSebuGXCkxKgkm0aWElX/ov0x9Tg4zvz43CUcf5XXxk1Q27tCnpgKVvU
nANwyXCcPeqFE2oQcyVtBTgpLUTNhInOKBLW0C3cXTdEyc7XHMgx68nJ5HIoBW28exATT1HFP4aZ
KHTKPrnl4q2zEOLcWuFpZ3nKDqrcGqeu4Auh44Sq9XJUVPsjI3rGyOZ3M4zfd2w3wI/d7uFHyVtL
VAXDFMkHsSQr/OgFprCvpieBIhz6yWAmI0szLN8ab1KLoKXl8LEhfqdBMJ4C90S+3MA8K/i6Ms+J
7sN0tg89Ui6Fa770t2IYnEhc4FMbVJL7Scr7U+T3n42A+iolL0Hjv1XjELHgTIcuHV0lS6BIyKbb
XsbExwypzcuPm9h8g0/2KcqtGG0rfUfM4DfeMNpuzK1kKD8dkR6kYDwiDHygSgPV4fjUMxdAZ1B2
W00MYeOwQCMvzUaFfd5cCMfsX3So96WITmysoTPgM/1jpfw0AF/z1BrXIiEccLfOsXDTZXnYc0aC
tpGPLBt6L+L4SEAw+8nzOIw6dwcIzIOx/zDAPLr8WG8xlt2SQ5ZQczF7s06h1EBkvQ+HiW647G3P
n74WaVGPHQLf+QbWUGQrh581aohj4H7UL8UevpEnWCvUQ4njQXrGpXAHiLWm9WfohKoF37fKz4oN
MZyYQNazUhZyybTW1H3KEDnpyw64P6cZqx00xdWWYCnwq0xYQxi7nFc1QleDzMm53PGu2Zd+Zmno
CGWMJA0qyLocHVb/gjgCodsG1CHFpE4JoJl5GisAPZ2DG9+/3jhNDdlmvJJqsw7aNMoTTREWTruN
O82yTNX0mDRCtXZM6PQ5Os1iQrG2lrNaJ1/NOY4EpDUqFZHRTUSvYK2LGckegJmB11rrhRvfzKPP
AXEINyH4CWz1kYVTRAr3+Jga+zwZWcCfx9YAviGeq3Wq5xhhbJF4kyPO7brwzBH9d2BfSRC3/VRn
rzVo1GuZ/sBYgNPWCOggrYJ0+E88aCVuP0gDCbY/5ymrUm3YyOT/q4vOGndhfLP42Tfnj15YuUQT
An5hNw91pZMmx4m3FHmGy0HLRLFXnMIaa5CrvEzeETdL8CDC7i4f4DgrryJcCSUcqofzjkCEPOU7
qn/BvQmuhhxUs8MK/DROFPDwepB40CE3CkAaYwySI4Z8jur4NLkyXK9pMCtEN2c+4RWxqEHMtp0B
mX7B1NsOOMWBsL1mYSyO5HQH8yDRSsGtKdx8CSfSvbfqhMUTI1FAGH/YJ9jZV8vTHCecXqbeFh1x
Ss15Q0YWgrxvspV1gfOdpsij6t6eoc81uYq7ixbRZUq0DI5q4U1KdOOHG+CHruKD3lxTFbk+XwVV
TC64ckSPo0eBqBl2TMHrD3SsG64TF3xpVZenI61M8WFrcR79QzypVcvy6ROzk3nEJgutAowiDTqf
JG+88ld/V+9/CoC93n4+KisKYiPX3vJRD/E9v0hB+Ee/GDbgng4/z+WqX96j4/kgXH5+0f1L5+AD
uPqGZtwoLQQGMABV8RPhrcueXIk7wR7ImRBoaO+Sj0qNg/4FCjdxXwJRqgyHdhHyG1DWrGoliizK
7yWuP+/iy6wYD3hbuA4uyEjiCz5IaAfVeFEldhS5RPfnhiRVpw68oOJimwHibk0Q4sRL1HrCgzpo
JdTdX7+M89J19DxBoxXcH9/RWLED+hbEWGDaxKDvaGSf63QMelXXyyqiXEHi7SvjUMMZIIBpcixD
Chr71fPGGzfMIQ/9vaEeNGiPn2/DtmIVho1WyfQ3Ck6m7eGSDO61HonuEa1MdafYkoL4TblTgxLA
sB2Ohn0IJxhInuvBIY713YqW1AOLaUXu0A6dvjeypzDYuWzFExZMQ6exnNm/nDn91tMkVYm4/ztD
AIEPHZpnGqylp0IWv5PwtY5MCrqoWB7Tzrps0iUOWv1BkEt6OZXfRot1PndsLr96Y3CNMWpLA/Pm
qOpcA5OI+rpNmmTpuuXpjsPtf6/eIqvsXsU4sFRkfIHFvcbLnALPnCHuIcy+Z0Cv2j/2GHBlDLN+
/dgPauzOCg0fgbXktcSN8h+0RiuzTHunCRPQO+nSSRTifK76pbYF/FFlCH8Cb6txSt/+XZY4cwep
JTWjpaiYn1hyeBp5UKeDjH++O4y9fIgu234P3AVu7DZlEIMUpHRWXMVM388tqPndbqsabYbLZaXc
8JAkHSlYicms+OvQfHw+N4+EXDFlXMIuy6FO1X8x+WUY7nrrXRczkUimrr/H0O2tebMtNyhhlfXM
39PIhT9CZz11ymmQipxdtH/jbQfFfkRyH+SqzgxawLnL4ebaGR/ODB8pMUh1Nahn4FMjHW85kn+x
Lq4hfdHfnBA8iKMGX0079QIdZpwXCzJx8fZfGlIE2XCnO7sg5hrdcZz9h/p+hOMg4hUOESwP9mu1
atxcgGzd1PiQ6z5aruNkgNnZRwBqX4dOneNVocqK7hv1S2/SAhzbLRRsYDXu4AybH3p4uqxnuEPH
YwW1JcQTkxW25pFEbqSp76oSXPiAAGQhuL3M9O7zYwTH7Kf8XhQKoIxCJ9tqGX1LDpXoAz87y6EP
a1/l+Lp9xpODFojOjDonqr4rb5loZKVTra59PafdUa/HRzyTwIPhFYvpj+ZUEM7UaUdN8lvCITga
aZlv9Thg1czEmULnLjEhLmGIzMjO4rhhT4FzbF1css1c/l1BovrA5KcNG0Fg8vLLu+2Y1it2MW3f
iJBP1Z5gqnJSaZsZfYH/lExg3VclTg35J9049Ic4q1FXpRArGdC255CJsd35a4Sd+2agD9zKrHLb
Juv5s/AnZXxYC7O+gBTp68DcuKgIHzYbL1gAwv4IX5v9NJwOQ3lAMkslUcJ7c0ZMcrtwhu4qAX97
xLRNIexQ2RDfsvUyU1d7d8232wNiJG+WPEVS+PUa/PKYSc4dc4FIMUDqO/K8WPQVocPH6ESTwWR5
eQYyYBMvfg9D6O7uB6wPyERTC3FTIa/WpGQWKMDs6Lv9GY433y/9XtVyJ11LmI/ykjMj6qP6P3BG
Zx+BM9VVgg2hydA0fUr83kRB01jYKnuYS6SjN2AzywRDyk+5fP1lBThdGDnlpLfNmK9HfQrtqbfh
feNq7E6e/+Zac7/4gmUtmNAx7Dc+ZGaHPDDiiz+B5i99Xf80HI/c64y1Wqz3UuV8PAoKNv08yx2R
ke/y/KPJogAC8+bFbed7lq0tDLqvBXA23rldFqkY44SXh5RBSQNDcGpPm7En+PIdQvPb61rjzWsN
h4s0oFIhwTPpjwAZ2CA0x9/wSNeA9MYQrPNR9VIZsYIanmcKUocus5GHwsuDZ1lvoT/neGbsxRvX
JrXUW9bEyjCGW6PrVlsTXbEuIAaYAXtm7o3fyRIFw5eCQJapxzEwM86KnRTto4uLPwhWPdnWb8ev
McTdsLEX0cUMoCHKcJEy+siRAi2DzRVakZLOAlw8Dp5mW7LDUo73dxdip4S/6+snxk8guLFB6vcu
nTzd0bLF3r5fMAStPJB1ne2q4RxYgxWgLLRBi1jxJhMTkxd4Gvsn1DGV81kLcjYkymVnI1oqohKK
rae2PoUC1/RCuKw7qZ5YjZH8a41/EZTlWa6LO/sx6OhC9zV0O+Gdj0jk5+BXG0L9tj/Z4eb5kUry
R6qpRRxDcdtmGItiuRtMNJ7VsI0RLKLCkWmXXEuBcMXQH1KJfCLWNXiINYxwSTjzuCBr5IKKWv+z
DFKvNIBFO9D2mEZ+D14KohZhZ8SlqjLjTiaqMMIklVPGV9ItjP/uIoklVlVPjIyIdDCSU1Q2ZDd1
Ao4VEgpYBdudDAH0/xWxhLzlwSi2IDCu+03Tr+2aJpzr6xV1vOMfa4x8+/v9IBtVvgCZtastQL6D
/KMVL3z+XTDd6r8EHhPMolms7vHQRfRI0B+YfUmnO7Gt0BqMxkFaCyFov3dT41t6qheyNjva3j3R
Kl/m95l9mRT0K5DUZD7sCPQ0bSP5dxphNcdebaW5CSLqx7YhEyLtjBfa7AlcZNIOSmBi+qbjXbi3
7/DGWQvgzJ+hMkW5zSgtUpu9qJoZB57pachnvzT9oHXsXrFfN4Doh//D0mEjl8iTqQOo7aedeU63
zUrENYRlu+H9xJ9xj9GxCRTo5GGKd+GW/oytOLU9bIRTx9REFxrxJWT6v7npKb/0oB5eE5QqJ8+O
BupYQd3c+SySsoqMYQaYzab2/8FnnM9GW1QtlDGMvKZ3HnQ7TkkFhB4p+mPxWh6D8st96sRQuiCU
aVLM8hFnTTJUJvNWlPtJiGeBCW98BJEaGsJm5dBFPe6ZlrqN35N8bgoJnCWH4DwmvbY3k3bvOlkE
Qe25RqfZGoNdU8/soHyjliIh3mFSLk2MqerfG8kV6F/JubB8KW7mZSwxLxenZKANkAXqzMuk2DW1
XYmcFmfahPFCUsvvYaFdT5ufYjWCmpWynGs+QE0wdjC0qXjr4WIbPD4WaZdc6El6W53PA3sXSY1f
d5NqKptpmauvyNIroO2yZZabYfQnUgh6YGqsyiKS8p6sXQJCOykhEdi8myA3Sz7KXK2HEcX31KnL
mDSuAkwdx9ilIpeuEo0OOOqtQJ6azRUU65vkt3Y9tY5rHaoiv/Efymqnx4JUSQLBUxaJ7AVJl8/A
hzcSPWHc10UeLPTDLazPYFc6YgRhQ6MKEqJ7S6Bv5kwv+vIJ9D4a2p54yEcn/u1w1DwQ4wonhzR1
24SzB1kaHnuynw==
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
