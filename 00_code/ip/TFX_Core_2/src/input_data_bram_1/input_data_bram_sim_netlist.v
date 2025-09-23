// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Sep 11 16:58:24 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/TFX_Core_2/src/input_data_bram_1/input_data_bram_sim_netlist.v
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
2E3jVrufeRcDT51Esp7j
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
