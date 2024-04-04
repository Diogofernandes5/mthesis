// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Apr  3 12:00:40 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/fft/data_path/data_path.gen/sources_1/ip/bram_results/bram_results_sim_netlist.v
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
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22656)
`pragma protect data_block
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
0fYRl1Qj/VgquNMZw359fq8iggx1wZkpzscU
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
