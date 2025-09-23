// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Sep 11 16:39:13 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/TFX_Core_2/src/input_data_bram/input_data_bram_sim_netlist.v
// Design      : input_data_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "input_data_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module input_data_bram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_INIT_FILE = "input_data_bram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  input_data_bram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19680)
`pragma protect data_block
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
qgT+ApwSpxRLkPEP//y6
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
