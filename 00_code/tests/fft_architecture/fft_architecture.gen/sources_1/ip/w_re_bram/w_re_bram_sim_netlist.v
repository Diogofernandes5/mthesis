// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue May 21 12:47:10 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/fft_architecture/fft_architecture.gen/sources_1/ip/w_re_bram/w_re_bram_sim_netlist.v
// Design      : w_re_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "w_re_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module w_re_bram
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [31:0]douta;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
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
  (* C_INIT_FILE = "w_re_bram.mem" *) 
  (* C_INIT_FILE_NAME = "w_re_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
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
  w_re_bram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
0CHYhknfCSQtznE1Ma5bJ4a4tdLkrE8ReIIloHzthIsmCgBahqk9A8dAGVq1X2ZcHUv8oJOwFgww
WrLZK1JGfpsB1IX4RXOWYCGBiYIJHGpr1orDzgd1muw4gFqspYkgGuf1i3cwMzHDixB475vOnkTd
jFhIX9MSHq8AuYGIz6eX4uvE9Y2f17o0lBDGF4ZBDVu3RBjDPmrNdEZY1LIrbZLMKeFLf2QY82XE
pBm/hE8rdsg3ahjkrPSk70kJJuypJlcivKNKleENfz2z/Fn6VxNxKTek0ohVLjKNprkyr5gmhlbW
CttHqn3mr3fG/kIy0hoI5W1y5KDT+GHHGUwUD+5Y+J9CxotwPrE2rfT5YSFZiTEzgvjU1Nugyo/V
6wC5P6cpzB+PJz77WH2S9BN+LxLI+dyhCPP9C65+JQx6NHi8hNfUc5qz+j4YFMRGYkErztRCvadk
z7zKCVU9WioMgEq/W+DjV/riyWmPmX6iH2ErcY6RyZCGPR3BnyKNFkPPjVnIje41DmzZowflac3T
xer7SDXNN5TE9P0s1Dl3F/6HLoYihSqdjf+vXy6rOwTj29dVMSi8K6/8PqYLVkHH6hOMthO4L9uf
DAC/pNaou0pdwP3mXDHDW4dVJt9DVQ4Ng8kGkOXUnZXJYfxEfGsWRuvRoO5ZXc8ZjNSxYsGbGOx9
EicdwK9yK/PGrHyXpPGJQQfiRGoatIglxFo3YpKV2ZReOOBhN7qp6P2PTo8C8K8mmKdzZ0noHdTS
t0Rr/HAK8wkpSkW40Sz/7igMkKJeo/1MB7/8jL868gRWia6hmjtc0a7z+Ol/in4FwBFslfIiVoRr
PIHBRzwTNgNn6B5DCqsxwyLwAyQLBaRstKIlKLMEeuRh4T38M5REPbo9O2JmhYYVQOU34FtU9uw5
aRXS4S+5NGRWEEV382+rz7kDzqloGIXewirZhb+sFOjrTK2jlx8lIR4JSDrpeIz1qsSWj0FrKfAy
vhkNKz3phOTlESF2JvkdCVEgOj7iv8/Z8vHs0jh3VUWv69b5Q1V6jkwEzqrAOQghrWr6wcHNXpUi
RnQAYLMgKpOvc0BI8VddR+JXgF8s64UYiSuIfcMwYbZKji8SNdKr7YnSFryeQlatgjKcjFe4ZF4i
9mtTFt7/j+j1Fcj3xoW/oramxd0NKfXMudGEgQKL2lZiz8V5NHvyQXMvEjFe3TvXfWVv9jCZWu9m
i8sPVgBKeUagg7ieC0PEjlfQdWkg222F0avj0C9x1BTCHynk6v5IPrSfkmj3+f24j4pWyhxpPN/Z
/CZLjhKErr6OSUrt2iNXQSW7rUIqw6Lz6sBr/lGCN745vSwHdK6j0V6Fkvbgv7XuJ7s4SL3qu8d0
ZeVG9AAtPdwbqKSbRbAGrXiPeEkb1nq/ne3LM/HU3atqNrmiAeGTUVYXx40VmEoqZqiojUE9kbnd
X+fOL+D4pa6e3pUokZ69EjNC+r7XnPWbuFfzNyk09np/1hokAY6tCHoi3ML+yZq4dqCJo9sjiEjN
4br2LuXp4auUJGU+ZQg1PF/eENK+nwwoqloGSbzemOAtJlOdFV3QcU+lSznbCufpU781rNrgMRTY
kX6UG2vYbraEL6yI/X1EyK45rhr0UR7MC1iwTd3CrYq+xkgklFmyBvRH7sPV6hNpOr6W8RTg27c+
o1JMz+yUP+g3LaSRXyfDOQNa1rhsCU5zZ5I0UOgeelg/ZaDJuJtBoN4UtnzNNrsTDIP7ad69X+tN
yapx1FNaS2RH0GBXHa8/0E29Ko03/3aejjnVaunY7/Mtld6J3xZpcENi0rkDo4XYEmCKmrW0HtlD
G1EscQ5lSbvpT39nfqumbJ1PejztyucMzIzqwgxO53Rj7RCr4xeQbQWXvTMStHcM6c7PJlSsCAuO
QesPKTf+oBsABL2ReP18fI6V7ew0oawijWSCm1/7+h8t1awuFdqdRh7OL0CkbGadAr5JFvpqLiG+
ySOssFMcLn6aQ8GH5p8VnN/PE4pezpSA9Wr/uIB1wLPms6NrtKPVgzcvv1ocAlfZsN76dRKawTqc
yZNbkLIINyKe68wbkxrQFS2mtJhp3hZvCSDoWVmrJb+U3keo/4NUisLDM8GTWXTHy4BKHG5Ns189
iS+0WuYVn7X7t1FOgTZEG/k4WRezlhwVx9YPwn1vtmOueT/EonACNgiCpXQM2HzIjKXkB/+4uKFm
EDE2E14jYiYg9aSg1gLg4VJ7cb4VSUrsZlXNh+p7lQ/eUg8ls8g6q/kiWslF5ixChmQhctifMhHN
MkSU2jihoj1SvI6irB+ntcPAXM1a6VihVjI95PON1PdP/4BkX+Yaci94HjprQdz/l7h5HjtR6RPC
H7sCA7duMLovJCkh1/2uinJ6imFV2iox4Wr2veZkz5/th6+Eo0ZMpmfIWsmncoI7EwN2EBtzcpsT
VfFXFarJ0gEJJJ5z7Z+LA11/cNUQFayCJKGLuwUlHdWQ8j1yNCh0MKiMN5jDleTJxGpE7PRb0kg8
CBL9ObFlJ3pBSePqEPx+4cbI6vpheKUAdjkgNIW2n/vqz0rkdHAoPm4IR7fJLbY2rIUtMP0K7fNQ
/s8r1y3e5tWGfn+Wej0pQ47SGYPNby7Mc7e5TWI/lijnX4lCbLJQ15lXXvdGMs2xnorvZVKeVT02
D3UxGWRLVTCJko+Ey1SnfD+UqiyDKuMBVIc3fLJdT4CLlH7AVyW8iE+5vurt3SCvhcDOG36Z5UVU
cxswA59nOobyVz2DImRPudGToXn0JpFpCTb/+mWhKLSxGD48Bm2urOBlHsJ+fAqFmPgfheJZIAgg
qS9BuWLV8PFM5WRatS0MhAjysO2YBMwHQ0WhFb/c8U2cOsUevUFjwc/fbBPROANcLlpjnU//gemf
eFCgLlq/kQg1q4gx7Bpzff2UOhlQzNe54RY2cQ/QLIUN8I32Ye5mxeof3HwGAojfLZUKqLLQIVK3
KFVuKts2VJEJj2VDXh4tSXtSc8F/R1lOnLABmvDPL0XDdikiNi5YNsg8Bp2AJSnfHwfwMui/jfkx
VKgKB0/ZssAKDTNU8HzpAbEv+SL6D8C9/hZxFPDceVZlsKPCAXn34GcePZ+aJqXKmKAhy8DJM9zu
ngj8J5m9PT0ylogrydlo6GSvwAQGmtsqHuapvOqKI68oTaoYUKdQDrZkT9krb6ldrT7kStSjStyh
+HvErUqI4ebG189zdVgluhJAQA6yJ5K8qUGry5sWFpUDMgiSY6aiSJEYOm2SwlJz/WGghBuYwXVr
jQr1OXgf0sBN3Y7dqZdYpCkbv5vFnklEUal1IrNAMQ7aqCLDlgpGO0X5psxLLuPXe5F8rsJz3PxR
JwZaMgtGt14zMbhO5Z9TdxOOrTVSU9iw84fDQJRqRaXSQtsBrknkXqcg45+UQ01f5J15foVXVtBI
/hENk0YIkUzwD9RMjWFmHsEqqzsJ2Wi7x12u9C6hnFp+W+Rt7k2ZSYDHrTr8ZkzvI9OPHXKnrypN
XXR2R3AhpRAJhtVvQF2IuKLB5BS3JPtljbdvLCR8aAAEZ2SVjW/IKt6g5MlWFSVhblk9Hd9ql45s
geqrnYLw4eqvGrSSOMiWamgQexI/M4DOATBpQ8Ym1zZsT8m1M90nhw6J1mGZ/C05WwGpRTITroG7
doZtD0bGmfGeqUxyh6+1M5Wqlq8V8VwSoXBSoYTfCxtvsiEJXRvGsO/df3YQTzjSyceGbD4Lj2W3
LVObvRFAJTzQkFSoTnG6r008l311sjkCGqcLTHhS5xeIaRBzy1mQvOdEMwS/BCul7DIVf9xlP2kk
Zhc7TI1vUQJ+PFI2F0XlKCMQgUFn87eKUeydiY13bjxelIE1/lRA5Z4C8Ie8/QNEzQZRN5QzO8lU
0OckirI4cu9hg53w7KgUmouLoMoMGsCcV7s/IOpbMoehWqoYr60osc+7AFYYoZor2buxqYlkL7wP
Z8omGulU8TKJ5kRgdu9qA/FCQILxC1NrZhgBbVTSLQsoW7SwAdcDPYPGDskJVTmCEIZjYlHgdcwM
sA9yOQAsTILdzVUcAfNR4HfyTHNZ5VhLK1UPnp5n4QVHKf0HweOm2tA4JTsg2wYg6iJkdn3wMcqh
YTDTB4JPM4MXqskSTs2ujFbuD7LWV2ys28s23icoNjbPve8ZyKNfbL4dEK09iFUg+4UecJhnTVCZ
Z36GeMOZX/Chd+NRNlcAuO1ngZHR0dvIF2jdrhRvFjuK5RMMV9rTyjBI3tXXvT+o3kxMLGqdcopm
VKbQ/PYDuEwnJrXYYq26DM2k8Y8rZ5e2j6ClL6nOApGrLyebgQs8uHyPIuI4ZEYTwoJxbuSMH/Cg
jLqjv1WwTArCjRYjZkyzpkV4aaDmkjZCkREwtNiBKdjTl+4/VU7j6kjAlOxxUP6CYXb0N1mtiJPt
dznCUbYdAznfCHHqMcYHG4l1THjbDws4vtrFb0TH7OY1wRSMWaK5ROnnSJzzc9/uzGMNbrFjMlrF
Jn1d+DcIHtrCoCRRTvNnh6JRoZFu1bAOOzK9opeaSd1ovmepcDjnxY8Co/sSXmOfXjKYwqhVuI5I
lr4b87fNS4JBxX1rbySmo8DKRY9i1QKqKoRR9sCevg/X4+TihidBRUADg6VN5LYYr4igC12ueDDK
XRd7AJzd2SQED/91jSjTzg0b+e8XzfBhUCkdbcwEqOIChrZoc3XtI1L2adG+2K9yZ6vlz0Py0Wbt
vlkwsf/HFi+il56uOgVQAQTcMHZBlWFVHXeb/4+pJYGoRs/nwwSrkQ8t4LMkaUkJdywZbUIr6xWt
kOA0reZDjmTzdXWZW0KZLWvNHBnw5KxnAzUPpJ8GNeSH0GA78kSohRLWMpFZQD2Wza1EotscRcTv
04bZqCfCvdVszjn73CLFkhtxMT9rZNgIX+FityM341G8/ctCG57Dkce+f0rvftz6AK8H00ToFHN2
gF4pJwv1cytDyIkmqEbfsUhmoCmP0dKWqT+/z+MiHycMe3dYgDbNUj30KIZV6E1a00hb950ma7Rc
s9Sv98E0mCEcPw9bm9F5d1PbUS8EF/VPQaqgpHPlRZlXa1avPkhABFVlNCKcupGYJ8gy74X02pFP
Vy0vaTlhTjKIIStkLI+LCZQsj0IOBvXhIFDew4yqEA3tB7SHK9xMYHVk4W3G0iSgfwD7wNLLgGvB
ibimEsx6O9R/+YAoUC9itN3tBTw0RipIuBcAMXdPErxx5wiUwZ7d+8MB1Tws0YIlh1r0f4EbNic0
VkW0HPm5zBUcznm690rIRRjVPNEQYe6yv2zkI968u3JQ6Pbo5xn8334Vcc6+8i3e02cKxJo6x9rF
/M41AEoE/dY8lkBCpxohECeHuZIM27dwZvNpVwBtXVeNFOxww21uW/UiAmGPkAFG47gpJ5qjPCQT
ZiE2inATKDfsogRok+a04iIo4kevUCQeNy7pJQeTCW5mNtu5o0dRZBJ0EnRVQHL0bih+cZj4ocO/
PAuB6Vf49U33Q2tAZxLuSewatQQ8SOSMk1CmMxFGEow3mcMKjvFlVabtu72LBwFerxry3Ftdvbxx
5E+3Ju18dJ23tGfaPZZPA+NLjN5LN6oJBIs3zy18no0rrDr4ci3m1ytwINLrVsxLLLjvH0PgylhR
3SZVczxoqqydp0x4eQVi/TmH8SyWUg8bpQZPtJWvO+aAym8++ldn18U0nwmB8n+e0gB0ppR2pPCI
1nNsAlhaIa0BnRvhUfsBbuBYTIqtpt2o93hqc0atzFgJDY6hV+1HjrGLqwc/isE8uMxz6NnzjsBS
jW9PmT4MnEoY1o26fF7CBwSFBTr57A/RUds+lGMSrD2tZPSZcf6ZQ+knt/80cC+7rAq/IoE7lVmH
uFGDmWX/dej1eOlW/F4YKj1sd4g2HpvUns1DKNwipiRq72IXFoeLIAap0GTECup798KYzTTuDAVv
k0HJK8nRHQyxqpka7fuDs7eOoK/iaRghB+jB9WhGj4h1cGA8WK0LhJPNDtaC9R6q/1p0GJKi95nw
LR75h0ia4LiMTnRwCi8cQ0fwW2Y9xy9avp7jGvp9ZVxFMehUZUdeTreQI4U0krXd+GhJliTmL/XP
pwDX5Ak2ApqjO/U8EVWWwKyWA0BItjwexchQY5elqE2+5GI+3YeC37Ug6hkeDC7liPQKZoxLVU/R
G35/1xykezvGNgKHLpAPRU/KFn9WFTOi7icCJJBpQPx7YAHJCnaSRt/SLFPvOsFQlm8vTcm3uer3
KI8u34uunm2Ezf8tqaq7MkhWxSidN3XPI9JSowzuMpH6lvVPsMXq6psXxsnqv0plzNMruUfd6M5O
o/eKrSxek4dC0sl6z4YgQr3bfHUl8GRJwYnKUI1dMGQ14oWjJde2KHzKAutQXgcs/7OPcsXA3Jwk
PIZMlrUi6NSJQ4kXWvWbHVOD/ipUjD2EVheqjotegZCy+iLNzYYU5ITMGbyPMm+7pU0+AE7NrMKh
s0jhgmZXwg8fKc1ZN30oXN7CNXVFBwzpZRi1V+26Yf/Nj3rFVTjcdzkh1IACVhldMFIqN5yAOHhI
I+NSjLixiDsB8qDuOgePOdAh6hXwAwLoU4r6NhrZQvnLQdzEeriAZvP6rx/Lmfpj6QhWeBXfqd5L
0BPjqqRFyU6p5llLizUR+TJYLOgOhUYpP+kJUTXZGOAFTEe0BYuTSKnkCmz+3sTnPThO9Y6E1CBz
q7vlzIRTzD6YYHBohnmBFo6t09j5HAo44rvsCxiJmxuve5tgzu9d6RNlg800IPx6QzIy5th0nF0U
4cFgoJTEgQU8lyxSm/rP9H4K8KFXTfTn1kn7T2pjlJ3sEQzf4bnVHkgTHSnNV1iaiJROXhDUC2c5
F2Qxxcw/7xlj7DO99+/JnNr7YQdslB9vyenM3IYUBUoTUZCXdMaJAUJVFy1AW3e9YndpBFM/j7gH
L7ECIoAGXERo7kX/sUpU97NWju4X2nmC4pj4tJM3pOym8WlINacn1xs4QvCd+rKxke7cEDNvt/17
cHVDH8RxM2YAH6wjEej8KpZYCVmF/GaPRk/uHDaCgaEGGPd+uNSIU37/+ZwwUY8tj2W5SCzlDk1Z
A9VmZ7XYObD1B71TcEkG2+q+1jSZnPMBiRbNiVCnmOWjx+Vmh0XFjhf3OMM6a1iYHgh0kDDGh1g3
cXefLVlnIzgzUiKc8eIxbPU/m/361HwWq1FEB5Mc8WABNVZHIB9HftIF2EH7g5iNgOOVuj05yEn0
+gmND507ExuSRJf3CwWKvcwyvkwImOtPd9Upnk27KhAnl1aJdhrHnS7VVO6ySL1WZpD8CGJcmKT6
LX9h8/nArjF2/TIx6mHHd4IxditrnuTAbnA+1uTLE6SnnT+QbvoSO7i5WHcY4J6emw8WJ39Mdbc5
0K3hyk7eat68wWpj6WjBQKdp8Tj4DrK9CPCRp/MP0+bHCtSL20pLrwO9GorffaeD0W8Nshrl9KhM
7M3TJaMpAt6XxAkcGhJ8GmBWwwDrTGOX2di6kllkLXdSSjziXGV5hUFVnYS6zCaduWHXySe0QD3T
hoSqT4es2WYRHTXvrdVxxD1ECtFu6B6kKxxy8Ky/8jk7IGZipbO5pkErP6hrxp22TOXI+EPnJizi
EQNENLYGSaFm/RV++zIp/jlLvwahHWGBgc3np2JObEXO7VEZqyRYCsJM66054TSoJRBPBgmm9Y11
ysctEqA+nR8jeiRGxW7VVP8TjpxglT61P1M4hn2EKJ/7iplndaM1gJ1VjBjoEK2BkcvWIepAH9Zm
nda/uaxSj8zIdan8U0GMi0ksz00ncc4JLaWT9vRDPepmigS8Q+c87ZuEB6nSVk3l/n7nKGBZ6au6
Bja7OXBOXTgGyLLQhLiJEiQf4QVeHu9EFkY6ZZbWvW2a4kHDT5NofA9K6z6abgPvhkEBHpOytC9T
jp0w6bHtCmkI0isgiubFrz9Zd4xuDkGCZDN+bEsbfNwm/YQzr/qmw0VcOGhJbMQbwPDb2NRUHqH1
cWh0oHUbt9E1on3uI6jHtURlAa6REfVx/F01zCOsEreyOt8xVIrQa9F2S4Mnj9Qgf+KHNfWjw1mL
mWiGEFNzlI+xmk4CBcz4bSMpbz1TDtnQFngUr2Nv26LHbN4isj9kTDaXqibsNlJTWW/OXyDgaJja
vfTRn1iuFt82QNLH/M0yTIw+eTuR1vFI/y+BH5jS/f0KiTdAe9FNiSygCyYk0RlxzdiBwC7zpmUa
qCs5js+XQY2+ruldHfWD/is0O3C7zDXGBAzwrO8gWDjW2qCV6fkk+tbPrdGkT4vgxswHS0LI5Qd3
EvS0qjfdZrHrh/nrSMUiHtIUY7U5QyN0iK2RkbqOHfxmhOPblMtwi8jgT9ML7NCwG5lFELpIoOjr
zif+vTdUL+X7R27xaFJVuhRwgpaw0qI4eYJybfrvNZUKLb42LubvI+tCljq9umu+8muSyrX2R8Km
kxdFWTW0fwrYhZdDpQkGbalKg3wduZIKBB6soYFI4jW2o3mVpBZUj33OsdzQvq4OT7rMmqe1hUMV
rFN7hJZVeTqGK3daWqEsON+CIVUAdScT17ZKjq8kH9LtThXEVpST3qw8SggJO2VXdIVykRGAgBIT
2U9ju7ORA+OTsshk4cDnuuVWMf2Rz4l8qaNOP8sr/Mbhi1NQy3TbbLLyTk/1UVcflapBdqpb0st2
BnzJMJNSkZRnFt5QPzpiWEw3RBhmGiuIIR+6lHP9v3AHm0mL4x0IvkVNsysaoQF7ApFnxn4uMLUl
o3ijoveLfIg6NqTLB71UzBBCsIc3tT5tBab9+oYSYRsg8EeLIm8r9ZmMQBn6wEw2jkjr9QlPgeDs
jtk+mQS/CaUP3jWD6AIK2WTBlP8YitM9V0Cc6dl1ROmVq1mp1sVjrSE7XyMjoFhS9vAoGBLmOb8v
HCd/ydnDTxKezRMKYiHeP39xX7Qj51BJLGNTwF5xRTFZnYFp7swju9iYyMr5l1cklnZF2yLZLjvx
B9YwKmXnpBNO0RaVv32grjrn1S2uho1KNJmNekJAXZHXObT1Opv7U+7lgOiP07iV5uLrJ6xZNvE/
LkKgX3s1fD8AJGCphNgalRFFlHDuvo76+RMYlJIV2JAUT+iSGU5/o49BRvURTn3z6olrQpDu0m/s
dEQI42E0ALyCsBC8aUa6unA5qkNxy+YWrqvPi459Ij+Dvp7MPWKYMOyXODvCGJSdG57sz6lvVf/t
UJtCFvpNXWzBTcBXf26n5g9uN5Fg7LnLHFK8OiPN6aqB0Kr6GqyhUIhW0WcFgz58gMQnz+aEc4Zj
sOStfC1u/3GxeQ+YAJZBTMKDR+Q6f8drsg2XfJZHxlYDQ9GPOclnQYUdKMvCwgKJJJyBU50kiWby
4OJcOXMJOxRkYHJK3EBayA9stKVulKTATrzq8wtGLh0ajb7LksQZ1fuWHlubmHuTufyUfkpkG0TJ
ITlILr9bLK6FR8Czy4rUKTy8pKBetHd3jYYf1hbullQ5Vdw1GWx8JmJrqRFxqvlNpS2HlnZoTSrZ
wyQiGQMKtatDXjrsZNvUFDCBlSdU+Trysg3Evfc9rKaH5nA8eFOmfWdODcLyun8zIDUZFXknjUCE
KvvnZydoEUNCuMEk8y8TF1VHDlXwjw03q9wmhfrYSofJGPMemdzTLy04JTAuE+DK0K4qvlFo/teH
WfUNYpdbYy70nN5AZzXopJLFkN0/zGpi5JYw97gMCSvubcJoAuumQ1WG6aEs6/d4tKO6K2yy2+oV
DGLELlQi8cH3+IL5zqE2En+G2beXEMfrn3XUdKls26lEz8c1cXXh6VOjdTRBP5SzL7oOXsqGSlKZ
kWRAThUBtTwrg7qmw/F6jmGok77vHgxzXoJs75uPeBCZ+DQB8lCpm54UsO03XO8GOkjOjzdrjFf6
aUdV3EvOoQKrRgcTvq/wy1/C87A4MMBYT1rIiMcHUJivmOxygIyBFFOM/SdIkWvCRkYHbOXC2kH0
SrsB5ew8/Mq1o/Xtx3TwHbsWrRFfP5r0dD9kH1ci6dMUNxI94t44nuV/eX1cOOonvaLJmi8MsA79
dEujdTTbv4/FRUnmBJMb9KFTZLSzTI8oNSMwEWCsUJPj3As8mZ93UKHC+baAZWnvhm4WOO98fTAb
cM3SLjojRhiWpRnCYdXO6OtLY5VNIsEcW7yKte74Y0gy64m+5cDrFFtirdTpfKO4VQb+LbUg/rUz
NDLUGSaNiox/T5/yD14v25u/vdXdQzb0YShcMid9wvW0Iic0/VnEL7M640a7KtxRrmMVBdkBrKiH
RJ9ZsOWpPSDwEeqWy5JQFBqRoDgqYX5K2ZF6E33hvVy6hF5vQPcUoF1B9ADdp+J44kKNp0+MnPWY
UBVInFKi6cBbl2I8MzI5uYnDbKveoouwIQbOz+FzQ3GnAbofFmXT01cNyLdQ0+AD/0lyp9OtNmua
YKn+xbDgtlEw+y1vc9e653ifADIJzIe7Ngyg5JZY0QxHDMKj9y2uuoNWU11nheV3Z9+8qFEbHYUl
ZOCQTytNbAt3mcli13j8EXZ5UFj2T9y/e2Knc0hWl6ZpP+IVlEIo5QEroDj/Ox5xNxlxGYGEeU/e
bVTXhKvKOS0O2AsmCUd+PJcEyl+jWZCjneSAR7ApqsjNJ9HAfUA+0PbQGhbQhjjpW8HczT3QXVKA
9Bvrh0wtq4EssQnCwHXwLpZVHXmhCt6u+HaKF3DpsgkS6e9XWRf8sbwjjQ8xDMTNN5ExBZWtybUc
Y/Knn67UGn71zmGY+HhSXF80FbkyWxq5cPkLmEdHX93rHpOULYDvk0LXS7z2QG4asbbFngHo4hC/
i1rLDfB+O6rn8g3UwkyYWFcg1B5KHXanLU7/m+cOfdDYW1Zj4aTDPMjOTCMHvvdEUB9ollu8pczA
lfryymXViy2rrPvRF+pCBiThCGquxHzXkTokzEd1Txhe1kMBZCVjJZC4KqDPyN4UJGKEwL5NUPs+
Ts0ode68GDXootvbep3cPrPbCmpGr97VhZdep1qAIhj6lR/PYkuO2wukhyjQXF2ZxNTN7TirJ3Oh
JX7t36sbfrORikH5iRBBaUYm/buIKNc7pZee7hCmwv2irlR8OpDp1/mVO+Fgq2Cloa9JzaLsZxzU
kcK75E0gUPkPQYtiBe1S3NUbn06gjP9DhSx428T7xfN9pkdLIK0+vLYjdHnFjiMWvB+JXqBnmUrp
lzTwsiGM3Xo2jDWgKziLaY6JZ3Fi36261XP4TT19JisYJDfnOTdFeXvZKt+U+Duxcs3idzQ4DQS4
3zlsXS5rkjiWi//v6cu71iC1R8lAlOEbpHwwMEx1ZG638zHukh0rUBSnbKR7xOMxfsnN+Tchj0VA
QaoR1RvsCfyNiDM4KEAICkSjKIAIGyI7KEQlm1jr7+VUPg14817tZiuehYmWK2hY4HVx2078PLIu
cwdILoLbcK2B8I2wE6cAwmSVON5No9a7onSeTTihMn/2Me6ZOXE/dONopyUGqmKOv0dWmQnm40dq
zwtMKlgGyt7oJInQYIILJ7lziFk5Dcv1xO/F0S72MZYEvP/nQiZkydDRTV7PEJT03EB2x8smaz/E
S9qdlL9CtKrnFd7YT14ilUtYBn8pqPCDZTsLCd2e0x3/QEHLIzTCQKylwxYauZzxvuXaku4AsHjH
qxt8ZFvkQD3bjwWaVn/IZow5qp37FwZOq9+blaLWCdJxViLa2lP7Gjj1s4nHTjq7neTTV1zhO2Pi
LJ0nBqE2NOZ4vchjIPH3UzGvCQdWOeuTaVpAdh1AhVXiPlZFaGoReObthRtQUsgG2XV4UWAcG9qF
EX497+msmFTvYiRwumu06/8sGQaKlGuU5Qgal7abu2RD3n4ulkeV5KQoeoUasZMo4tfcCgs+aY35
GXOKTstrcAeEPe3ReKOwK+U4ZFEpAA0xD5Hc65kGuFvFhXDCA9jbovugW2yo3hwG6F/XKdwC8fnz
QqqRlcoyQu8HLURwwuz20StgByOLSnnPMTFdtmswklxCJfxwG7aTgoO5Tbl5mMv+vZRP50/a4ZYF
TIAVzoRSzaZTrEnoAjGnsL7xydoBRgAweYS1kq9lhBnJrgbtzRaLoaxd7Q8jZvDwIhLMTyX+Up0K
XhdMjTnpDFwnN29CSdkOvMmk+dIknZNXc0v0RzZtzPDmCMcU0Uo6VlEUftpBYlemlEJZZ0CUUYAf
+VkB6ZzXx9ELnWkxsM/gcgKJ8S1CSmtiF5AmRPrCc4HarGLaiGpECs9LcavLpnWU4oHnOxVZUhuO
Ra2iCfzyxEypGfBecTlZ9c+sDHksoTjZq80w09T5RujZZNcDGP8URQEHR27zel7N3sMLMr2d49On
Ur5ETvfm0UWhu7a655aadLv4PlzWhMOXS+/vNEFWdWCV6vPK/DolX9DcxE0yS+4C42yrAgUKC9I9
vk8ZpYTBTjzQSDjdIR9jPzS4KXKbbdbwTqGNlEAujkencd/9jIqmCOOs7/mUM3pUyVLGr/HBx26U
0Ztxit+OaIiaUKjnEl40nJfpqTUwPY59hF0IJu0kiGxWNheg7VMAuMX7jRyPz4BPTicNzZ08gCEN
Blx8JKZq8TFcCoxljSZ9MbWkG+gV3SjCNofjil2gNehBX6C1zhIaqzQvwiCOSGj1we0XxJSeGdbC
BE1n8gVULEdNcZVC/YFRt9KqcWLR//OxA5ZPwZRY7hzOxod4BY2f0hhiCxBpxxbP8AlsLMxOwK0J
9k7HyRuGHrJF+VZ7MkFDYdRloSEAD28Hs1jZn8vy5Rn9hySyKvthHZIOsLrdGtV1qrQTFkW2u5d5
381dxjT71p3X05C93olVFAg4YlTHQjyV7CQQgun6zn2bgKi+97Z5HtneG3NxArap4OKQt2fH3pqS
HDQHBPn7Yzc6Cq8kkQK7mKoqgN/DEesws09A4ctn1j1BRWsii2rzx/fs2A5fGUy+awPpIFCZYYv0
Q5IY+50osghVF/2Vy689txrLAlki9ydQ9GyFtO1XNnEcYlDbrtpwls9a9kXGBYMFf7w7QpXhsUMw
V971zxeUoyNCbuXwnoJpy1j/E/a52CRVh2jMbovIiU3WcPwjDoEPp6ymS0vFubJM1KIlNDmmX9HY
ZYg00TA4Y9yHFFCFYCVpXT6mpXQMw49Vx5jg+ftKuJHmuXqVQJ8cnhLpJRuKjDoQ2pzqUED6gNvk
LveYcJbj/rxiNpsN2VbdHNfBuy99lrk8qEZA82w5VQaTMruTC3lAf6x8Tuy1pIhI6yjVgHIssmCL
Y89PZNjzyeJuqknGbRH/49cVsiX7iRA3EfijyqLSSZLe0Upa+V4ZRXYjCywT+jotiASciVWG28Fe
6QrkvvbHAkXpd4/J+3k7d/3zFc+7QZtQ0SiQDpCAgL0FgHcJAnsAuwRR4/+p+axLk3aL0teDZUr5
z1I/PirwITv7nLQkN3pTcENsnZBWqJhjz9eD0t/nlayVSkwt/GNsl1pBNBsyzQBTBztm5OeX3Xj6
kKmHRhZzPJ8cZgQ7uz8qzY/xc31Nmb7ghoneiXIqUZ+PxhG/KrU4KVcq7FRSGxGng4XYIH986C38
HcmIXNqmmMPuquShox2xQjZRd+ZZZGnrt8jXwSKp7G/Zu4f9ssuoKDypgxA2z/wLHpCMb5NkZ9QF
yvV0wx5qr76swsJFHR5po+qqeSkl7ieHE9KgBbGpn1A98udSX4LxxbNehOzSCdAyHwUBkqzDRTnA
UfYAjZw1itr3omAzDAKkM2yOXHAoJtnlCtO/p9s13pRBOGbpOppXIjhSDAHLmRK6L1nUewUjsHnb
vU/MjTz0pdHqNV3cVWHJ2Haxa3JX8wq9A2FMfX2QUxUk1p8qTLBwUGwP430TToZnZ9X5suc8vZD+
1a6Q3Qxycuj7yEqX/TCIOAnoLXOEXBisgR1J9EfAAKNHgd333GLHocCbPXjpWxkVH2RRS9GY9zUt
s92QBKB7XMG+wqfoktzrML4dARSM8BZAxp78ODppkM17+3Sw4g+7ulis58UqloB4HlKbLy5B1Ier
jYwI9h49oqfgCRgADiAw2KLYPPqSSnwKArGop+mIc/DtsJnix7TRsqvdh9Bt9Q4mvTS53Qe6tndc
fmJo/dhSTaSQA5w7Qakd9psVIa0zbuUbPKmDD/V/HOly/acoHbVA4c/c+p0DAfcqao55IlEWLuRi
SNb+5ENoW+PbIIlnhq7c3VXrpHfqiix10sOrMesZ4X3qrxy30qnqIegkiSR2T6J8FY7tvbVjsegT
AHXgvOLpfXGPwiXDRdgH9ggykFZGiOVGKjY/nLVrCatjBGOBdA7hrp7uA4TZ2KoNGjJJU/Io7FKo
HDFl8EarhToM3eJ5vWKAEuf+WCSw/fiI6lkgpfQqmpL0Zg5BbQ2M7wqcc3nAMhzMlHlLdX4Aswf+
WtYijg8g+cJwVT4s+J4sLy6tMNm7YCTogQqO7DLnNznSOCyINYUcx6Xyf4Bf4a6X3H3Khd7VqOfB
Zr+UJ5eVnvvB7SrYV5wCGJ2cqI1MrKiZ26ucyYsVbDp6WkJyhwMj6P7ReIcFZN1MY6rKSxlsPNq5
8cRP7R+Y49haC9/ChBtIhWOMw/cZ/69aq0n32j7vfCVA0MhyC0EQMrL71edvd5elrQ0g7g1VMKdT
y6Ha2TiOEnP1obCpzvwa4HPKmjIJTrB3vkXTxDDwIhQLiU/l/VxxdGfDOI5pQzwbYg2Kl2LBC3Jp
iKOkZKmFRPl3XYrP5vhaQl9l2aZEGjy0b3OPrjk2uB0TNvAWTs9f4Rr7pVv6bOmy2PfgAOe8r0NF
mdEjp6DEDMiSKFjxWJlOTHVMbc8cWEwmU8zGu9SERnaErhwciCHtp5/Dwmxx3eLaFvVF/wDfes91
qEJqZiPO/xxCVXsbdmlPKrD2EK507efapNu6dNCrk7PTKrPRPRESVaD3JtrOPA7AczksCLJTt0Jk
WcnD5lFEpMx2uQXR0dzO7L8mMP2iKHu2RH+rFW+Pw0wDQoLUDGnfqfVadTfOI3sIaklSUC3TZApr
1y4WhOJLEW6ZYvVb2JduiZcuzIJ4MkHZrLzG922w20w+7ZM7zzlFj37+CWbc+t7lhPIAjytNLDZz
F0KIsPP8lNX0pS9abOSmdKoJQphDiiAWTLvUnIXj37GCG6vK5x1aWu2pYxAr+Byjoa6T9W5vttkc
soQVvDDR4ujw6W+IBedqFiMn2Xi59zXU/LCtXhB/raKx9G0Agy62q2yj21FTxbhEIcu4K4JJVVnn
V4Xuyi22HjQ1nI5Yo80Ig+sAoRlapm4cGyW6g1dkJdocOJic7Dss098ymN8noxu1jHRFvogCEDHP
VGBoDjsiwIu+bJnoJjB/XdRQ22iaIs267dDpFfM6BGCWlKccC9Qfm6Q5ZxoHz/FctCH7NISDVrFK
cqwhH/ZmM1tJPyPrvpNmFMpWr+OSL2Teuu2YHTYsAn3Sg8sBy5pF6j+zm9dwSB6viDigB2IoSYoP
fo7kFHZrwWtwyVl/vqXDJYlDlOYU7kNCh7E+Xp0wVk8BfaAVOBCg2VV6wR3UkP6UOezXXz0h8dP4
0wLker6ZMNfJvNmw028gjLBa88dlbSbHny4RpRFmVA8cAyi7juHaMg2/feZTQYDyHxZevQl80Oa1
8xCg3itRiCtcCV9hfNC1yNPyUjaN+ngy/OnqacQt/V1TLYkRcwkDT7jNgkTAPXhOIOWKruXXtVqx
fNgH+4cDXQOTisVEcF+bMqszqxOzTfnza7Rdl+KCmRTzsdjZR1Cw6jCdRtmW0NAE3/fSychArhcv
G27V0OLd3Q8UQ2tdbNg+RzRpThb3IFbFKZ4fl7vv/O8PCiuZvizuyL3bgAfQQxrnNb9LuCBk1K7L
i6BOLhXTUmFy/RFbP5irHj4F4xVpERERAKFz3Xl4hDmz2h4EoQ70sHjJ7aG8WLAp7QhELfuhKmCB
8hvpvUZU9OwhE8ycrBSr4yztOVr95hX5Mk5EXe13JQu74CLbMLdB258wVfw39O9cqvzAs7hEhzrJ
0ouN2WHxuq9/vpRmHeli9uZlqO7tVzH+OSDcEMNhUB0oklCFwGUwcHukzoiJDjRo4Ju1EEgkAbDf
9yo6FSOjp0Is/ViRET6evcb1ObkYjMIVnLb9P8w5vyxj8FrmxFwlA/nxBv7Yj0jTYJsJzk4DCdF3
JG8/53hwHCdXkT6VLsH9BFxktmkFsxdJcj4ETnrl5MX4ZQdc204izs0DqGnzWQZ0hSqBz2igq6V6
IZ5ycj8XqRjDGgqPfinc4+EP/8K+F2boFTuhBLSlXo7hT4Hno45U6gzfK2xf9AfHyENEuXEtwqri
bunEME0vG4ZR8m9/LzBHxD56sZKXKaO3s8EK3ohwvZ6GAyVXYlTYFjdPlbgbng+xU1nzDF2Ec1bH
L6ooVbWVY4khIBUfchkt+Q7cMKNe6AjTOlhQiw1MqEEIGCYjPh7VuNklaHSmQk2V4Pr++fkduKTA
96N+8n7xx9pWtZqrY3+wHK3MvNIkwdp5yGowKBEMTqqcL/lUOnov2pNXWjrwd6R8jgpEg+GWWLNU
Wak20hPCJpMpoiWo1DxwNhqV7ymm+CLwYLjqbIx45T4qI1fvSNVMuWx04Jr7Kp07g+tiPF21JsET
vl+TRZXLs8k2hsgrJYkhBW2zCgztl30kd/jGt+InAcMPkGMca4JRsf59j7XBIc1DPSX9hA4kJNIB
6CKp4YDGHGsqMkCMLBtX4hEPfZQsBTwQbKMCmlGgMXPIf4fiKY8OLSLwWM6Li9wxcFH5+ds82Us1
zZc8bfWZrh89y3bSiZrI5FvVeG9ezlnahH3DgsodMd7E99pDMWgKmKX6RIVKp8FaC4MX/qKwlqIY
hegAGeJLSi6+FyCKZmN1mzefj9cQlwtpLQbMmlNwJ0ntNPYalwUmVM0AoKbkbOMhPetRpyIWrwT9
8+UVUtrLVySsdrr6Aud0mDOZRjj3P9j77LXLzpBwHlzWHV4GO5KjA8fR39buOssi1fyXKiO8+uUT
L9G61Qu/bIxuwuF+lNQ02wsPkHgkXZKysK64Wgg80NtmyUknIlbQTfvVQIMTJgvA1u80qZf3gFj/
eUtbEu/0yJc20iqYlHJ0gH6nPbNX6y7vUI9dSEVb91Uvdk/LDhsCpISkXQy5ysR9aVxaVorvQMTe
YgxljkKAZnzBZ3WQ8J3bvoNdG1vlhfC2IWwhRTW11EDK9QzmVFh5YqVqI/BVKaYyRwcgMX26pRrS
/GDXEobTnOsarSA6TW57tTyzLFYUsWyr9aqVb4TzYutBA4S1aLOoax7qP/+h5SqC3ombKl6l3NKa
3yA8O6MdsPSjBW1e+V8CZwjVHvZDrPO0MmO2pb/jZFQ7xPJGFb6odCxE3lePdoVT/BLYgio0/h72
yAQI2TD+3Nzd0F9Zk9/arQAK0jDGznNcd0Hw0FdOUJw2AxzlKA0qhsYeZOCjAA0KPjvqwMPjgPtI
N3MjtpcjdFfNzyphLlrkgnUO6YGo9eh2S8WCQ6qgLjv1gjvOINhFF/GpjRIFz1fknYWrsSKzkCm5
1t/aNxGUVFger5TYp6C6I1kUiWIeQbtzRfRtlz10O/+qfhqFhvdE+PI8jXcMl/3OLVJf+WFYIiRu
VOYd9P3fPeIfF1GVICwE6l+MJ6j3fJyabgshACZLTb/7AxdxxYS5cY/0bpY7382lJeBY0zKnuQJc
Xt0qJTFarfyrlL+CT4lz2WdPcWa6z7lQPqzG1T3VArG6hv4A82aMgb0JBwVUwSTaFFncPN0k9c9J
+Q4N0IFovSjD2PvYZN/WyrYtaKUGUpDS9oD50V9Bp0AGySEq+ALMWL0tQfyaXOx0BmO+dgwLZUsS
IueP+Dql+WjhsIzmqPmqDjQajv7sj49yMuUWI0x4BHF7V07lu2qHZjEtZ7NBuykUs7rJts5mTNWz
G2zFrQj2W+CuQYyr9m7SrqNHQI8jF85wzPDXqX1pc608uB0O34N8hzr5m3lRTNx3LShs3FkPuWUB
bwDIhb4Uj6hCrpeK0pQx86L5XkKuSskT/aL0i147fU7Y+MwyTpGxaFq8ccQZjFJZePV9UB6VlZYn
wP3wABqFPSB5ruWTExRrsx0M/c2fLgUdcTbzZ8CD5DAuaXKwyU+jv/bBQFPVkV9IpetX3xlc7Swn
WXQ5i5cdMQHLJu0i2zkm9qs8b2WPDajVCVWzLuvsfORQS//BuD2vTyRJYNdHClaBAio2ukwhvwC1
sm9KzAkf1FbN1Iais76KUWXm16kTNjA+TNFawd2U8xtsl9hj+Rox4LpF7A1HRW3JVAVB6HqiOuO0
CU9zsHfUuSe0Upwf8lUrQJlI3A6bb0crolWBs1ROtwIoEWX444n40T7LUD8x0ic9BKNYF2McVOpw
m6TgwrETrO79fGbekbRe+S4mPPeAJHWTNi0pzVsGORAdKfkYfwDufiiYTqtFiDYiAmkgkc2cDiPb
51yWFLzew7n0/xuNCPF5GMCNAN3rTVgTV2POBiMdL8tnvrD/+cmZfa2ppiPXrQQl0iO5k+uK/Upz
Dtxb2vwzuVhN6OwhaWS7//xGWFUGDZ2IZzHsfzqTCIfNegpQNPRw+HvsRnp797YitIpH95Gbb3Is
DAjeQ53qmJ0uom2PogKsJrOMbRzVT618x54zP1p9eajRca+aJkZ2rIip9WVCPkP/b6L7QGQFSUgv
ZWjUQTFq85s8Zm2wx3PYs1Nghe7AyBhOgA10eMNhOofHeyFkYakfRCVzeTy82RYFTnkkCxk4mT3E
wiY5M3cY2XK6Ad1n+pBvoF+Hea9xVV1G27z+UOa8hvrGMNi8NVLiWodHZzG7ZdxqXjI5XZGqkzBD
aqV5eKJz4FrA/IFxj1wO5s1mxYs5wNOGoZg8H4P8Qx9n43s+toc7WL+OEG9P28vAhbv9Oqk7vxSU
D5XqrrwfqCmSpPI+tPDUvuEE+lQEdxFVTJVScRYjIZhGypb/G5bZMkKyf7dbAwjLSdBVyLHSSgIk
uIpGf/FYkZTxRRw1MUWX8WxPSPAjcqlbXPOT2mB3xlrdmvjc4EDCsm1BvptOoZ5jkojN7UOnbq6S
MYUrzspDDeKyEAthps5dflXIN/rVanVvS0s2yZaJ1mG8BtK6Lb1/1xUYYnv23ZoBTl54iDMVXIpw
5R2EAEPvxZiNnv9L/Jviau3D47g4jQ+uO/GMUA3oCSPrfdANqmo3FM0ZLJn/xIT0iVvGGazbSUB9
dtFMoEoX6ZPTvn3qXquK9Bylhlx9I1vU8eHbMP6tsaAsSYlVyPoTBRO6jpoPs79KKW0BQZgGlCIb
vBhXgnwGbOttHB+Hdc4K4GbhnKUGtpBa480E0eCimR4fuMdiCca1UgD6TOUqF1u0H+isqkPxPzFF
Ud6jokWXwkgOd/4OIs/Q+2Tp5sJAmraTVEnulBp6LzXJj4Lo5PNkcfMLKmGQP1gGQQisKQTix//c
COfMon9OcoWJ5ZPEvxuK6OHpi07ce88haYKRQfiqyWnOCcudodkhYm/PJMz1fPu8cYuKL4CCSY6z
0Mu5H7zeGO8b/kmzfCUUPABSQOwSDvpkazmdAwEsk/9iUcAN0Vr+2z1L0lJmW5REzqhE5AGrxo0Q
vUI3dWO+uMRybU8VBc3O+nB5dwC60tHwB82yMzpvXfrFwkuls/8JQoEcma/BVF3CTyWqUaQUZbEJ
F22GKlvwT0ePDv6zk6o37mMwM/XOoKPieNNtJiUz3b2xlGbYiXez06MiCdkNvnWD+/lyMYUw8Ef0
Rjbs2SzwXWUcWsrJ3AG4RnkqaSUOva+qi0SHG7p5gABWUYMu68ZCnxrh1jJJ+GHnp5IMzwzaow05
A3n8kodnwyCj3TepNMnAwpfcGpICYqyffjWG9oKnXq9Ofiw2tGdHmQr556bMsQxLzz64mvEwNN7Y
p19yR8WS/WFoe/yFAy1CYazEXLk+D85cAyureDU601EkTGxkuJYPBFrIWlMKUMOvcWc/DKwcqwr5
KHjde4v6IJ3x/vQ6/+qRx6LVamP48fgHF2PAi9CnBWxyCv4vljw6mU8JjxSYNt1g7ebpP8bRvsVD
XnvOMv0fhRH7LXt+N5g+DtsiZ4KOYrv1p+zNZ3em2sKm4e7iMA3uoTs303Ppz2x8wOViczGMmC3B
IKVV1Gtw27jtBG6awkr8JhOHF7sPFdyq5K5l07p1tg4sFM7CD44KB+8WcT7sO2upfUw/R2J+4SHo
sMMzkb7/mRDzJoDIGHxQAhDEgOo3jKod+U3PmJLEDmToocZWmQgMZZ5LBWeJKqtURdIANzlb7lG7
10H9x1kH3/uRFvypgKnoULs+tQ6J6ZHiPJ0/gXKIp/dvuHXJq1ksRiHaVqMvMjKXLJeQo7sUXnC8
cnUGIdjat0yq5G2rpfLvfGCEy34wY1GB7EQX/94tQsq/bb1MVtSIfyuRWlu1U+SkAI8jB0X9eVvY
F11fD6ft2Ld8bVuprTlDalBVipWG8VVDpybwxPcM9YrqYotV7hX4wfwbU00fA7iw1+C9UFyJsufZ
rAv0ym1YGGORp5ksRt0Slra/6IrjptQgaZD4MU7JvFptg/NCqKRLE34To5n+pDVNe9rgauAczIb7
Zlto6y3OwP4PgvmmiFiXZyZRGowQfbtdG3swmwXvW36HadQugQW7AKDoH/wyhkHCLA66Y68eEdh7
VTGpCzfbJK+H6a4QTqQ3WvhLyUYowr56oULOOqwclqYA4NZnswh9W5nVPcqCeYrbSm3LQgx92/6t
VFcVKOIHYuh3r6q/bH75Qu2qTtvWJ4y+hDb5GcGZZz04ODDvS9dEAmm+d4BoAnfwTRdtr4ZctqN0
KQglNh5mUV/kncFnFiQe+9k0afwTmodt6siKMnwDKcl3NAFg/Z0guyNb/Flc/tAGF5AHEcNWOkfk
KFDS2Wd5O8DcaK9TIsHfeG+nMX9zAyV7h3jKNgf4r764Q9Mq3J0aCX+kCzFOhpa5eVQ8SMcA996d
2kCf7i97dYEeDBWb9joueVR7I8XmTE6grvWR18zP7nOaGLxBzk3bUJmUgkpX1HZ5jbk3F8/buVKa
rQsuNqIhOprZTu3+4W41FawAKuBATz6t/mJMhNECmrwC/jWl9X3BFLCZFqzVcicQwX6Gb+eRe8L5
2bRH3MFoiSMKDIXlMLasDh8HxtLmk3scIB1iXTjJ9XfnF4Pbr7T6X7hZtvNRAWZCJJeLFFyxG+4A
wBOqSPgfrpxcpqPhiOaTQxhyO0ef3LBTelAibpCth0nLJYvb8saOyQOjNzUAN7cFqO6W/2KrIzBk
yBvWOjBkw7aWfcpNbF2ZUpo140ty9YF7fvAmvEBlEvDgp+fiu5uyw0XL2t5ZnUwoHhl8oAGeT0hm
5Fp3kerP3NGkGj2rHN8TjQxwxtRpio1i5wjQ18DrWZ7z5pPWfrkNmRs76VHa1G5Mu1MgVf5K/XUt
isQUo40P9zDaNinp5nlA61P6uT1e+CXJstV2NDae6FPDKfMr9ZzkkN+Hhk2+l7hl+x6jxCSG22jS
euHQm9he89yS4SXmFN4FWZA8NBAC1mVOA0+ADqqyVepwM+Ym1KNy3b/jgm6gm98xAshTAoH30yiz
6fGfC9Lo9MV3DPhkKhFhyh1aTCB9okpQhApRRevyJTekJnpqpvTCAtP65Zr2nahfxW6SpfotiW23
PxAXHCGXSQe6gwqGoJy0VA9WWqZhRSXhZVfYLF/5Cj0veUTSxEYKo62kGJKKCOEZeBwZTuD/2f4S
LF4P0RjVFEOxyxiI8R4Njs75mbVHBFkVwaaD7Ka0jzyQnUCWMxUkQImX9TEsOWU7Mjf7yDV0NSZn
sC79a5gQY/8VILd9YNL2+AmkYYmSvyBgJdynBDhhPop8vZPhp4Bnj9H1XSDEj5fgFc7uDvih8P/6
prFgOu4vk51hILYyVO5YCUvB6hg68cupuhqXNF7rzwOZo/IaBHcGaC5oCrS9/LpkYg19e9qocjK2
OkY42Acnf1pyQadG3xQOVEhU4gDavQkmEDulMe5voT4DPzAqTodfwTy/9bKSsuKVSBODAgRm0KJg
pMK2aF/jeci5XOaFznrVVBTKs1XremWeeMcBobW9FlW+8Rf2JEPDKcbTT6D5//dGtP99EkXjwogy
5ot7H014aJXezLzFXrVb+hEVHbDOfDqPnN12wktJa2TQ53G99/ru7/RZio7im7E2DZAuzftnokgK
66xuL9sBw96/7gdX/jWR9RApwbVPTNlQ7AeuZIVc7nXT3J6J6xSs5c8NviE82FI6dCNdJXMhAk41
E4Lo800m2jX+7UFZ5DpAHzIf9nwWMX0mN672ymoj5wl9CvJP889u1ANYlgIvc8zEoytbhw8xJJca
xv6r7B32EIuFiWvSv+589N1b2hYwUyg2A+5FF3HWbrzk/HQp/pt0BxntEP/8nNr7tWk0ZtubOgMF
3NTQDpUmVNWZzLl5AyuP7s5ITzmEmv6U+5amQUlGAVzObvc2j3fjz8V2wsZdLrPL59iX3ing/ClQ
U2RLkBNfFpNPWVI4rGqGg04Ihsk8Fp2T+SQ68wEYKLKK5vxnWZpG0gKzxM8dVTEi19u1aGHi7pg+
v9qCffC+fXN9T/cjuTxsmeJkkS6Z5Wyo3vloFL6iItD5UWXhyJ2Gqv01SGbTA1quXr1d6ud3RPxH
XAdO1SBWgQj0Vm1qMQn6X4i17/TdNSpWrjmUToGfHzNGrVEWs5MLKlAE1WKNH1T1RIqUOY0zre3C
c7E2ZZum+K0i8dur//hoJLqN1lwOb49rfLgpLF4WH5kX6JuZ4BtypjPHrGd4esQRFF/zuh7hvEzV
U4mYVKpXcNqhOn/SjxJriRGlv0fYMkPY5nuMtq6SxYgvG9VZoAQ/eDDqqAnNDnSk9MjUnRqkpsxI
NS/Feko+YBcoP8hHL5vQb+V0vZoIyEAS4DKTEweVIoPtOg31P69K32CrVdf1x/Xo9QBGKz9sKeRo
qP2UgjwrCvsSdWLl3b/BcXjcgpAE15S0tRxTVdhLVYy0MEqobuXj1C1tEYlVBurzjR6vnvi1CSEl
713XHADeTpoT+qR2oOwafGFaNN2b3p0vsfdEni5USngV5/EyLPTjx1klbxOs7AEMHO2s3QlQsjLU
9dArkm/Gxda80lSoOXO0QwswxWjcKzVm7oCELVpSsocAOOtwDgWJYTVyYO8WKBU39Uc27+M6REKN
vfFhrglZ2c9XCFT6JlnAOspXzRvOAmDo25p1BzBmNtvE5JuSu/uQUnNmYR3EG5tMAG4GbwxW5XgJ
gERLnAOvwmxMu5ArAVEnZjYhYlyRX5ePGjuvo9iF+sFscT5hEmnB9bvoRSyo65zsGogGZF9IX61G
XSC8yuKjVUfDFeu5qAk4u5vuviW6FbXaOGKrMHcbcC/+knLCmknUe0cR+efALenEm3X2bS5GKVA4
7qccxhxfxNtogJ+fwdfJvBLOAcnGU5JAr2qkNSPoOjduB42SOyQevAGy8TUg7hsziY3XY3C/MKCc
4t1Tx24tnUi71HOQ0GmHuaAKhG/Nj3MYR3pJhER5Wk1K04KhID8KiYgrV3FH+q00LMDtr+BqPTQd
04UCXY9JrM1X0boTHXEqc7mdnpDS1DNmQI+o5qiTQ9ouNr/OKvdyuIkaQugmlebDMoXniyifiNWR
zcC8FNKQOzgty26dwk1Nx19IYtBzxmnHUjKGccldGXy/kUEHAOjfIfAVUfn71vZ6NfZdeaGvoHL5
GW/IMexnBQ8rguY1AvW67oK0EifJzP/MyloDb3b0/GwDHjCbrrM+2IkDEHvVkIZvxnDL2Ocg0YXz
gz8ta2TXFlbNy9Wgkw8x1gKkiYx763qnIi+bbrgFfBRckmbDGQb8P5eM+DC4PHY3TyU6IFYHZ+yh
q1/1u8IQVA8AD2QMFdY5W2ZmkWso0kMi8T9PAFt7e/EqYGPIjJsINNpXmUE5QsDO9wnPwILWvbAd
qi6U01rTXy8gextF9WXho0TClnbOF6BHsoqymY0ZbfU1EEjmt5Itf2pL7vgb8d/RW21vmu/T0wrx
qerKQoPHvESOd5DSeF2nH7/gypxJTlJyyxzqsuJEi887rcW/f/UgeDlx/VDJMPVUPtXXT17/vVzo
x0cOF44HIncOHlo780s14nkDQMfrF9xjbism6Sbl2Rpj8iIZHB8DCbnotX3607h3sej6vCWKjkvv
l0o7VdC5bgUjauO9Bh9+ZZ/vOye7A2uJop4/LyCvExoTschHd2ItnWUJL7PVuUT19yUwdr3OODWv
6/VyqKOXDv2pnIegdpu6MGpDNYs9ocnODomqlIsLMBQF4oYoRoRYz1WaOjY9F3HGD+wloctmHeG5
pOdIai1tSwOeeMyx4DnpVjSS/5Vgsy7llBmKxzy+s6wArtlGQr448nNVIyyMcsgQdj7m/mP+FNd0
Rlxzg+XYuJmyAytODj8InuabLpKL/KJMvvl95DeHUezf6uveBArEnFXqPF1yUePhnCgTfsjFiAKh
4hZltOE4poTKjVlyrsoIWqhQYpXnfV7wVmmUFOefrNMynSo+z6Zv4Y/odF6CFU2DDo+QYkjTnmG7
fsAGztWEwFyYIiGlU3CKkDv/lv205NdnTmKGIYEpzjoiXAXffZsv0Ejd5to5mlwPgZs8OKyHC+xM
iMbjGbhCc1kGUEpr1pNzK8pOBpUp00KXfjiQBGsuHT1JtpRCbaUWwlvxvWI3DqBeVP4LB8rU1ARJ
VIrXNrtdIFA+guI12KIquj9+O3siOpgDNJ/6yuDdRyg2It7/Bp/Irq7v68oI9C2jn9hH4tjYpI00
OJ9uisNj+6kESK3omjR9llhpzolo1md3RlKWPVCzJ7qF9OycwLmCQp24GvOR8VVr1dMEMnLqKk4K
x2i9QtId8SgLJ796YQXUYU5dqfEh6egoU0nvMGURgeU6nLUVpXvojzeAIEFSxtlBf0IMXB+qt+Za
xukpy0uZDNO9rVfmk8RT96VSboouuvPmakR4c013r5FSU+uVQxYVOaflQVfgB7g7Ycn1CJ1greh5
qUy6brMILrX/iAlSevRecPqNWGUga/JKX7+1AtOEC9g/BJrMlCT8EqUPk+0Bi5p6dwolqYPdDFOb
tfKVqLje1GCkl18JMwxCkxwpMJI7FvD9hMHEP5UtPjJnWxBqsYuOyRNYXHBQEiJfSbRXdi8LnsPz
Zp2GEYrpBAZfYPts4sbr6iDWbzpWbwgWzvVuZjE+uYPCKExsnLqCUqM1WaBBbTh8xpdYAeTkJ8F3
51NvBSIQbW9O+26Mc5tMxPTK+PPab29CVdBKLNU29MPU6T6MzDubqY1IwIK7rNRcSEqwU5i2L+6x
Rkei7g==
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
