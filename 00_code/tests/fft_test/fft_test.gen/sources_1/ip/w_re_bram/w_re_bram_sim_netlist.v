// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sat Dec  7 15:01:11 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top w_re_bram -prefix
//               w_re_bram_ w_re_bram_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [13:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [13:0]douta;
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
  wire [13:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.6264 mW" *) 
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
  (* C_READ_WIDTH_A = "14" *) 
  (* C_READ_WIDTH_B = "14" *) 
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
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[13:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[13:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19408)
`pragma protect data_block
UeJrhIGi2l9G7HA57KKfE920K694EOhjy0Bh9pSbu2KSqCaTPjS6aix3IhkHGw5q8mexXzdDl6gD
3cn0o34uNioHroa9ufDWbGRmT6THiAX4LFO/k7ylBYyceyPDIWKrJgkBQrEAVASwwFn45vs9rOva
dKCY3hq9oiG8bD+rfUGxZKHzD3BMaveAnZ3Wp6rY+LnlHuMWYUydsIpk1bNuoeP8nPbZVueIr2z8
2BXculNKvft/2Cciy42/NuIVa2a9e6KFHrXQjVRpQgbHOvks/fEw/X0xqnqWivjZnxjFSWkWDqto
SYBbiHQ6QRAgZm3yHaIRZkbBqAGd+GZsgFcs/aHNXIoURyshgbhS+rVTtJi2wY+g+CCFhqad8IVT
Ag2LoCPWbBOyJsQrr+lPu10QeSJN6Bsnaan8jHKMxR4HsFyLQtpWv52gIBgZgh3P+lKzRn159UBP
g5WvcSTVjSUWCTruaQh/dxZz6AMmTB3vuHponI/hgm8kRnZaPJxSnCTPk5HDW838mWC2IaXmwwA8
qXNOP7Aym+F3xrvP1g8r8FTPH0fhhHP4c1agP/KJLFHkTzs/7XwIMDH1Zm63ye/04zpe7xrMmTv7
VW53uTSswhQwmCoxnJb4L13Nl6JPOhp8qIzeH5YFIjWyKd30f8Dkp3XYJYGahQz1mLlSMTnj3pU/
dRNFwD60c5IvAkOUiscxDDgzsqIzRRiF7YRRFroigcOVQ2lhzPYTr+pk8ZdgDKz/+YCrhN1I5sMd
5zaI2LdV8MPD+NC7kDrXc5K+q6jUvvf8wXMDc5DPK6Z8X6rmWGpKQv2Mvo8Ykl/VMIYeyAFjrZQS
JD6W24cGHEx+llM/0s+8wlxuyMRln/mTaeHYVc4GG5mZlOk9aTIVPClzdg0LK2PuAL1RaKXO6xJt
twmiCoXL3SoRHcx3UmXpsjAE5UWY8RhsmLoqgG/o4kkFGZrUr43sZieGMnz9h6q9RYuLdc+p+MF4
ZUP1t2oHQpvWEgZ+YKqT/x1JNQ7Hp/FkyWyoDJJPqZQ6X4rZ4+e18AmJVdqKZoAaEflUMzsAa6Nt
XnUazmcV73KUcwUu9pitluZguHKT0YZn3NriL7eLAMERf5H4IxEcxfzI/Omfg+rsAK69rLw82Rdw
O30+iSeHXDnTDs7SCVUl71WtKXPiem+xxIXEmY1mpMSNPBvp1jHKmj/aCnMDU14ln8aQbOkIF6qe
ZEpps88TDXow8Ya8qpZt+gvbPR7YXdHFg6FZwUejv0DiXNjg3THwl5MsG0ksRnwaJHErh0vFC2Xv
lG/KqYqxtoyPifBz6xpLm6my0ACB5LV8la0l+fTFOKgAgedANq0tMZgdV8c7p96W18zBxP5UbFRA
WIx+EyDO51Kec8zYdT5k+XFWLja7480mTgyQUIAoj8blmixXa6xAPU9udVl8+hkID0UBNTPc4Wyl
MqJ2KN+RMHINiSXFbE28FgUXG1viexGGqE6xUe5PqmbFf99OgapfI/1Jx3WQDGcAoe5ifD3C5IuQ
JTOdHgCOEAoMzMtEwt/tIBZMT1qMHtO3BhAxdinXIBMpvIP/tfWaRMPRqCITuodt1PniAmor8DBU
owTlVYUOAj2elWxLgpqs7RXMfSwUhsDRu0wQmqNyBpYDQznJRjZ98Te8UoyH7IJc1obrcldaf4RF
l++KQ4p+uGjlQ8pPmQS7MUiPOuIJcc1dzobIEWEguMOf2JKARECUUBJR2slOX83l3ujw0NbfVdOf
8nYXQll+AFWk4D5jlJVThqwl+XxThKJG5/t2o8es8An7o0sajSWtKg/j2RmF6P/6e9rOOZ1qjhLh
2mexeMtJCJuBBppcxCOINWvwoMrjK8IYyCk8aO75/LWC9k+2U0otNoGrb6b0brGRLZKAzJvkOAfA
OiZOP9A/quJareB+4mbANcEMCtI7eqvn7UsedSN152DGB4fv1HAfRQSQKeSQ1rl+HqmpKHo7O0GJ
wa5rgiKAGcC8FKVfYIr0YkeTq6DVxYK1VW8uDYhmxWmlhqTcGHbtWwKj/AV4BcfEhzOZYnS8T1wt
eU2CW/YjHlztmraEFiRf31QBHuBhMZOoDnGaJKcFk0k7chhkACusdGBwVcEtlxeEHjD1RQn453G4
ZQtIdybpfRz5uS6dPLUw0QNzxmZ5OZ4PyQxMrky1ayW6+fSCQ3Zthca7KavyYHD/k7mZIDkit56O
NNp1vuGWgqp0CubiWC8nAG0m7aDzfwV2tWsLo970ReKBQEJe5MuFEgvmPHhvKPUqEu1gvCFg1Zqk
do1mReRwzeqUrhlIJEKmI1huFxuMoqRlMioodc0cenoGcGNFA9JDHTc7S+zKw9vRNCkAgLmKFvgM
s4WvBxD6kQad+/fDv5pVXTC0lJjX7Om2Pa0RU8KppmTHnsGk9vNUJ12g0dNDHDYBZ6wn5gzm7LQj
ffwR39h9JJnLx6nCHizkrAcVrSDQ2b77kkFtWArPpG19xrR//EVoNr5vIs1r2G0yHzXEF9VOSZTz
5syJ2j5Q1p7eajmaJAMZl/iOUrnq7rCOMY4kUHmJy91uVZqH50p+SzMlIHu8/HiRBAzZwbAz/nkQ
V1UgdpLnztJO5nNgFoUA2e3JaOPn89PLoAPCednHlKrzQlm66L3DdSXq9y0yE8EdvlukhgfVDs+Q
kAToRDWMpV7sraKZqxGLm4Wjgd168itO1RjvqI+7qGqj1t9X5t8kI06BCaIiL8AkMmyWAiKejoMv
pLNNN64OdZtCTCg2BwbqYpFrDqgEjOMExA+0mNReNtV87Hth/5jXi/Q7ptQEv9nmQlCfEtiHiO/d
HS3i1nEJv/fhDG/7ByeykQTEyh2YqkKcXsQQJuPlpfPS57oP2jtLU30a5MLLOM7KA1qggC50K8kL
xAz7wvOhe+UXH82eHwlPyGep1VOAevZYLx7auYxEI373masiCxMdG4UaAX8eoumN/EvN7QywRRGo
G/hjxzeGGJ1ccIBE1DhvoCgemjZd9Vapj0rw7Vg/3Jxv/8RIaoVck2Jndq4QDBlU4OKZYFNxckGm
7MJfj8uCK/V4OGQiDrTcwKuviAKrY53ajPHR/2H265Emkaq9sGmyagnvOsnoDq4yOhtcTP3W1qOA
skGyi+JKHcSO4PmqHdc4yLdWubUUy8QUN4kjQsuLRHl2MDmACADhbBb1+LB1uI1K0Ffe+p0n3Uxt
EvBzzBt6Z2F1IQB6R3QWVQrYASchoJD1PJQBM5wcIEnPk37L6wSacS1okNS5gN6yjsoBxNmrtIJV
OFt4cKhzz0a5FcsYKZaR58c4cZQlVt7axx8y9iDeDn81dM36MyEA5artEjL4+y+zCLdalODHqHU9
jVKs0sOr5bDLtC9+WVrNFTJWHmgH9QrHo32TFlq5wWB0ciRfqwMYOoPansa7Io7GMbJzt9yHCrqx
35eamGuqhDhysmYSz5jCOHef2ZhTkX2fJVQyuDezdSIcmmSNknoICnZYPub8srsyhjZrw1NQsRLu
7acYHW5m+JKSwqvj3V6Pbn0S/vfyCfQGFIOf5E8iMnu7ZLScQxAFyZpAJzuFTyE7exNpoJ6FlWco
jVG5hgjYLlaA0PwrnY9f1bjuDwU9nHLbuKARKH/quAPHYjp+wCDep2kguw8LVz8GyErW5VsvJRYe
nlCeL5eqMgXQrAnE3YCFL+dDjViwxq+QNDReVgT+XnvmrhBSDrBgEBfJZpwh9Bx4GcFtNm5PmF/c
LDhqcb3ocT1rI8bJUeykTsURDpt1dfSupjmkHI6hzT7P2H/JS1CnBdRLTQpZQIxJogOvObomHo7S
v2mu0XwGR3fDIadUphMWOIqWuyK9XUT3LMSyoKDnHH5mEHRNIeo8xCtIVfSQLxGU8sGuq9EagHXI
VSX1qXEp6IHo5ZH4jtSn7I9J5EwSJGz5BHdDhVPblQZ34G2jGKCmB2QuQ36mjifp2ueaiZG7rcLn
lQenPB5dxA0Vlc5kqguT2oxG2LaQumFUBjNjDOmigqUaQeXpHysMekTfq51LbWNKfueLrrSQBUuz
d89D2/L7vhVUiw3i9GJxjRERxb4y3xBJJk3wirvSm8Sk93469LdftCQYtC/KkHZIKapt9ebL3AxZ
t9B0MHOL+/9Lq5QKBqsg2a4Vylg+ID8brrfNgA1Cm5WLcLyzgKSl8xEUHPZ3c+0+Zq1ztmfcBdDz
qgeRbQQMh9k6mvZ3TSTG4kyGA1SNst/AixHZrBEcNBJGidtXa/W2v7TIRDSw8MLsziRkhXyPEKSK
2rxFQxXbKuH4gdsmE0cifrGlIDFCIdqzpcanj7f7G4xfXwjwUd3ghst6qmSrxyzXTdQPBvPQYrMo
iUpyFamk+pITf45erOiTG7hXR4XbON1iSl1YoI0c9HiT5Clp17G7ZIV9FDjGVAS4aHMy4zQNPArX
APO2KCsml6zJpXMqIOAy2yui6AbWH6Yj/b7dK44uDIgNnS5jS5mNWseKPJZZSxHdKIvU6HumCkHS
SD/llA5fzuVIr9dULTunee0s37FpNwAGjLKl4/VhJKp9gXVaTi/uRCJRvJw2lINJlvn++MYYWVpJ
cXlgYPJimeoHqIHjluOntvSHQtx0bm1CGyKzZjzULqQO+efuOAqyZa7KEayBLm+gFz0Ec5fSGrLL
TTWt0sY4negIrF6XIyU+7NMSzQkL5YbvSoLx1PMEiFZ0KKahqTXx4+91a/mjboUH5RHZXzwZktTF
+e3pGedkDntYE5//y5RyNBAnT2Ls2bHGRCU/hsNxGYPqUZdOvvSJeYTqr0rYRO/I7mbZLrPDQ/TX
9vrqD9y5E5tbxNFjirpriyrGwUNKjmMclow532/bk6HAj8Zd6E5tMcERqyCcM5e5DkvrdZCLPBOs
INozygx/XPTwwpQlnk5c0TkKAh6r+Cd8YncjwCbg8ksKyv/hK2k4QIQeGdZplidWq0bsYx+ZH8Oi
96DMEGD+5lyYPnla+LjPMjbl8zZggE/RMd4szACtH/aOiTRU7sFlyyxGFlpW/V8TyTDhA/r5v6/6
aAdL1ZOcmKH4EQM92nZpXivzgLAACkUVZ0GDFZWME2xh0vTPaa26oIuKn3uW7m6LGCXe8BWlVhye
bLZRHTg4tI8q6vlEPMNRuLtMQo9Z+Bz+NwHqFwmqvoDbePlcHYbjpkqO0fQzvLDm5w46EYdkuI84
p9ZjumGjpFqKJvsd5WQlY7pgX0qRHd996/VjSTCmFOkXZw2nOH2C0C2m9cBXiSSYkXGoV+BZxnwe
A/MDpXUHiL5JfGyVwvGi0k7wT5vF1xlaJjiQ9dLUijk731YNP+XIyktvZiX6OQyty+kTX0AHckMK
NyojrPQtSls6Sz5z6KFLCu8VaptY3FDPH3Jx1hAXmuCb1OSDChgLf0OnSXcaU5hUtG+92v0PGSdV
C2tcr4BgcOAd8IkfYQObbTZYZfO13i4tZXBze0h+CSX92gsr4kHrnUY8W481y+1lDAvkbbq6iku6
5ZxNnWcUILGf/y/st5wgTMxkaWNfjseUZeLg33RureVEEJQgcll4ozG4GsjIj+ALTWYVePWJTTjK
33qu54l8vavJ5a1k4ZRLXGFotA+bNn3ApxPhqkgjkznjDKIOVz622UDuQmkqIhtiV8huvngKQRT0
3GcigbZjcCeELuLObxIh/Co/7X7tLbEZn+QTDheRk43C684Oz8E2kYrFjQmyD9BtTM6rMm/3B3AR
RNr7FHsWdIEZk0vD5kwyco69RPVtaCtx9hzgNd2KdRVw0+bfviLrnJWxXuYiPnW0qPXduhqL5L9/
ms5e2p+niwMSCQnpk13uzm4Vd9aLlKx+xSFDScIAmAyFQCzpNpkm1vnCKEIcrid5erhwMQAlaf1n
8QEeM4uX7ksbUKmOHG1rcLvRE5OxWz9HrZi4m2JTRCH3CkLToextMAP0v2YRsXiuvVeGr33ZFMnr
uFVTOWFtiwkjvCXYrHUviznyjXpR8IRuc09Hgh9Vozosq6/eVNECKtWoPu9l8vwvJRoB6PdOz4LW
Yf3vBj8SVgTkdPX/wX9D8k58xOif0xfSOvfkucQ3mzwLWfpBKATIXxz3wv6eSkPeeb/5XgQDFEKo
p9Ysze2QRAPSFuiOSfDNMlyWNowTyfeHxNvdFxYQOLaJNRlWbxrr/u3RiqEQwSl/pozCLZfQCZBJ
irZp1S/g5G8nx+NneJ/rlnpVnOv9JWkjhLe5KNLjp5+KVEc0+K6G8ePafQpS/5Xf8/uaip8cIu+y
QYtqvHi7hSzR6UGl+uRFkhqBdyzyHW90u0m65PPTZ69hd0CLLVBz7Ecc44zRA+isSJIcks0I6M05
wFDZQmexEAwBtYFHpdC1OCYXw6E51VHtjb/ojMxaPLTyW4Yqhcd7jI405HYf4ZSCCHQdol/PsCfH
zySlIMCe3NiY3wTO+7S8MfIoQErMCuyfQzFmWvC+YuKw1ejFLYl0oncEDJMJVAKnx4NZOGVUWlXj
6KmqDEf9v7wMBOy481g4tZITsbgdpm/w5TTr/Wkio3ErNbYaeH/XuhX6kL74UaDzZk0ZcbBQ9Mvp
Y/7g9fT+lLv4YcWAh/JmkG22bjtVYp4KXViRmF3cJ4OEshKiO6SHJ+FB2N0WBv/Ny6QqqdKkWvwf
N2yI4s4tgMxbMfkM3fznuHmdb08ekwLgt7v+p2dsvlr+a6SAC4WR1crlpLPIeh2t8DpZGgYINs9L
fapW99nITHTtN7oxWmobnd+qEHWKaRYtuBS4LEp7W4xcfV1KB5bLFaDRX9qgzGvklnVhV/CgA7aX
WN6yBi7o+4ifQ7wTZTHdu4+yVoEtWAcnDCcM+ii5vBvuxfBgQ3le60lYXoeNlSfdA7oF+iAqqyRJ
Iq4hd7/q7btdc0+I/gfyOaDhTduqu+hLeIInotbjDkHGauo7acwtLl32UWPUVJyorLYD8zqHPYtd
BrsIvhOeJ0KiD4ouQbCScG2DrfIvQFzeMXdtiu19xlFWjBrJ3HgMeZZizQ7eR6koCF7OyuQNE4AJ
MRARmfoiXUakK3vJS1a6D8qRTfmQ9XqNNgjHPKWVKm8RaKM3V2J5Crs9+YkbZ5yWc9fBUlnYJxDg
y6q1NAUbzuraUV8nWFprosv2Sag3G/hlJXWE/FHGRsimf+McxyY60/gvBy5Ds0eQXrR3iyvjZgS1
k/T+IxAXNcV8r8MuPjXAa06L4htssU0WNfAycJrV9vM75KKrqSXcKkYc6BhcUMM3N8GO8ItOhgxL
EOrFCwpK41rx9Petste/lMV/qMTxQV/8T2wvqxz+vWxtbaflkaQXjHExnmzIITw/o/plbPR2TCYD
dqRPOAKVso/trqR7KygtAC2v0Vxbt/YsJHgVvOey4fenIc4pDvwttp2pj9QWS+1A/6JD8npPBqtd
7XKhjQiS27PfnD+4tZKOVy2pzJvNf6MQ8q2+Ry+zop3j1AHdrRav2/trK43mgnjKU/KrcH2xfu7/
6xEAX6eEX31TPGSWxQRFfj9A8QCqdpvP112+zZ8aPwZVAKZigfMb1qzNr0MTx2zDDxbb0a3vOPF5
bW5LpOKS9mOZCJbeAhAMxbqpYETTPNdXLEFH50KeHBQ5c1uAW7NlRmRhGVJnQsCbOoBOkECkdmKA
0h74i6oF+Cf5rB8DkhBbGgsjG9yrcWt/F0OL4bIQ4G/P06MR4UmUmIOfFaOOobIrPkBN+OE7+V4r
IFZPSQ3ufjvcXV8AJqAB2ldi8sE8nXA0kuzYt+NluyHhMWYwwzEAUaMg/JlGxKkFbOmiiMQqrYKf
Hq/0XPn0qJZ+8CLQJ/z8I6eR3VHPeuGNr3kE0cX5ZOaRnwQaj3POnJcnpQ9F37VncyRwu1bntRBA
vPa0/OWDgmDFqr7Mk6XmmuVmRU9JSTJliekth2fQjWvYDdbS+00nJqJw5XOR1YtMk2dOoOFHhGD7
TdZ6Kwr1qpfLxmCKJnH4hMUBi0/hlCqjFXTb53aTEHlwv+dLhALefUrbuXShtKNXUST9Yghp5Yhq
0HlC5mWs6YbrMt482DRLlEAxOIgfr6Yw13OnjRDExHktdrTc1VF/+BJZKNki4jU5KWV4hTIbARmz
4tvKoN0YWXIL3xkTOXJi4SRcfBv+XlnjJ35UNhh6IsUbIY47a04ydCy3v5SGshEOuXSIsti26j4y
cV5aE09rlVQchf1LTCMYq2urxlaT45uUAvXtpLZmvyaPnUtfHZ/8DQdLiTjG3zlXo1t0ViQAQvQF
pPSAQp5URmaJTSqLC/cl3lbRblxJWo6ifWuyC1Snxyp4VfTIAGCHB7abwDtefTxkZnZFvEguaCTI
vrONVC8IqIIIAbaWE8s6/IVyFoCcyPSKrRDPf3MCwEXDubsG30M/1xwu7NwniU3rQmvhr+MtZCrn
XuQ5wY0t9wWZpq/n6DvwUmA1cdfLbwAtVxCnpVFDNXTq5XPD4Zzuz115pmcnPK3InDjNYzSJoPD8
HDsoT0NTL2Iy/8s/ryyC43MvSfdtVhVDKkW1WPQbq2vmaR15IFe6c/UTgi3EIthU7vxF20aOqEYW
F8eY3sVAUadID2TEmUMC5I6pKjbmIJoMYDk0ls0DJ4O6Ndd+4TbEof559Yld8LjR5I+YwCmrOf3h
KMOkncJnfxLzpgERd6mdNdK9gHjHVHpeQuCeZ8qHetGmsGwTDPG825ACkMbrwGe6gZaQcfu0oaks
NOXVsv5WmZZPir0PY+VRA0UpHGEdl+X0SQOCZmS/gfgjJpKysyJkDOZTl3aQcSRo6zV2wnkEXxf5
LvnHq8+qXEb5lTyqrm02rXep7v4KjdLdEj7axyeHGLjumEWyeA+k4bvBEfmlJVSW4QAkC5VWnwft
VG7SabWrnU/DuJFpYjzmbrcSCaVzQuF2KtITd5JGtYUx7w/4MnljIpCtYG7Di/8nqROAPZ4GFnzM
JKs1i5jLHL+U6WWNDIFJjcXzW+5f24vY5U5JNPfBEG3Y2Nlwo9H8w90qXwu3fF6Mwi6cQnymDQoX
tM2tNT3WmgBsz/ia36bdeOpubYIICEXUusVtHADRN6Jz0XwokVdf+gpbfKSicdeDadHwQAXge2jo
LrqE5cdnZjR/cItpugWNOj5JchtlZ1yGzVwJzIEGrgU6kSvKb1aWjnhhVRR/5WSqT7eId9EJ0eoL
5vuSr6GKpLICvXOEv8FC3uMWFVZGNiGbcW8kecDf/JshVjWZtz8386KJ4qYnRpQVhm31aPgGChDC
G+jccGi9b8s3sUJowFUY2LUSK/Bv8MKsiay7NEaFEEBTIiIs3JEm0XlZHmgRq6vuXkZMH0mgxZz2
1nvb7IrlnkK1PknSRXu01aL9k9XEMhWms7xXg1WPP/BZ5rAkNI7ubfSpmfw2COhACCcCWxjSsFEo
CTLY+YlNXoWaLqR7967N+w6VOc2Wqf/71G+LwhN77rpOcmoukKCaGIxl0u2yexhZjDdj9P+akamn
qx0/Mjlp5ETuT8tCuhaduOQx+ZZs2QY4JUV1eOClTo2WzipgMSywHT4hoAsDQIJDgxTYBrkYaLWI
DF2OGHyyEsl2FixQvpwMLM7bM0nw7G9Ex5hfiyGfU/tFrNToRHoi0QdB/kip0U58IMUWt9vxdXQ7
xPf76+9LqwFDH68jg8PX6TxANs9jOWUK0b9ZhZ/4kAkXeCtGOBFcxcb31ZUp7G4y9sxcW+/xiJvr
wOLvtNIqMbBWja/vd2hzETrZWOuefog6O7Z0lgQ6JaoD0Np48LoamSv9hxRlCScjppdGTqoz+Qfl
KsILsVa2QnEINfQzaK2kVTqhNYFW2YNC8SQGNIOW+y9tEIL2mcUTjxR3knZLn06O+rXQf+lCwMBo
7CynaFLLQmjDeFu8NGjtIja6sH3z4QLJcf0Jla0EmaLnBtHFSi/3ZhXtLXswAKrachlUgyES1nZR
iG3MSIkf8Hy0kXZn1yvwTXzlt5PqgBqgiwAA7cVChFjxHWuBpktAXGx377EkbqjCcMR/FtOokQ5J
m3xcpgVKH2O4JbdsGhgQ6Bw7f/+uRonOZvjDYfIB+BYNyC7luJZce1x13LIRb+Ck/1BMjTnRknvS
N9RLH3NKUNc6bYWsSuG1rcW5WZQMuZX9sKkIurFmTAXGblS33H9L7gC0jh4M6fuVpDIbPYYueLEE
rAF8/XC0zXWMpmLhF/Eoe/8lUguBgHtbk/kBT0hpN5SBtyps2I/X7sJgunMioVd9RCyylaiMeblb
8CgmvytgnajoheqQT07NBE2jvIx1quQ8Pa21s/S7zwPWpvNf0hWI472gIwpOhY9Ca+E1pL4Kdw1o
M14udZXBXt2FCh9LYcQeIEPbiEKWW0C0YAf5yT2hFeRA1uRTTgvXwN3jmVWMyl9fsAE4pvH9XT8n
S1aU/gs9weTpv2Tpgo5GjRVOPDemg6rTgWbx4TVLSfbN5Tf2Ofz8vpdmo076IH8pEbk8Fo6yJ6FH
NJxsm3CUVTHGrxe6lFa/wVqlOncAYIfFksgVyFF1nVWotcwpUuelQ9THEVspZXVTO8ThIS3Ua0t1
YXnr0+JbDCUGPCGX5Fmg+bvYVREAM4TDS9QiQ0WUUjXi5sIF040lToS/a85e8LoTovkuKp9XXEcW
kDRI3PWYfUDIGK69X0zf4UWu4MeNvpTp55A+SxRVcNYISW5GeeayyExRoxnzDRjszdL0n8qd/gRT
aEKq7cCYEpuGuyx2eqxethavPL8Uox8q742AVcUEGY3GLYCj4HBKWiludXhjGySis+KQ4tTcI1wB
U+kxhnK9nVnC1DUu5BuDtCgrKLTkacSnFpqGTCx6154RsZXjZLh94O+YK8ZG7KElISyYxxbSmwV4
6cGaTfSOjdCpgHKs9wRk7lfSCTstb7hKxC12c60jl9DWp+JNT41zJnbWTInPsifC9To7cbuSDJmo
WWIpx1rawYApXaKhjgCT0heuB+Hn34EdURsUcnlBK/t+yK87Puh7ykuA9DV+vGlVL48bLdc+Xitb
9Jw+T8rRAdkPbwXfvC4XnGSQXEmpyA6ULDfdEl+rO6k68U6SU/2nMlCdpsHLWxwXeOG6g+k+IoUk
VBGVKh+LsJz5f/xrx5wg2glmFZb3/1rzQRNfsvTLonzlSyvO8HkdBa3d+bzFj4kfXHGcmINz6LHk
lNhZQLoSSrp41mCx4EB6ubCiHyxp6fE5A7z7e7jxCgpku0qp+YZwlXG/IdemdWBRiAn+xkMfKZD+
/ZzBn1X+MvvxGPfyRYhOZsjERX9uYzKi7y05hCIc7e0Wtoo8bdsLZ6k7S20ty7J1ZayIJOBS7SgX
Wfdq71tJ9T3E3aKJGyqWftvUsTt/FcKsPsocNuejRzjdc+nPoZcFb/uvFZuFbDyd2ekpZydN+1h4
5FKlA4tBAgyV5V4bLv3Gdi6q+Xi7AQTxmydGZW6UX5pJn4LA3fs36pIIdXVIi01xxxq76oHPc04y
Y64tkD4tS8NL54bCWsmBu0L6PI2c0t56x0jS9eJ0rZkBFwmO9/hAeYKIafsM7DAi9LB2YcegP4lu
/H88Y6mBJX0AhqDsjLUAYevUrteAHZalC/q8EoBKXL6zRA6/RyA0NzaLpnyk1UWnXalUG8hQrxdb
ccBD14lbdbj7DKqVrmLbFkGE98yRoEMO4TUtn6wgs5C9K44YgDol2i53MLjk3mCJlqoUQXjnc6vT
2WhsZL5aApPEqdvTfZsHZnm85WTjUxNgsQNgoyI2Z95tq/uv4gQ2sqP83YMru4Oknqz2qHTKVxB0
prDf6N3c9BRtkU2PzfJB8V6UbPCSGpiBfqow9MCTxgSB5amAlutHTygxO6N2rfNvcZGlZM4KNCIw
kir+IBm/x5LzIHpfvh5wRDwa3mR+/lePSn7EUSb8ZW8/FBKPHMzxIKnHVVoM40cIg3ynELMoyfJn
6rNZCb37ookvNbB6PTBkBH6lXAc5GQYbXUK68SiLQ3VPX+e5ntpvKZX596xbxQBml0PSAEXrEhfI
WU3/uhw/UJRogOvaqcwkY0Hz+IZWgxggipNAWD8/S0KXTlBc4/xKReJvaPEWejOY7uE3k2jirI7r
2YqDxF7MFMzqoEu4/UV+/BYMQZhwZLq8itKQOvZ8el9kQ8sHEmiavjoLT40UhqvmwN8FLum7sh7V
7MyBFHqKi6+gOBLAuB4I2ymsUBjQMpfswjUaR11sdcYAvj9PLBlHP/l158ZR7GFSot1XJSPEygXW
j/UNDe2vA9QFbrpPkHDnMyNHSDMOI6IpeURxT1wCjXnqWkQKQMa8ppHSdlF39QuUnulW38KNd7J7
bM2XK+xu7Ouxx/Oi5bBZfr+x6YKNcS0JSBJMgHIXNRtXh27RgdmVNPgRuxmlwjNtGxZBA3kdiYYa
0/HbMwFd+UXmz2cX/MmJwNTIbapoJRj30Ufs8SLRRw5T5YDzhIFGQ2aL5kfBWeqa/bk2Fj1QlyKy
VAb00EMBM/uXSSb+CDSHjlhEbkK10Y5F/RAa9pUAw5HHNgjxaXjWrsK6Zj1CDNUX66rrIHn+6OrA
Bb/HAz8Tc6rQUqh5uakn5amFI+MV5ygQrdf8vOAJYgeH/0C6QJxvF6Ij6vbr0JVibRQrLxPXEu84
abgTEciAIy++X16mvxXn6Al45HqlX8BSWRT5X15FbcN450az+H2SJdL+Q0Vm2L6YT5aIEKDzlQtx
3pcDQCAJeFqxfVBh5CIKOoqXw2z17+6E3jfin1AeT8vJut6ReMWso+4tR/PibC1d2COQt52VCO1o
I/atq80vLX+O4aLEnSoV0oNnlwjTBa82TrF0pv5BO+I5y3VHbEWDEG61HEYetMUt9j6M46g2EUm5
hgAVxAS+f+BiNtjN/Pc2OaI7yopFPD7oaeGerVt9ojUh498ujn5bLVIZ5iAcFnCVOdqV/QDk6vH5
CeJI+DVvRJ7eIYZ3+K3Kb20fz/umUH90d0N8FmQwbHwFfG1E0vNM/7cPGdGSLpv3X7qZiOiZ1YhV
KaB78wrSmXsniKQxfyF9YNA3adSDA/9EOtTYAAX4aaZWQ2+KfTKzseRMAEAhFerUStD2hZBCxyXy
nVX7yw1NQVm5TczBDqJWeVvPrDzmEfaYMykkuqHVM3uInj6qCqSN1gVX3KJnUvmAcxS3oZfhvgmC
VmeWl2oAxEsVL6QRRKPyc3YkQ90RAvQWZTL/x6pc0RtzeI1lQ3NGFFTKEvY8iLEkTYgQktt3whS8
cKv8KMCH7wA3QTFnc4TxEJes/CZys2u4HlmQOToVrxwg7MeIoKrYy7d6cONBMEWj5BcD6J5/5F3w
IDZLo8HJfNgPNMcJpzlNPqyxOmaBmhH8ZeqcOUJ2D+rXWf67lwcPn72/ymWQ3iGhx3T3B3HLaXIZ
l521LrZptjRfSm30uBcFbcC47o1rxtBJOhj/feODKjneWcdxhf5WZOjbuEvcA8ijCfyeWGAilwN5
A0880Pt+TyA2yQmXO8muZ2OVk6X2ePcLaQEJN+ek1MaNPKSs3VOojfVhKyOw+yck6vG9PyKPcLBY
KdJNANK3Fwi11CUFAjAhgOMmSIyLpvpIJkkQZvf2D7XVW1vj9hkHad+EsBQEsPo+p6ZJ6tdfcgy6
5icgHSuWrdvCsABWlWrwSryM5s2NOtkYy5wFC6++b45rhGDUEb92nUNOjy+3zOI2GBgSdJ4RhxU9
A/IxcJhvgaxR3g1HUr1l4ZubVFX+lckBpjZuVZM0zwXyknvcLauajXhcrA8EvnJxqdM3JS6f5tHR
iEHkDJ4d5xXAVSVNkq4qZ1GGL/BXE6kcNI0ggVts/bprrPQHRO/gfivPX7COQq7Wr+nrGp+sDl38
mDJlMykD+Ve5x8AtArvedUwb/l060u+QJ1YsqlCM/ZmbnfV1qcKK3JRA/KgX5bCvuSZ5Tna3vOXj
ABT92x6gvgnwGxTi4uVCdnkv0Fv63mhwOeHUrfL+YqoXKHB3rrrn9NXRx/m22FcORq6EIqhkG0Ln
kQSWE0oqrzN5OWBcvoupDfpKQ/0dLCeFkiFq08esO7Vc8WoOEENMmHv/R0Pi2ANAafsM7F9sLxgD
CcxTG3I92gwIcMqwdy61yAFf3+PEj5mntY/WdUwUdEs1a9Ig1SOrPbqvZLGXOxVL7FdZJbJZ9nNx
i9R3qXe40vf+KbTMWojkGVty8wbSNsuM/Xnb9sXMWifdzCpaRbDbkzDsiFVXm2dwBHvle5Y3sWhk
rHg9rPjPy8n/2R2XRb2ZzcM+IhY3RBZChHGlkgHTa5USfJQKfFgNZbVw6JCI87AGCUWhiLdgRITA
N+ckwU9i5xQhMAMvvhutkbJQgFoHwRDGqz+19t9KESoAcERxL+NwBrp3QQLaQV7bnK+iXV+1P6mj
D54IWkiGVDUfqVnlcyUiMQNax+0BScRHSmePThyK7yt6QZAx7iV9WBNe93iI0sYw/IAIOOc+6CZ2
Op6kH93dGYtdEGErN8HwvpPgEIJ5Ja0onAufw49agpQFNui6p124IKvHI8CHUVgNLFxxxr7KUvHa
KsDDavUxc7optbUfKFOdCItEmxyVrNpGE9fnvJb4/deI6id4Ws2/BVAU3VXFmcAD+kyRV4VqiCNy
NKa0jIc3bMttWTr8XyFn354N9/gBcwu7oMXPXFbngrzl+wI5zFqL/mH6t0rK3Q2CcmNU2STDqOFs
mNjHlycQ5YHxjBZ23rhiD/1UXv899CLeyoYkNTf1AY1tvp9WAYef3pOGnEycEmPqfQAulpBkhYzK
aTo2c7t+hOX8VSTRiuGtx36e4wEYK0Y2y4yEYesIefl0cS06YE5+OTRlM9twkjdsLTRCedtl+b63
tEaHSLNRDj9tcx5grHDRntjGlbUXcJzT9AoDd/rAU/U1YKwg2pAHW9wPar+0jAvKS68VaOO6NdNi
uOL0a+CaLdBnX5Z0EaoKoGf3yZttByN0K/AVVWlsZ+H7TCc/WxdDSxZDIgvWb6JWdTOu8PpCzv+l
AeOS1VC6j11k/EZZXvBG9zmWtPbg797Kt0aGZYTuF/H5bvq47H2LE8kRHYzWM4TnwlxeJ4lZ7/T5
kS62HK2cGReGd0OLSkbpxqC0hjCuYUFEEd9hUhBKu1zCzt/N1DbJiUPrndTn8jUyAVkpNX9ZQI8M
5aWIJfXWfYKcDS4oNsFodVCdQyyZ2GixEBi7aflV5sTHhoD+W/HK0Hc7aTlR9igGDRoJp6XkXHpx
7ZoHjGvLgNWjbmrg84if/sUkoGYw1NxcURs1WnhNtgrFmVDvgAmuG08HtarG+udFl2jYfjnovHN1
9Tx0y4apBi/1PcgDRH6ey3OHxfYYRAQi8nr7QMvvwOMiIZn+CJSv3Kt6bPVXON0lTj7FTFtJhSEm
N8vvsgUVlkA9nNuF0IGTn0CtTrZPCYiAqq4J2oGuxK1ftzqIS+pFrcXonlatIIEL2IYfqYg2uSKM
nfPocr5KjffDeX3lf54bkzX4iSZ6qQa3suq87UQxpQyEeM2b/DxgDEfE/khvAw9oO2vhBtyaaYIX
4Av7mVzi3XRYUR/5UhonWqQNfxWTQOtdGGi6G3Lvq06FNDXZH6cMlML1AzeqbDIhmGvIXNJLOZCE
kp/qF3LrSu6p72njhzv+if+/U6qHqCp0eJFlue7qb6yTRvGALBVt+okFQfCWK7tN+7jRNxrgnPmg
Iwlepqk2RBunlCE1t+zC1VHFH1z8bmGWy0zER/CK90LM59V1ef3BMcIJbum/v5hi37i4CxQhbb/i
tf2A/U2EcCBj4qPdqDTQN8vgDkDpt2NP6knKFKKO2w6DPXL9zyZhCxQSYuZjV2hzr9/HMMrc/CkB
22ex/Ro2GsZCs+K4OuczHNr8gbxO/u2KJozOh8pI8m1wi04rnW0e33awzWJVULEXvXj7zbMWI0qQ
lCYYJWWUsUobb95hirZV+RjREGSFPY1XjhogK0mO8mkAiqME+P+4nJL0mSP61X5lX21HEbP5aKt/
Nwwd+HIuDZIL7TNUIMAu12yOTS0V+nFJg7i4cU+YqNqYK7IggkaLMQQIZMpUt9ztsaQUtDCqdeme
UPey2uvId5uIHsvH20Kwigr4EYanPkkgpDqumTHl5XoZzw59E2ts3qf3PBrPJwSCxXT9PpV9XmrW
jea2kj7u0CfZzl1dDsXsw6kw/zR4a5OK4Lb927+gSvTVpZvlX3vv4ynVeYLAGF5mfuY7KYmhpNF9
jsjcrd6QjiYie5AtMMfLNh51w9iTLoEo0ODIoNv2Ogdt3jvyBo+fopmSYXzyoV8Bro78PmbGggrL
xtz3v6fBqki3qxTCcPVGWbKn3BUcdnlQkJT3y6B84Y4KHwKok6d5nyzAoRVyBKhri8WghXXuLmyl
JtVxTByBth0YHD0ESPXUpUHCDSVu5xucUDfYS0Cg6HNaeVj2tIW5o5BIulFIzegfZS88BJo/h7CO
7/kPqw1HKQgSAHPIWgbfnQ+tDoZ1NLoS5QCNO2P8LWL8f3o13t0LBBUjTvM4m9Bey2AAAZwU9DPF
rPPBRAWP0w/chgaYZhbPkqfdoectw1+C3Y60hV1O/2y7JLrCZYUrDFARsCjBpgxK08Nk3MMionPh
QGnmuvFS4hVvU73f0kBQomSJHAyE0xQ+jKm/NB6HLWtHap35MZP8/U49nh1Gk4Os0mfazmtwMnW3
P/KP3Jg4UdDz/RCnpj2IbnD5iReqHjF6LT3KsOC41hLkyXHx4TE0YYmEZza4gFhsF5Kbm6Rsk1/b
crcPbM6+LjD8t+EVsyhJTbk9jncHSJ2COXEBpwUilb9JVEcm6FXBQMo7W0LH4oGB0Pln5CQQTHUs
Iy2Qkc84XM0ocbFPQYPWlYYDE8qzWMnYBx+IxlEsJNWJNmbwBm3PYfX8zmx0nN/H+tFwHt6ykszV
AO9elxn7arWa3U6PNkGdwvVWiY5sS4kyFYsSzwoMt2DkUEJPV86WG76kDu3eYRr5DqTqMKJobbaa
mSuKmCcULXk9I7Pkqexu14B6eVy4WXiQq1YVlWLOVkqL6iw/psNQ0FhNgjIhQsGd4aq5rQQR0yB8
i+QrcJKmu3TzgoPIjFTnee3N+oWc3KBzrelwO6mwMnlMRT/gMdSntrQSciltSRPAxZCbUaPUey0y
cX9VgU/yMrrAE+n6LKI2J6i/F/sQDQtmk/lCI66odbh9iXUk0GDe6dX/eb1Kykq7Y8P/8MQbZT44
Ra38O/79XqrqjhdvEiMKoszVAfmDKq76nNMUXdn0wtRw0CzyCZqb8N2KuWzagfh0VIZgvwkRicSH
OEXUyce6OciaEp8feMxTA0E4QbRF34g1/cY31DO59LIk64AffFDmtmEPs7F4SLw0VtVvIuok8/DT
q8hD9HtNk9qrvWOEQKv6RUUXwqDafLrkfjsRHaaguN1zy0Ip/F4rMs6Evma83yKSjq7bhcJ2DXjX
JtrF2C7Ovqu/FR8y3ixlVhpdZE2X2Tuk8vUDVeAIcapRbYWTvWH8gmylCeh5Xhn1SVGaQ/PNQoOL
spPb5/MFhriH6XUUQvJqTsmmyjsyIzTC0nJaJydGmo53jRsM4tfhZrY9W3zT3QjZMdJeN22Jeyp8
eXP6xpZhLjqpKOMcHksS1wAbLKjQgmNygSh4ifgT6RbQC6eFmOP4BCxKrEkD812SUt9rTLKveQ7q
XCQs3Q2m/1X1WYBjWPwteaPwG1zd3bxJ7ON/iIV/Mx6qxFFkgTA9gq7aVZoHnq0IprvliCGoUNSU
kOrygS+2SVhVxIVDJvM+zm25ZMVdjdGmR45+eK9QMQTm0UIBk60d63uBwAiRzdp+ounk7oThupni
c7XO0amihoCD0TYJN2RRVPNT+3+4L4y8mcO41GSDimYtkwao9OsU5HHCeYOz8BeoUwqTMOFdL6nT
srrpIWSPi8zg4O6n2M+sahDVHzi1CBRwAdbV7pvd8ueN3KRefUTbX3+SkMEwfzRAuKdH9xzTv4FI
5nG0JA6t8ajX+tardDf8UKFwikTvGPMnIaX0mh3wEJu3MfaMgvur4rt+kq8sLRRaUhNTJt2CsLqX
7F3nFOB/CvRZnhTdZlG2TROeTXoeyyLot7U+LpSlgVLjzbLOo9nMemy0GrP3KH1oWcS61awLgFJI
3w6X7rqPM6oYP3r5DShIvmmPZvam2Md+yi1Ymo440NLamtrIxukxv4/olJ8sc3AfLyQegLGdZ6N/
8xD7agKvJhLIcAtZVrDdPIJcYd7LX8l6PCOH257xPE8oCRjas5lt9Qw4eD3KxvcM/oiNrzz+zgaS
1DvqH9HvwRKq64Lx0qBrlPE1XCDeeEXQZp1HGuz7peEEz6QG8BcStxN6c/5tb7phUTftuoC+rzlZ
63AlA/mXCHyn7HA5PGG8ilCW7Wi/WnztU/G0dtyx4yKHmjKELSyGvFTr8+Ph1a1O75a4L1OGtYlN
V7zmuoFxd0pFTdSJsCUCK5ivdGdX/UKLtFbSlGanMtLSP2iL0ApJOlXW2+RTDV3CzXgb8fCsgrEw
8jF4U/ScAwwcwi70iMx/jTVagGwiaERYpLQSfZWm5izsODGBspFSklIufoYOQntg8VaPu3BjCGLc
l55yU43dHNcoA+dvnDQ+oxVqKynXKWPsQw/29fmYKAKY1RVF4fIFJEBR/BbYPsJ9oHNCIOVH6aMb
b03udRziHG/CzKfK05L09yWOrngIDto9RhCybd2lKit5io32W1+gZq3MrLigJRdO7KRmm7xUo5UR
fmgbNG2OPkzakmzVhFGPblhwAam2kMXX7r+J7NGJf1ipNUbRPBHwl02C/HWvomDT4apdSqu4oyY7
aDExdAgx/5forGkZj+xLMVCoWUlFvUDcxSjXz8zv4hdqG4w0MfGz/LIGKZjbxUHDvPwMp45pqw3u
YnA1OtxW0GEg/ThrWcFIWSNLw4RbyBaOy/pmdiB3Lz1lRcTuVmyYww1mxd8QLjiVn6HSbnK+38nR
Iz/DnkgNrfbBaa8I9MQ8Tu1gLkoaUgJQMTTX9VvoSST+ktCbeUSw3ahxmbB4ONo32PrplofyAOU2
RlTYUtJoQ8htqOhjNNfurXlrW3CflS4K9c7cdSDUN5rQf0w6twEHRzEvkOAw+K8d5HYs/Fixhy/f
b5PkV2J6ZgdT5KzDgwedZO8t4yWS/DZtG7KQK+rOvBzz8NExCSJ9F1TebNBsC/JOvDubC9TcIe2i
+8CY5WxRpRTB7/xJU6KZ6RjUjPVz2R2rDP4EfD4qYvdCCJ3pjlra3psInVI2IGXOmxzPqqVO2wao
Zlkf6thmfOZ4UNPwP7Y8Kz39lm8ZuCp1Sf129+Sfd4BFQD1QteSWBuI77/sDxOObEck3igjZe0n/
JXYOLGtGTT+jxRijcNZD7PhvLAmOpUPW4lWr0vEH3hqG7v4mU0lMwAHulZ2Fd0kCc7R6iJ/FQQI2
zJYpWqDlD/PAbDAiUQIcbJTjLbUcOCrzu+KiiREvVXj63ekNCbrH5MiE+Xa3fqocI8zLmDWz3A3+
o0PKUzTspJgxwOrloXEfRNw3KML5uLUIMu7hrLNyZ9bhusOZGI1oK6+nVZmoSqInXiOC2QPsG6lH
jzPG52EWdrmBh/g94jFwb91eW+K13cd9tkNQtAFvIeW35MDPlvixXlf9B8WBVEmWUy1iH37/Q4/Q
I/fmnSpyFs3i2DPt4PBO9Ve9cMCyUd+mn7X8yama1ky+c/n44zyqYDq7bwM0gHYa/vCXErDWGOy/
CmSv7VX5LohX/NmBGsCtRek4aDgIPRpKN1WBxgosMnHPbbp5v7QKOfngU6RCU0pjLzjiceioKUif
Hrn96N6mWOxEVZMElxzlSjB5p4lOWaZ4M75mV/t77bbD45M4YLXquaf35lRSc/fg+1Qx09LNKoIF
hJhDqFnzeFXx8fLQrf++G/YTcbSl/nWebsyE3hq/fhOweZbtrhrj4yxrZYaytskguRZ2834r71Um
avPCuVFRwaQXJJqt7NYmB8JHVWM18lv91PkRuToY/gz6qA3bXrxSNto42igvY6nBLrAeeUWZ4imy
9TsONtAbh4CfleLdhNrToFQ57tj+Pt97nQAJjNmWSpmK5r6C/cvkK5esRshggFb8uijLoOEguuCe
UNb8Cig48b6hqfeBrNYZJgG/QOZA7bFsWR4xkVGqr5tv4Nte0Oik9CwFj76peqK97b7e/s1h2wOC
ZtchnM48V1lz+syBA75Q+aVIyJLGNVB9gllhlhf4N93NtQTN19YChbBIitS6OZY83WbfDv7AY39C
Mwf1BBamll7L7OOk/m+52IpTNQt9j2uOpEJqlQJFvMYSkRD2OHBK6QfG9VAuwPC5jVgcR5Y7jT0l
eTXzMP200+HRxQGh9Ks0NDdTAUppChT9HALK+8Wif9MU1Ttz+aI/aqKlr0pVgudB18JVycb1G89q
WmZmj/1wBCAGopOYddzRQ3DbgT1xKzHhptPDwfWil6k1BjG1YtVhzpX/V+egznUaJ+XqiT+6UjCg
Sq32A2SOyk5NYHXT2x/OG82Wv05BD57LUFXpdVEexyeN7eSxE8DVc/rj4blswzUgt0cfwFJi3EcM
d1CW+NKHjBb+p0XlCpHkrQRlJt1SwIf5M7Ld77n5bbUc1kVmfdiXN8WFZZf618RdJuxbPUmuCCRf
Gbd2Mx4Da/Sm+wvTZMU2xjtOnBBDOxQdI8eW7+JWaHWvQhua7BrMH/R/cH4nu5E2ghw3uj6GEbf/
a8k1GPVwHKQhS1/LhAC/bqDd4crgjEQlHRS1sXzbD+Ui3masF4/7JVqXgnzMF8PdD4m2bNKlBkVW
07UU78PN1ZfMxRPGfzZmA2m9wdCPL8SPC52lkRoNS9fLdKP4X9WTzs9+x7kR0eRrYXD+5KG+F0j5
sj3I6eswPBUe8xgWKjhu/BgDzTUHZLFQ9RCA46y0WGcFelR2S+IpMfuDe90LUP3cMqxdsbEPLCfp
vLgoVprImVSed2vAN4et6qH3cCiDIlSBl0gO27ddnnmT3QjpiJO93NdBFuaRFord8eUMjOlN1mu+
lp0gBMPCv5jqfVh7Dmg5Wago4A/Qq1gbDuTMJJHg3u9xwYGlUJDbYQfmpgkPKC4grBZJGjKt25r7
3d91e+fkq4MjwLQqYvG+131M7WC4ONUCgSS/n5t96dSp80fPa28rtky09Cx5M7l7gVsWclDYltTH
7ZtxcnyMJY4SpGJal4xW/aMMMGkQ5IT5hiDJ2qiEJmzuDVl/PQxuxROZCDmVNtAk9GxtsfGJCKWh
5PdZkTJnd7PPFBpuPe5hJsg2xBe13NWWaVDvW2cg9+Uaqp9mjW3T3VbnmzQ2a8mMd6e6y2kvXEU6
+6+N/XDdtm3CB5LsCJphtezci/GQaUKJbCqcO7M8gYLBR7j8SBQ9IjaPN0z4zvW1sgHRm9OblSTQ
qm4Df7m8Z2q/BjUH2G8EJWaBTVGRmnxcUlqeBcuPxiTFuG3QFBBN3JXLvruOzuYZVWV3oVZFZK2d
2isqxHlNIK8Dt5k7HEEceGYQSBAHBO6iwMM/+pxg5wSsDOx4xhBtgEY6T9bhdve2BqkrI+bvLxj7
7Pc1AAvviCRJbfw4Pu9ON5TDbnLjQSFIvO49xqRyrEfWDNJWt3k/4+KvX/LfaPdNUbyUJfyRcK1O
X/hY8pwEWrHqg9RzTIJnllPAHptxlyqcT8cc6r2MpPqVDbujTKJUzKLet4NO91/FkXMv0Z2s+yT9
PUXtJqro2iMRiSz1ZW5ErPChOuVE+O0XfTgjaegZ0l9kHQpJr8CKoiOMWHf8sE5Auu/i2sLhteME
05wrQqPWyvs944snsk+shHU8Q00ZmlS8aM7X7QnBnh3M2ZeBMHKt0+QkoBackCTQRsz5OTl3WGSo
EXlp1kNjScEOERg4ev2MKRnfx03GowrbXc8EXlgbut2rh2PJmWivb9rJZ7RfpvUJIgFT3t5n+ykh
QEQOyyDBmI7Bd+Y56scprB9QgSVmeU9PB6BQet+xDR+ilZ1Os9cg+RJVodyaYzWZkuLW22aCetId
L7b8n0jmSx8Zg0EyElVKNR1zNOd/fkic347/olNVOjswZbePQ/96/XX+CiKEdw6qdEDczMd9/QPI
WTFGkBHxodP/RICk92u73Owq0us7g8SZPqQnOjDGq5S1zQzB2lha/nZnN63LT9Bn61O4mGDioxrW
hBHA0dGDX3NVpwvxTHCZzSessIwJjo40mm8BmwCZYB5xxai2/3WKEC5TZj1MhxcXVFkcVKX3W8Ri
SAB0k58s/WMICt82i6K5N7JnIYubqdo4vQdRtQKw2DKHXWSl2t8MoUSHesciOvbGvP2eMW/1f7wP
U3c0BjkkAeZ7cS23dIKb81H6qT6GLaUB56VT3jJu9XE9dMiALC7INPtePbZkXLOGDNJ9XpRcJkjz
vjljUrX1iI4hP/8FuSnP4OTfR8WFntWx+/lP7U0gmDoXqf8PIuqaUqbOE7ENMkI/zXWAZkUjJ+bi
qcV2QTZJ2YqbyNty1fieRMbxL0ZkebgQQZ0y0NbDMgi8VgfLv3j86KqQRn16Q3bYTmxWUt4lduIP
rGxSBb3hgp6fYdqIyS1Y2hyLfqPDP9FTZIKTe2wOIH5Y8KKoBy7pGTRZdDEE5OgJH2iXSzT4tb6n
VTidcKk1Ot3y9+AXb1ZcWhAsbPJu4y5eLsjZMRqkGQyp5D58uzCwBxLwmXou7TwoLOlYMmRqwdpW
JzNXBWicGNZuBgBOmbYxXLeauwxCCfKMhrEv0/fG4sJnIi61l+wIf/dUhDV1PLQ2NRu6t+Qyijjn
vk206THBaPoTh1h9m66fuScEhc9wJyHE5e59SZKDyhVN0X/0gY68uIyJzKG4+wEBuzRFA0Q4zhBN
RCOnqFIw8ar1+mLtjCYg+YSExi7DU1SjH3UiPseClhfLisgrQ3t6yaabDCXVI+6MMFMHiOMSlF0r
uXJS8c886Q9KGQOZDmEq5WgaAlQC8Cs4l+GLD8ldlHuK+5fGGSZxHG+zz23Bi37KjtOEilggBhmF
x5ldrG5iEqxHvraDyncZ0MY+9hFmSlqkhGgUFs6pySAfwBLESvTBPkusD9TtZo1uDYmplWLujC0w
nL24jCWQ1xvyA6bto4McI7moserp7LMajF69RMi3fawGQTNAuBACbZyiCDaLzfXMwTp5lmy+i/y6
v+ygBQgcVU7jJ6gBtblWTk9bmc/eaRwf2HBq8peGxaFco8GHaFIxBc0Iu73eT/dGRqCdJ9W+74j9
6/qw4V5zvF/p0uQE+vqhnQExaOqRgGvfOlLRobn1gel09uRy518DmiiZM9q5AfPxZglKQK8I5doz
6euk4EZNyUOInyOg/WC3dQbvBSATBIBO6pESSB8HxIcvQXxJQk1uK/WzM48puOzgWmDgtngBi5K7
cavYct9+S5HqHFd51kPDM/t6fzt/Hp4DLyob+KXnb6D2lKIBKMUtZ5Ku9lQ4sQBz3mftT12c/6b3
IcxGRdsUuBWvYrLRTwaFlyZd7QnYK+iI8zH3sJnZ1+4zjgL09YETMs9OBFFJ/YvV4aKq5e7DYirF
1MdjUl2BDT2318tF8SOK8cHlwHyjQL8abL43CtkBBgClhzFnj6HaAfFPjUn+0JWJj+yx0x8pQHm2
tfws1j9kWeYYNQcavWjWfJu1Qre5TkNivddvuo9E3zQJAGxkSJCgrBwoYT1n2lFZf9nuePvEGWch
AhSbpltGEblS+SPyZcfm1mzv9hvhC32DiSUqLo0tZD7QG+0ujjQ4p6Y5ZeDYrr3YYzquiIssGbxK
lP3r99mdEP5iKHeps/Z+CpZW3orpzEdM3wG7oKMnmiYS2W6I7G5Iken9yPw8T5LUN/K8m3C74don
4PRpEsSpz+n5LXGC+vBhWl1PAwO7Tq+S+ZkAv65BjDWSyU4fHKIJDzrOYYXfmQoNChYGatJYks70
KTjJ659IRBxPUsbkMbDb9daMWsq8PGKU8UyIfB8hq7KSObQ+VTjVqBIgYQtRsfVJan7FVEWKrSl1
oExSYZvokrRQSuRaAn3IddtGapEhiuC2BTnlSrtFpQiMmB593/kgqgvOIuaiEkWnUVgsYolgDJ0I
rRfd8E5zx0e7ZY2VhKrXgNkWLvJ3MDAsuOQ3hHwzSW1Wiwk/ZHr/FcfpGG1Vfcq/YyNmJVcYj/YS
TStFNxqrRNZo63uO/xEeXaGqA/C+2Q8mHSB3fEMygGL1Fmkqj1nhGubEbKthgj8o9vB049RhMXKf
hAdHB9YYikGjt/CLYqrb5wSB0kYK3fnlDjvztuzL0wStnGQwDHvLVYJEZoqxJbOTS4zEJX8pODjT
LOiEngv0d9SeWQWsawcL4CUM2DdkhO9DyDzDU1uaw2PUFsdKSf27//i5A7PMWGPmq8XDYcSmyTjw
IFQquxjx/OcIP6RysTbXyxAZvwun+qGeb588jGh/akCwBZyMFtIEcNDOVzAa/OyMxxSRpdLHyNyA
agFCFuiIMtmh9s4emwmWd+XQfSPld/qJc3H5UcimlZrqRq4HPAYzt3fNa6Qkz1xXdZAvSldFeymk
WZJ0KKgMNgD9iw8EYpolVAW5mooJiaGWGtTCiHzeZZSxwPdJougsYBTuV+Vtcbnlo/yE0nieOYkR
WLoOQzcfpnS59ISn9FlPk+C69PvLy4vbIqNILW6YZ0VM+Ar8ZnHwrEPp8KwNKn/EA7BWXYXGtxwO
MNAoQtZUL0DZoB0kHeoSRGLBIeCSB3QkSHY/Ltyy+wX46nb26CnsvqvpA5fHIaVu/IX4n+cHZRWV
D6XrHs3A7ZpYreEoB+jNEqBgSoGaSKWnTTLHY9tT5ZDvU+KzXtLV+maYoNvp2O0Jkhr0BmxIcdRO
5+K0R/ZAbdf5C2by6IgfZBvCku5iiSKIadGPI9iPVFg38V/O6B+iXlfjOo8RVLbfupb3znpPhVsz
Q6xoeww7HW/gKRBf/Tw1P57kZx/4PFo/oS9buj5YTURRTPyb6c9LK/ROzDkGyHdwr8yHr6dcmg3Q
juGHjqmy2W1E0p8Yz+sP/vShVhGZryg5+vY7aQguSN+quCFaeTlElvbz2OlkKxOmGcINSc/y9eYf
Y5AYCUZMg3pj9O3Xalv+KBlfn5p97104/Rtx1CxYQMlANAHsWRhY94xecSzZRe4wGmtNwSuMX5gO
F3/xf7Uz8Qzpx1kdKKbb+9uzauFmub95UGBBtnGR8TuVX8pxK6lXS5YcwvzVAyJSHaMDpQIIRVsR
BQh3mrE6fAQEyiZhg1v014c/2D0bHd/W0lMK10S0eZZSNEdT0/WFxodGzxNxY60ulSEqkgxFUB6p
lQW7A3+0XCE+pxqwQMj0SBUmWvM/cN0EbUUcYzcACBmGeF1aKop+L3OzCLHrVXHBSu0xkBMcrAno
In7w5efOB8QiIyQZ924ezzbEX2c5ggpFVw9uA6eDAUPmaHSj8yu/OktNn/d1aA621GlTr8etTzvS
ip/uTLp1o7sk6t/0EfAvF8TjfKhi/4B50zWg2eXyjRLR6ftvvt4Xu1n/BU86jlpvTwPg5bBTT9c4
mb7/qJMfJJLnzBbv2ub9fKVsIm9jbu5VVFtSHd3l/btwI6TE1DR+UEcoC8vXHl4yrTpMlwnEP9SR
fIWNcMF8kVOxUuGLGqm4rC/6kx8+DrDAVs9jKh1i0pi+40AjRIEgP2NNOBbIJ8eZ6OR2AIc2M3dL
/o+ZDu6aGCmDYBQcjcTAVrIVcvlCOO035lKShJ5+XV7Cmn078QSdWffCgTkP+96jQqTIYkw87PEd
ApLaaDAWI01YaT6g0XDRPY4muJI18KNWyMxrz6lUeGB0OtWL6q1FrM1DqnumqbywRdFXaMs1Rzwd
jHBcQuDCxPYPzCWDcNxtuQRr1L7eZ1mG6SmrKUwkegK0obNCXI1Pv609em3YaN7neCVyb/qIXcaP
dv4ruZ9bnNENdPY3YWVzVAWMjdBUUBDwGn6Rq5lMuwPU7W3zKySGsau3VyhKMFCb+ZWA6nrqqRwK
n1ZnBwVsJQxJD97I3x9gkDCwjvuyElqR/6Qw6g==
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
