// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Mar 12 10:57:12 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/bram_results/bram_results_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19776)
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
