// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri May  3 16:17:53 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [8:0]addra;
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
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22928)
`pragma protect data_block
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
/3+6czXHmXdtNGrSqdA=
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
