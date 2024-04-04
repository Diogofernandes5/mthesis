// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar 28 12:16:53 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/stage9_BROM/stage9_BROM_sim_netlist.v
// Design      : stage9_BROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "stage9_BROM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module stage9_BROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [27:0]douta;

  wire [8:0]addra;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [27:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_INIT_FILE = "stage9_BROM.mem" *) 
  (* C_INIT_FILE_NAME = "stage9_BROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "28" *) 
  (* C_WRITE_WIDTH_B = "28" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  stage9_BROM_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19136)
`pragma protect data_block
yw8LNXDHbAANf5EyQJ19MkWtO8xykRkROLfAG2kIIpy3ZXOmPOaQzLqG/ExSOF47mFlK/phwq+B7
gL6ygO+TF1oB+zv/G+Wna6qFBOpRyw3U35hIET83PnyOxTn6wBFvVIzoOCvsT4dySoS8jMbgV/wW
dPYdSJ6fP0vlvXg81QoOMilKvNKFrL2bctQSRE30NACovhFrurILHeE+ETNZGeWm+bUV/wOQxu4m
4Umqc36lzTzu3Ka9po5ffN+FxVnGT4G6J2zKpuyhbaC9ElxY6aKjn6do9mcQ7NxaAd2W5WnQXhK7
tPd7PytO4E1ozQwOyuadX6iWPXtukZuv3kcGu3oVY6b/eybBykz1COUlcItkaokrN4UV+mEKzLLx
C3mOnLczMwTV86Nv0SAUyv+CND7o26uj2ZFHe0RxpBEoQrTNPhkFVwbJnKNCE4N/iNVY55gwplt7
EaO21FNpeA5EFSF6pLmwBmOkfDPZWCWdAyS44/4CA+or9gRAILnFtZtXXsBBHMrZKts5nadjYI3A
Horsup2S45iqYY93/jXdxWGU9nHO1MiwjJ2M8rgx29tXRiMRU/RNwq8PDjwSd1FJYRV4d9whw/wb
VMHGIFbbD+q0E+gNynvCOS9tFJr9AlXkwLVB6UwyHC8Hteg1Q7lty7SzgxQa+pezn7Na1X0HIIPi
JG6WFi150Cscbm2D3TON7SUI307dOzRS7WAhnz2PjUBDmZb5bVuo0uTFM03qJs2XxUAB8mMjr5yJ
W6z6u/BxfUcMikjhKsMDM4p1ABQPG0r5kkKBmwMeEvePLMWbUtqznRhdzqKN7sGSVIHiTmFVZYHk
wkF0PxDpPaHqGXje2SxtJ64QTFlwjTc5d6APENaxoxOdAThA6K8E2G0O0lY1PK//Ag+x9d/NqoWK
8jQpKKINwV4hcIk4xfTL9AfVuwJ0cN3CJWvgYfbPY7vYEiv4dTpTdkOjT0TTtAcyZbx7vpBRmzer
OqhKwKG0hGbIlL6c9oY8nzcdZapaOacTfqZfrSVN5ooKdxQ/YwpMH6T44dfdLrMi86jGUbKwSsN7
qiubmh6YZz5SYQyD0d2or1U7AMvOInv/ie/JkoSAX2nxaxZhB3oz7faThY+8FyUvcoMrY0jLEaN1
7GH9N3qyYBsUm3f8byCcDrtgPc8I6s4/8Y7t0Em2x1K++lV/W8VLfsY7lFqBrZWpuckmspuxrYsM
noItKTi1cTra1t1dnQXljAAdlvnS5KDURu7RLnJiVBzZA8cuoYNT2f9LY1MVVLrrQMOsBU9m4T8Q
Nzn2sM8kZJ/Ab66HZEUSgi/dNw69c44bgwXtv9HQMggHuZgarSr0uX6xqdBYC/ogcXmqjpJobG1y
LQGAr7QvoEOlLbsLX8+6hHgpRpVKFI2Mj1oAKpKbmiR+a98Of13gcXA+mYhH4rWu30f6q2bJQScW
havoNq0yTWXvNAKdyirI3+bo3tixvkXrc7bMOjn7G+RAFV7HvsVJITPITxw/2mVgW24YjNxD6wVc
zVsR5B5jQP/sQepLE830fvShVzlVU7lI18sSaK188lU+n3MpqrOQAxBr4buEZSo8qN6JJkDRN84M
8jND52BY5eBOhKWyOYwmP15DPSpofPsuCVa3RViUdmcMCZAEALmaOX98u1hlloovtrfEDZmIMUzY
C0x8anyw/BcehtNw3elHZjUog8EvGyCFKFHl9oJjCoLqcpNIXj8AiWDn6rxgQhi4MFkwjOptPeC+
rvesyVizqTixZTBn1hXyepYmPPAJatyZifUwSwh51LmQxn2GhCaxpba8JLV/kY0jBjOGLlxqIMwZ
GcK0qsOyuEHw5ZmHCo3iGx3qL5IkS+C/IR63PPpG5usSXpY+2CJoeI4AeEvQWKHTBpLwPxnu0/J8
3WJ6XDlJ07WHFPQeysfImY1bVaKtz9jSYWp7rUcrlpDYBUHoU2uUkuKhxrp8jwK97PSk1oCVfM7s
3bhxRnBs5Ffw37aYzinIttihtVpMoc1sek6Q+TFr3AUU+zQrxBhTBLRopOETZAqHsZy3D3x3DJjB
9ktDMrmL7UNEoJvsigStzTq8x1yT/i+0z3caz3+2PreddMAblihhfDiMXQMlldLuZ0fm/2TaMGW3
/bQf/9hYu8xeLd2f/2QCxpi3Ws88ibK/nVats6btrXzkWvgL/b8v1Uf9uwrctMGpa0B//rJwc5Cx
vsuPaIksLHjgPizDkzBedSae9SvqU64eWUw5+uB4jZIwTvLNW/LSEuRcQ2SFaNGUfuGHc2HoyA0p
hGAAP+DqlBfvDekSO8jwckYAmcdMb1IhM7ZGFi6+PN5UBbMZ18t2EVhw/pyf5GQsvkLt5JdV3GLo
b16yqYhTF2Y3aL02INOVteOB9JPG64FBaxsn/YK2Fk1wVsTztpcNDL/W32OjKDiLeyVcuo5xd2ht
0pSPKXlU3MgGKjRMQaVoXLyhMwvHDOWw2lJkWhKFNRPYou3udoS6KKkWpZ7CWPSNzAzLaeqErUYP
+Oz1/pE5rUM5PwMjrMCYlyNdtPP2p/Y0Ai5fWj57UMxikXqrbBws2jomVRnbrmSjz0Dl/EhWlB/U
RztnhGI/vwu/5EpY9da98xlPM06mq3Jrk82VMCDdPdFbRPtac4vw9gzhILIe/dWYMf7UJKC0KQMc
rPW5FxtsYRDgJYxjBN82smrQQs2N4K4FiUwQVfZAlut6xeHDbM49Uq6ufb6PXG/OXIkpqAT0rWoP
eZvGqAEUOwKyOXT/vEcsh3v8ijITeTtSRWUFqPDE2/5br6BArGdP7bRk/qTCJt5pFAHT7oFkZNto
t/NQTaLf2hK88dy0P6UVsGG7AkyNOIcElufcUcxwlSmkE0L0yHXOYohkV4GYbRZ/X+rhrTbtKGZb
+cCr32hY66aRFRs0a7DMViggdtOUOONFJPp6AHt3U3K4S05YVYZQnuDOMN7zIrb4lAEC4r25fe7F
xvtx1G3tl6Kz4R4r5Cg3t5SCQOpHV6K9KcwxAq6n0KmVrUiWuOQJcuY3Efi/0KJJSgvEb3x5S+wk
Xsx3nJPCPjuc4xqKFJU0IYky0TtBQAEiy7BcOYtRf/DbcX99SvJDLgnmv2qks61FaVb8e/nQx5FH
KpL2m2KAXos8whoxoW1JgnK+yRAPVxJrgCicuEySz6aS5hMmEGbU5p+oXQZexEP4goEwLkS5R9Rl
0AXMdk4E4Q5OeDHeMGhNKxyYJV5l+nWs7iTUcrR2jYUuXvQFshtaMuuM6iQryD8aGWeqE4Rg4Rru
IiQQ56xWoS9jQX7whWwWrRQrvAzBqb+aSxZdthhaXyBZGbUJxlqcpk8VhQFfZxDPVsAjpKchVFWG
jYa9pcaqzDcLq6+mDke0Z1xVA0m5kHkQBN0LPkiIXbuIXN1KDhBDNv99R2C3lIqndildIevuc7ma
XKZfXmzfrqNWa70Q7Pcwh2zULoNdkB751xkU6/MjG+lUhg0wOUN/2ZVYsUDftj6cZiOX7oK2fSWa
1evF/GJGs9dApcn/o7i6is1fTalkvLhiITpmNnVOJD84Nb2HzDVASIS23qVWPCSzXMqXCK3YrfrO
zuCRmtYKSDua6Kgcm2/CdI862BSgKPm4rE8otuhYaPULTQ3cNpaK1w+CUI/YxJiNOXZRI2D+LsJU
a2q2joREzultIHp/OEEdTRCArLadnvUVzHmzI8DtF4mALgq0uOOrYKhI1RxVJ/rJXNx1X9dY8V62
ciRfXt8MTnPe7yVa5UC3M5DVlInJTp0devS8HC+Fe7n04WN7VxenA6dvNnp8NzMDwuUxHHHQnhmb
1nnvkh7U3wqXLrJmYdx907cceTt9MVc+ZHUT6B9DYilV20/iG2wK1lLPZiBLrCp/kPLJnxCIq36t
Fd9y5AFVP5u7rmy5MRFZRSNi/zLiAu7CkwDI5Zrd+rQgpKlm+aSvqd71Q+37SS5fBTpzwv/B0mC+
W6p4S5zKjhhEreLy+4jh8bQLnvzjil7XkTepxY8M9Ki6cGYKgDQgO+De2Tjm+xwbgjlb30YeNuiu
uES/MDaz4h6zUk3GbONufSTk4ummAVT299Ymm/OO4RvDLrE+lKYFzO43G4JKBXkuhCPfySodpg/B
CsckRzX1kIRAtc9lFPj99UWpnSRTRBmkFOMOIu7eA3lgWxeCX3R/g2Bo0F7Z865ega0DcAK3tz/q
LFDAxt6cifow4KKhG4W2jAEjBsaOpTNVuGEpZKIlgNOZHUxaur71ZVp+K9AiIfOet21FMxh+Sj30
5Y/PfUSpm0x0F4fB4PaJJu3oW34yQu3vQsjOo+wxicA3EFP22SmqUeaZo8967k4wLqCqlpVsmyaJ
7Po8bxAo6CIlPq/cIXYsydYHgcatdpZTKtD6IzgOYgj7Yqi0Qev6ZubnnKZVrzQ2qou9O6hDfGYm
X84elefW95e7eYgqNvciylM2jzQRq6PmIBM3s7AfQdGZR12jctc1c83R7hVLtkYEquSZItPRRj+s
0idA2OcuH7gEG2QFadqzw4nBP0Be73icq8MZlAkEDTEhazUfwUC6Bd0yzPDdBp6+2iER1uv29qIF
R8/Etz2MhaFohggDIe8veL6lW6gMkxIDcBdXs6ijua6XeIjRIJqLwjLOK44XsFh05cCSnikpshj7
00Pw0eQI6aA2XbwN14dazQ/icyRqzPYi4z00GNfyJFyOnaIcdKZCM4H3N6e2cS8OmDykcIajllX8
VaLSWcg/tN1EMKOEvHhogX1/W6oiyyoo0Le+V8JLizNVp5hbxZEFetUfRZnHQL0FLbQO1M7QDdUb
tRsJTf8brbH/U5DdWiUf3uqS6GKz7hbEAfCgI1whkCs7vA8V5wbZMZJF/YQVFb3xOMC8h+CsQmq4
3+tyuhG8wDUOhYe67JIZ1sZ/FwhqnySQSo+ad+RTz8BeJJE8+KghVyGFvl+M5ct0If/rnvX/RC+5
DmImXZYDauYNZQyzGXKDsQhq36y9LnR/Rf/R0qWgGBx07Nou9QgBWHbK2byjRlQ/iqIUQ4NsC5Ar
3yAnBQDUb+CDvNHnuySc05ceWFRvgWZd9AWJ7rSVQDsdI8+O5WxIN58ZlMW/fm5L2860p4L5nabi
9p2B/Zb24PNiOMSS+1yTEFuLbx7//eKMBIEtzagl6jYUVEItZBCfaWi0MnIquVaSDm5R6YYpTzLq
cb3JLahJVVnfnruz6M/THbY7csTL+55Y3gZ3RRY4u6U8h2UlzjtSYPHegdaPeaTsKwLKbKVRKR2I
Q3iWB41XfOhAa3DoQdOqRkHs/HPDgkWEN5b7GwLKpv55KOLKRXnNJMF+nTX7v6n/oO/A4/AYAwkF
MA0BBoGjhKBH6+cWTtOLdEUc3nYlKKYhKczx6W1l7eFUUqb7ipdazIjeHcf1n8zQaVcthRHJLijb
cXkYlcVjRAJueJf9mPxw+wHDoMK01DoSu7p2vPAwk8oij5TNBFp5Ewt+FUOViiN7ueD+Nc+1Ybyq
dBjQJvCeudDGADCLHcT7i6udm+ZZ6VxpK+qaJZ2i0JbmKrCqGdJSEVIKmVI+P+071tsKQsG5hTpm
OStZtpZey0OmE31yhunQFspqDhqrBdCGveb9skASFuNzofmcN7OqUkN3GZXDEwloudNr4jERuMqT
vSRfPn6+1H+/eGMiHWBAMwey2s8HTLLOkFM/bbIRcqVafBpTihL4m0tteu+ViB6Ji/zZGcGejPzg
iL+kcChk0LkNAmm1eHsnp0F4SbJe05fIYmnZF++86X0o6feTSJ+N7qQ6XsFRZ6DrUVlQUZtpuoL7
uVnhbXQApYLtxNTaAk9aUyVURgIDxXQlbBIwiDan6IS9Qz712tJ75xKlVW0jYOOiFKk6CpQhJNEk
ndC15JBsZC6er0pmLX5dDfuolu29TXzE7isHhfyJNpiaWysVeXqyECrBXGbefr0AlKLGitjbExl3
2PISF6Z578YJyELz82ZpAIc7K1Gl72Wz80z9VB1jxZz7MIE2F9AKw7st7Rn2fNGjNjf7FFYhQR7J
euvwjFu6c0TN28rRKmmQojoP89i/KhiwEslE5cNG4sNfLJdgabIy9j4YEkyr/gcVHA9lRM+HlYls
2MVeuSWpfthJbOYG0vKJ21F0dbYF5D1ihO7S9y/fct2Sb/6BON0nL+evA0NsDcwd8iUV8wmdvT1r
TBnlyJ1P1xQoSAOa1rOh5r35zwxd7HHvqk63t/0YfZX+3a/insWncWNAK52WmkHPp6nUD2M/I0FQ
wiNFVjROVDkw0fNLxZGcmx3pu80YR75MqNrkqFQivEJshlDjtv2exvq5thIm4A1GfqzHXMO6bykX
qwGKvj4dyddrqCJBSljomZD2JJaH8pp9KNHdSRyaYkHHw+37YLYozBeQkRSCqY2kclpKIplOCFdc
adDm3ctij9lnJv0rtwacM2VWa7ZBJgzjuL3bh46J2Sm7fNLf8Cf1YThGEvvxg8/cmHXvDU2PfGsw
ZQjcS2VJYFSRGavMslADyuWf5kTmQ7MF6iztkGGERRojYUJnBclWNHA9C0g5c/aCL9wZ73gJTE0y
Ep08pkk4GBi+gubC8efj/tJpXMPU5m6jCfTgAIp5oeRmCbE+Ob9w746pBVHTfnUqEau+ErbUXyS5
F6s1poRavm2gU6hgxO9xbLWOQci3QvCMoVD1W/Mu3WXuyNPJzdjha3vM34HkxwNCzSClS+/9cv66
+wVOm2UP1EcOqlc6DmfMHCoDcuDd+rV1ahL1npNU5pIhh69V42jW4Iv/3MFKfQmnoUC35MSlVhRj
n9Tw56KJJgMtXJ/4Zz4tiV88NTpLwKOF/0nmQw0RuYin/xUbdlmHlVu1lzua1ztbWzS4dI9JyClm
VhIiyysiJYOkPvvLQWah8W52hwkuInzVeegW4uCbDbhhrhZODsImXk0ULJ0IVGHDFF5G3ah88STW
Kt9oMIY1ImPKMfkMQTlzYuvHAXeGtIsrs+H196/LFP9Ytm/zte3TMWjVzVGlbMVOahfBvbVgn2PB
JZAK3TrQSgETwrPrJCAxulJo5RZqf8fBfFjgq4GcNNqKRb2Ez37rthQfpGAW1Al5mA42mSE/508R
qUMB/SNZVjS6LZpUH7B0iYbGLti66g6lFyHKiIgHQ7Sep1w7pA8FSR/D3NH/lQnlJAW7c04ukf+A
d3Y3jiXRqK3ZEwRUr5Nhj9SQdPMSv6A8/K3dT+HkAa7q27vEpyl2MUivcLvucCrYggrqhU9rnX86
lk0mke3eBp2fVNWy7TOV0OuBR7mzXO8fmppCoV2+Zw5yrbXGgDPiCsnJSc+sWeU4LAEOToCXhA9o
jPrwsr9vUh1ghUAeG+TB5TIVxO/ZOwcXfTTfmPS3oJCKYdWUiMmGEsw5AdW6SeIX1GNFRUwe2s5j
Vbi4i1VDNiHZOK0vfA+XzG+YJo6rGNCFFAYUpYLC1/UR3WUpSaCzqG8ftxms9/ZTKRjYqudpYDVp
MaGcy39ea2yRePPQU280AILfHi44w73fo10jkgjnq/dyqn0hgjTjD8hvZ9hlA7BS9xs5ZaaHu17x
r/S6JiVSJIqdQtPubG1vgOaMEe/AOlHxhui4nziFPRylkuBvdMitM9iGJjSgW625lbZ9KHM1wvx0
SteJDmuUvvGKBiVDGW3nvjJBoKq/uwDKb6uF+7DyCYguXgMgloD9wrToORxEwPy5RaPuC0dLToJ8
hbSma9w3J8iq2koOOIPFOYBu9aHH7qBf6I/KPEZoEbfrXjnyMJb8PDd2ktJNc32mpzNBOKyNbhik
PFHkqSr9KOaIIZHoIf5cRM4iGfCidIshtbp4BxyRI8lQs+8F392sc926BmZdfKQgq3Dn0maqx5/U
e2RTHyz/0fu2sjHhDnzdyKLaTK3SoQiBfQsxTCclatEhGlC/qM/WKCSmNJaHTnf7UEAq5r96KkWa
D7BhJw5t/QuWuYv8hZ4DWn+oq5IrSPj/SAxVUjchDhRbHdyshOiROguoL8KD8hH11aUF3VYvKgIh
ryxyV+B8RM+B1al30luX2VIwGHKV755cHq55BAL58hBl2LjEBxgE87RoauN6wvIkj4o9MJ/cPbOU
gZd9Z7QjlGJnAJTZn/IDXuKDwNxRgZ6BNBh1SANCELacM3CEK19ik/TW3FCOfzUJseA+TlGpdmcP
bLglHNvXnW4iWJoZzSipX8IcadOwUm1xAseEtonPTJ63Cxd2NNqaAkq+C/ukGjrg1nN87bgdKAkm
mWIlwfoKRT9erWN3wI83wo7sWvtMcjMVb8uM7OoMPryjTxql9G3y7F2/xQR6UcdBn/o5IKNgICl/
9rqs8NVzAqceVMZOccLRXPD8Xt2mDr0nZo0k9mvdHbJMsRxBnuTXNJY+nqVCCUel9Ia2GABnPBc0
rfbIasAr46JKDQ75G5UImMi1ymlgAk8/OxZWh5PUY18LegYpbSwW26tgStY9MLvbfRh1TWyPNDHo
DiiSNfnUbWO+VtkmN63+hD+IZtnOonTXTGuHpOnt4gN64CZn8FUl08Md6sXl8T6tOyjTdtbo1dZt
Ll41zbC4ja1x2zmH+eI2PCUpNa68Mroxl25FBtVf8e8Ge7swlnRM1+vxwJ6uTE/Zsw5lI4ryg8Kn
pkS+8OUyqM0t+LLHCpQrHils2PJ0vepyAbKcx2oO2hSgY/w5LqwtvAfHUctqeq8BPLDPUjjNiqD1
Bj7DI1ufEDqdMDtIhlOOflv22rcVeeKYUvqcpN64t2RfQxQ0leU1AspSeyRtzCJk6hVthwyhwEA+
dIXVjyuOUbyJaH3y3jzT6Z5BtD3jwvRm6ZpsWgXXKmsPzYYejjo/eXrfPBCuNQQs6m+0ajD61tOK
GF/MRnxrTBFed7gznpo/78UMO/T+GvUG8kR8mYpuHwVGMBQx2xLgkcgR/R5RO5k8ZHCqdBeroF0F
OTLkWJEXjHRhvgIqChgSwybR8VsFKzhafXIqZvx+4Wm9DSie8a4dlp1nE2U52kfCVIJwaKjF3H0v
Tn+GOR+Vlqog/N5w1zZlk9qY2O14piF5TNUxlQ9xObUfN3sH+EeqWUTPJ7uIZFe+Dze7887Bk880
A6tG6u32VoJqUuqoNADPaIKT53PVhMKAW8MvD4D4vKCA8f3XbkTuBvg3wklgSAscDFTFktAC6xgG
vRYZZa0GdUkSLsuSAFmuniffsaB8WaZYaaO2nVguY1UjmwmKqIRS6dmM7kyeQQQZ0pW1Plsn+o9q
ejd/qT38+hTfWilXDcMCt5UhgC4Ow4+knm1TSGQpC9RqndypADQHMZ3X/mQUVhApH6e3X9gOceLq
8UjRHbC83EKnkYCZYP0ZVQZDgrUnJS3AIZtzVScIDBX/yDXhoduqvGzrQ+eNBbwtN7941/kX9yNc
k0cKlv1LuewpuJI1A2jKOOFgTQsQqY0pCtxKcX7lHwds0lz+OP1Hg9OcF3jA/Lr3Ba836+K6nK8w
+MZdni0th2bXsrxrM7Blqs6iLuePMSDEBqxp+1XkkWvXu641Vn7NgBVu2AuueMjU7DQWjTzf1KwM
ZxaiZSCJEFL2hrURh55KExMJ7eqHgfwDOGNqPTDOclDtR5T70BurlgInM3yuf8tmZU5cZEkmsqlM
gGsHsGjOik6UykXUQpR9t73P44ElaBIQ1TpRCpTSreSzX2Bq+xjTZMRqQOboC5aI9II14ypBIjwf
oJB57S+4j4MruIep+VMHW5qgSjuNPVRHlQ5D+/7j9Sf6s3bSg0imtISNfVKy4tjFucXD1QUyyamJ
KpzDly3615RFMnLSpgDgunGmIGYobdlq5PmbzqjHKAaoMmvMwMyCGvRaoSDtHMdisYjzuI1nXPbh
3hs8yOWnA5Fe/NAcDzsJFIcjgpVbuFP/y5T4OdF0BBvkKtYhNHOcpoKu31KCzb78PW6t+SSxPurE
IUuVxARuqI+IVE6GSmcrT0KZju504mQhF0YZZYgX3LDhg60jZCP/tsmFrFqqc586NJzZsMCv5ibl
imzi3b1YtMupsmc3djukvmrWKlxULKoWdCzB8BvYZmE75Cjxuz479UxyL5asMpBjRLfVxwz/E0r+
fYADfCF2CHAjOJIjs6JjjPCbQqmtYfo2HQzrzD7vX1xntMe2GsYSWIn8+6kh9c+kihiSCpjpzn7W
vQ4DYY8Gw29dixenYrFHsMwqcT6BR3UC/+HQuiUrFB1EYC6xKHBDXazdQxFGNTyf8mhGoKL1QerQ
Y5qxgz0K4v+Lpka4PWWjcr0F8Ghx50faQcARw1AwRdQI+uf4ovEG9kWTl5I3F1BRFB3faBn0YkQh
iPR06AZOavmzQbDfJTDSTJLkRjLdzWkcjnzGVcJbkFhgwFrQSfwyeOufq8BFstuGVAFc8Q1RX4Vm
3N2HFjAYYX43OUfSJY9bWttMI4cRkYW66/TWkRHuNFcJwGjxswWMCooMSlwR3sVsbbRcDrXeUIUt
VxCjj1PrWuFRTvj4A61Et8CMkQm40uZHFUYSd3q626b9JCupHuoTeljtvCEN80cnlhJtIWeXyFXK
yomZWAUMnD6nwJkpcltL0BVqVasHWMppukUxyYLSLqION9eSHjolsrRjBOq70DiWoqDMJqzuqCmM
i8veUuQLvo7yrOKENj9JXqvgUJGldZfDulES79GL06lPjLLzN8kChTLLSFbGpEOYR4unE+ih+cUa
zSX9i3FdgFnUOZgLPrWz6tDRG/ObbjaYDvVLe+LuVOGSMEMTFSpaihZjp1/lTCZg50SC0zK6yZLB
1MS4gBRCzBGihR9zx0g9iCpb3TEt9uiHNBJ7CPs/2GtQaFLfz36/aQIWM5pAxbCM845Qa9XOSg7s
jm6sWX1+wm6qmr++paRIGvzfmzkXuaiKWZDkGxuhqD1d56W3N4mkiiejYdlscPjcFSmcqlAc0kAb
Y+DDP7+v/EqGKzeFDbguqldh+FX7N+82MtJ9V+E7km1wUQY73nxqsbY+BwvtiIRmStd/qbodwxDu
PCPTV7ByOwf78oQEhXPm/e8p6wXg9O/26hpe0Ei70+PDEb3YI4Zmz1uM4Uzbbb6vQlBbpxTypa/G
3OL4G7zaofcP0mo5jWk9NM2L40LWrgDxwgQX06sMo7gOlNbtywKpeltzDD9j21ZlHvZUc0g6jxnK
QzNa9AMQeqEbJbgCOaVzqtyonChVln4gU83hdgP8op9SnIGSTZOQw8hlD1tj8tEQbK9A9QCl6UzE
6df1FTxrh+BZBMfIofj3b/hMQ1rOlPFfe+tS7zOkTjlc4yoz191ShxiANzTJS/iQvH0rlVEVQdDX
ftFzEsYBQQZ9ata0qCek95WVhFPkAxylKxgbhXqdg7sOVShez7j0Mj9MpgS/da0hOHoymEV08r4V
k33eeNCNIYmcZ10igAH6Qa1snJedJiXrq+qOLRoWHfJ0oWtjTHX4yEYNIr/FKUYPMxSUEKB97AUl
HVgxMq0CeVmAT8mt6phLIZL80KeJFQuG0DKMH+1NFDeZRE0TntLkeLr2X2zAxS+WoGfaVf4iZlbr
CQmydJSHF/vt3lzHvWENO8HXcxvA/gMxOO9WIl23NHh6WezlTIVxU4PcTpft/d6Dt52ySrPce6Kw
yYQ0obwVMT3AIx/8ZOkdW3rQDCzhe9KHtR1243YVdmNhVYVQ2lH3tcioNoCqP/TKsAj5TxgBUKj0
S3dOI+4aqUKx1oSxD9pRYy06WEnwYUaMu1DlumIra9nVYPbQvUQw07Ffo8ZwLhpXop4H+B1fEJ9a
UkbAyK0mgWsOxwVo2CyikAZH2G7AnPbLHiWIkX0Bhl7IYBG9XxVLjdArxptAH+Uew67qb718XGNG
QtM2AcMrRehE8vJlKHJhy4xS5ui3m11jsT2olAfVl8aw3af+BQL0bsf0twhIy9y/Khsj6yFknQkk
yFtZwYp8RefgnnviBGteh/3FyL5/2LllnUmSsj/HG0XoMZqFwqw75rUHwjX/v7A7+8LmCnnMgxmi
+Rxp1aFDbI/ZqoVadVmrc4gA2l74C43e30CBbCxFOuC4QQaP3/acW5WUpvDSn0VQP043fmOBab2o
ZXs/Kqh9+kFA3fqNv5cTEIoXHkJxq7ewGEi9f8VjouD/HhcmfsG637n2ukyXPrxtSMgdEj1wgNxF
w0jLSO4nIS62UO8WUOZqiSbpy/Ywk1rZ5PhsJheYn8oH38k4rjJgj796k6deQawVbiaN3nexk8qh
YPkl93kXgPr9cvd/H/YedzIBIkihWGwPW7TXgtIuupBTqyI96MQkoIMCCLKTpUMcqJzND7RU9zeM
Jm+yJ8c8VSHTt2vurrp2neOXwQg89sTIM0h75f2r5tWC8xBFdK61Dzm3CpWXilyR+9abyDNV/lcd
O/1H1YucfFnc1hq1j9c/jvGkctOv65Mf5qyZrgLfO+lYTr3iq/CV0kqKSb7KiZO/lfcU/rKvGyqf
6PPu7Sqo6vYUfmppKGvx492QkKlOBhE8sdBErYmMsLsCcFb66kstphbZzTepxZNQcA5a70D8SnLO
5dr+rh3EXI5Jt0iGlnMv5AYyKCDnpcL74b7ed1x9cFHAst9W+pmGb0PzJTpscaQtOZCmXmh05XCG
PVMJUIAcIFzuxHuAT+VrT7WrU4eBQYl0KcPt8JL0NQE3yyAawaiaihMVo6QCknNYKQISsDDnK/x9
DNKHp9RMLn+dPWWyU/o7SFG+JMLKxuQFMLgzFnXZ7k0mOpttZqYBK/ns4/uJLqOPfaemmQHGNdIS
iKyd0nU4ypo5f/FJm5QJfnaoff1kxqm17sZVcJzIAc42L1jn7vSz1XcQJ3tMVCTJAKeGrOFgAcMg
+x+JkiXA+9REpYNxzlvZTiFBR15X624Vs94NBIG4XM8s1ljhRHBMOlMngcQNCXqdKH6MhpnjMq8a
7R05RnvtLd+sK7tbxm85R98xPPANFERJvUpK/I2GclbiwgYq9ilma5YLY5vs6i344YNBWO8yWt8c
7ib5x+Jl/vLDnNQQC5sfYN4zWmnXQZv3TXdbU3DwfKXwMlrqAUF36+2eSZtJXKPq8jIqB8i+Onay
T2yiSuZ1TsZ7YpALbhx2GpNNwd5YdnJ0O3DbQapEulb76x3dO6GoEKd1lftSQU/B/SvSgrZncjcl
c9rKt3/voLQrYyYOiVMGxfU5a7T/HT/vUhQqtWOStjQderg8Hh+d7TDQT24mb8sduw5Ri6qvJpVC
C8u237pMNvwgexCz5s2qOFmERDXc26aANHd6JUDwS5Q4XzvxdxJVPKDbL186eDXbxY14WxWq9UvT
nlN5Qwi97LcrCVcI2flED9wvVJY6h++vq1N2m99RplsbD3QoK6KbEdBrFDILNGcSzyWXVj6NyOo2
AJ88w9CAebiR87RHHMOxgkPFKthWf++F5zhgndWJxLyqKaR3lC19pEu0/9IUZIphvpYcSV3o0t15
npQkTE3U7SjUP0VberiAwugVqo0rrBy9kObExpMf6H/rlxBqvwPopreLfs4RfF57cQ91Dww0dVst
+puiEW7Uar2oEgWrx+jkgQidGAq3gzLP7mN0NEh3aSJulPV9wg77Cuy+m5cy+KsVRykgRyktHO82
2GVYTNH8UthRR/gx/2I7lI96gTpdRM6eSQPGbdJPcyZI5vtmMo0yGn7MyoMI/w+ul+3RnBosgDfn
me05s3pmtsOs4NpdoySErpQ5/QwA+KLMPqKXd56VnAKn5UnkXUfnb3Pd+vCjrdTTF6wpzIjHYnC3
fUuGYidZMbQWwFfD4onF6YO3emJL/8ePAIUGevDFaRrgSylVKnABKi0Yv7VAUyA2oO/JT9WIBpTg
JKov6wc2jjeMcIUfij4BjI67PCSlh6nwHH64kDVaBMZAd33H28poZ9WOBDTmRZhfEckVeL8SXf57
bUth2AnDkCwwiIVBxGFa05hplCob8EaBtQ+blzGkxJshevwbrpR9eM3iLpf/E2JEojsN/8aOI5K5
KxLnCOa1jKcBD2g+FdgHngKBBEL52M+EEJgbX2ZFfZ3n0sQwPhWvC49NhTRoOfRJtd0tZZM1V8o8
aPLrYfQSWn2T2gkRHOFyS6IZHYG7Hzfssy3NYWlCn2+UYbsrjYjPryJRHiaHVT/yaXjp0H614k/t
eVA08xgMN/iFHZj5PTNzSLcmXB14oG5nhjtNy4E/p96SJYNSCN85NaGjaPvbJ88Dkzo6iyNAs7U5
O5lAcqVmXmAnLcBU0cKxx2E5lxX/DEq7xKMP2+IdQowvkYnvbH669NLG65VGcjdOo28XIm5ItOB2
kVO3Uji5IYTTfDn1S2Yc3O9paxkH67QPRxIWt4cZziiTIqvWMfuIxZEOP5NmClbLnTPYBkOgbA9D
AFrzM/kIakSWdCw0xsvAjg9h4dRo4fZYVMheS3+7waY0K0JqLcc34G9A1o5xHbrgCG68Eb5jMGyg
mpggbdTF5IKLmvvNWhNwXhpnJotukO0ePIoIrprfj4xdsWSmZOuo23eQpPZtUGrR847SwyArRMX6
L0jL2KQpy8jnW24tk3Zri54ra9vNYPF/XlFxm6nIUkd2Kx9nAid7b8BTBZlN/baLV+0HmyRg1iaV
J49N8Cy8H+s/h0go0FkoT5UhymJYU8dUyOQ1dl1u/ij0w89DAtiQo0W5k57v60vfnKgb4AYhT0KH
YkdeVBZlqHmQv/a857khf+vaoswLkdULQS3SG5I9j/tlE3L/TxYmASYoWeqVDnksOTqkE3c6aOFr
r/iMQjyitGPSIhcWdKdM+HJvxjpcpUmCWPS/19aFShZckv9vtvkFqexdeWQxxwy4IR2xO91yltQX
zXHpV98DGHCEmGBa48vxR4IlIy3wceRc7r2/Y19ERJOisUYbCTI0cBxwSeq9gcSaooGLLfO+kmln
CA+lMjX0NPHM8GMxb176zN1W/Hwe2PWMeVpiyyly10q8tF5fb3wcclujrSPf/R2mVuQmYmH6LNza
GDi2nkiyjN6FCPV22JNJiyLKVVuoCXgOWsSGQ5ApGPQiNl57nO1FMK0coEsl27hXQ/McVsNqYxx2
qu9hnVbF7HYms63050wPpuGYkdCRqK8LRCAkOoEml/uTqTnudvH3Z1VnzUI9DrcCZQh6fmuHbDDP
LG8eHI3frKzfnaNAbPMVNHy//4j6z56W3AhNb0aaOI4yToBBeKKvfm7xLjYr4YoXF4rMGsFZAY3H
r+1HWcL5VRRIh1t17+Y5UC0fMfy31ealtd7tmKpyRu2O5F3OPosSplnnYF/vL9cmPbBQmC7A7yAc
iXL0pNRgPqXeThQMNbIrXzKrUQBZCztiA2UrTYgPmSTDKZSp5Zen3n+24rgFD55LvCZT4fW0XOAv
5b03lCh+b5QxhkqJNIdTLM11f1xRiSzlwQ3DGcEbS+A27nxWDzZRuO752ehFbYsxehSeFLDR+O23
QN+SIHDbY9A+kWvFLXhsIysmVJ7GrUJct1avzYiR/5DX8dSP6Gg0qDjFZrbjAf5RokjTe58/H8Xr
Z2F8JsM8ni1U6V70F/S+lT7wh5FKT2kaqkUcLUxVo/roboNWhteUZFq8tCdFlwTKjiiWBYERdsJw
4QyS9Oxoe7LeQOhOyDpc5ujRokgScNO42GrUfSB3XuVn9Vk0s53ocbMFOCqVv2DPJXykllfQgULY
+VLpevrNA5DDHsRl/0CNRmTDzO7HSMnxEOFNA7iHhtUzfDT+wAXHAVMkEwzHMU/vyFYHdoMVA9k/
2QF801VO33AjWg1eKdlEgOdtL7LwdadlmpHTwri5kYukVfWMOeZmcpWdPgZk9G8unQo9SvQQoYj6
PZZA/GHs1v6ij9mP+fXRYgZrnnex70awKi9KIBjpFpYStDJkATWN0a9n+gvUorxWkHN5amHHiqRU
GQWC8pc7NrlF9NdpCAvPCe2LxD+bBnmV7XeeoN7MqvNq8MqHlhqbIVn9nTRig8tOSAHOtcHQ7xhB
DohpFjMxp/WYndVGVCWvtlm6JqoY/2l4V4LYaY9IMUlTAdekwepC6Ddyxe/oxvD+BlYzpGgTSLLC
hXNkwi89U8Z6QJ2o4IxVMYewoXqsXEvRYCwEGeLEamBqyo5JL9DQiBpsqp49TK22RO5zPa2myDe7
ZQZ2pO2jKDztVMYBtSvdYCSLZPJuRbfk3doWgMNBS4gqvpAlgxjKh9kch1ulwBaP8u9H/0xvKbDa
lmJoVSTm0lg9F2ggEgKTrOswyp7K1vTCx53MUuNfdwAEHSu0HNOIdypsiBXyO5dr+uz61foNLzeo
Yr3YAG2atl09ncYeAKTEOV9Ds2sETQuHn88ibRYROxe1YDBj3WWD+Wv7qcIZz8P/07kwX/O+9Q1k
bY4ekNwbSiznDb6xHIIKGBlRd5ouL2d2mI4wd4LtGb97I8BHCdJ6gJ3nhAYC3gtpMaqAoETLZ7ee
DsIKNpVr5jlm7KlhG7QTEor8TKjo284f5ZBWZ33fAUI++AV6j/D9mVsnMAAmsukkfQDMWSmzC5Jf
NNScKeTVm/kr+8CAeKibmGY6z3OfILQMRlYomtO74SldUM96c6d2lVm6raJis2x4QZL+5MFNQn5D
JJQoF9MsMtlL7KNfOaax2lMLU1OAJmz5iY9eYMimLCDfHbIfWN6glkxXmv0GdvR0ksn4CWjZ2wOY
9qxRoMmHipBWYzVMwsYmWNKp4O1jcJXmtkCOROq+UUWb64zDqCXZg/jsBEjxCuZlLXEaGZupg2I3
pNxF1mS70RYBP1IRWcAvGNuFXu4VkRp6IOTa8IDO71BAScnU618esGOj7gQ38j0uZEW5PGacjGKD
V/9OilFHA8rDWhdVc34SrjJ14E7StutSCV8v6H+m1uZdR8CZTjdvHeJ3Lk1GHR4F0UaLDcxORVlI
JhjnabyHo7nrvnF46rj9z58VaXUQ6rHToZnz31GPVFYZp0oNIetZzbVBRkdXVojNLQAjdIDOHsX1
4A5mLZL1SfYNrYvUEZP/hugX+oAroS+v/kadWOBDGMPLaDJv7H5it7o+LsbI/Xk9Tpmqa/iKUywK
WgEf7Q5yMg7+yTrhzTCFyDpxXtVHCSxBMTo86mCyRzaqg/q7OlPRzXYRkQQ03tkr4M8/QYx/wDJT
YwIsBeRe9uv1OMdklAUb8HkBYMCcWf9ivO3AZ8oymnVLKVLwcQBUqjrvqQbyyXjIQDZMUti2z9Gf
VjHnHS546KFy+ZOMIqfKTfdSAz+SPoGIyUBEsxNJ0KstSUgEsY1EDT100YbvvCRLky/muPz/1RKo
y9X5/fNqMmHemZHp5Ej2JU52PpIbg36Le8ME4AKayHiLC+aAV/7bVOtlV1lO/OOpaB1w7tCnURQs
1SASIaqTrk04Mqztdml05BCoYNY8r4w4eOqJR+WUILx+jhOXeTtFz77wby6EMicL01vWcXAaRzJ3
32l+/BMQtM0c5ZGsqL8u5VKVp1hBsgpuTxFVDM6/y0QmxuHPHLOmnah7LZ0F1hoajd1Kr4oJWiLS
8ZH2hSWg7CEiXuNf2PLRAfTBEMbPOMXDxDcHmqJZuNgtpCERIMv/KpxB/JgT+Dcp9CO+GyAd62fI
bURGfkoJpav39TDsDSPNoCGcle69P5kmhmzKla8XuXjmEKtALgEEEpNHO5NvPeymsXi0uo+FO5T4
iNTfUCy5XatSP1rkYpGliIh0hgh8r/rJXASHiNYxExKIvlNFsCqSuXfiJsomAGnk/RgfzZyY5iFx
dMoZwu/hPdU63EoIaxHpfmEiVcPptcjQOMWADqlzkxfAn6F92W0NnTxD/AawcvVXGaDoA1U/Zfy9
EmfK50MJiyj2fmjagoP/SXxxy85clKp7m+Wko2DsVob1hkGKlDe+qV1dRq+77k263DhsLnk1sQyK
Z/Bso8cmJFB8RPvZNyn5DNeKhc0bL3s2wT+SINgYhgSgvKb8mYlC3rULiUCyaiV76MHiEgrNmuYN
I2QzavtDKpQU432vC/znVb46qCP2truio/6aMG5AlYyA3twOrY+dfuIwcTGcJ2OnwluDlRU5b+uD
gRINdUA94M9PvahEEvalMZyoxzc2rUTaKNiQYWWFpI9ZKJJb7LI30BwqrKLzkv/N3+zzS3VWtJMc
tzqZJadCrSTKrwIltDF6nMVPG0AWgUWBJb9TgJMJVkCmYm53NZpVrdH513X1eliXw7vgv9J11Lpu
8U1jBkevBvj6Kr9DT8bGjIKJMOzCaJy667rBhbBBtcd8XwEHz9OKsx7izYHtVfQdJiLIrbMK0R/X
ieNqhiGL62+Rj2aaPE4LJbkWJ3ulr3ykfJOb914KY675XtSWvkfXG3Dl++5gFtXo6D0yCEYn2iJ9
IWH4kz8ACdUidfmA5t9WrnVF4lCyRYNubhmfvFT6br5AFL6GUqpdqNxiBKj5LeLc+ZfXJH6tHt4+
vI6k5jbIlVAYj+B3q36xPHIs9eUmhVGzZFaYT4859wWG0ZW2WhHIvSYR6gZLXmNWeNMaW1doIqtx
fev3qnthlwA4NxN04zPVf7bJXIRI+1IZq/FYEznqqE0G3mkZo6Nj5k1zQ6xQE5v9xhRkLi06/1NV
r/wXnQ9GARQ1LENl2yZaVmgrr4fzLpz/gmY24ie9kMml/Mr4r+IiuPHz4iSSg/0x/KgiX513xPlO
hWlmahsWZZ1u/JZgTqw3EnId3bHXEUk0hnLT+vf6l9+Nt7tweOpt0lYgObEOdPfTTcIiflVkXHj+
uUZbKsXXNUJf41BcdnhZbuGSbnJgXsUhOw2Igugqwb1ZjfjQZZzjtFuWy0JPKsmzAo6BbJxROvLX
ETHHJV9zKaUBoTIf9ODGAEDv0t8zvqVtm9EaDFE3F8GHu7+55ysu1I7AnONJivUd34S6XKyja3j4
0uS9hjfq39sicsuiZ6bqM6CXUPDoPTjMi/T3fsdrxi6fkvxcBJGoLSDBNNVMLGJdAmwmZXqkHFWT
hZG8Rgm49pmIPUGffr6bvn+EB4SiS2NtYZ7FnP1Z7AHR+KssOCcc2DnxWj3kIU9GeKIrOAKKtZN2
0yzjPy78JMyNrDAZ4ETz/6i3xTmYP+g9upcseJTq2Yjh+hV1emkAgYPxlL2vcUtDCAnu3QuS9/1E
P7Oo5OMDAOFR7/2CRgxtehuVbP2cBOvFVlYv/f19frjhtE5xxTEsxlBU/hHxfL/4P9uLKhvWcbJD
Ph+dlufsbgB+VRkrcaCmrvA7BwAdCG2NBpe4MXjyZ4mMrUauQPePZoY5sByy2CKZXhRNgyaes7OU
sfHOLPb/brWpo5Wug43MFxRQipvPTV2KwZKeddZ45Ep4zj/Gw52VQoDasHR4P/WHe64CQK/lacL/
FguzLpsPoxsmA17jHL9puSJGsZGrvI/afQugeX5MHfwc6HnhbkPrcfaND17qbVs+UmPmZMspz2hW
0Nok4d2NSb+u43uuRwzHxp9fx0LFqL2yxG/v47K42FFola0hCNCYQCGSo97e4Y5Gs8A5qlEUBaTL
rGRfOC1ybNS+awJfWehOja/CN9Sd8awhIhCKmfn02HSEMa9FHBwZPUcJFf/7jSxmXmcsk2CjoqBz
rZxcwjlaWW0wY3cgA9fg34p5igPMYfp4Jrp1Gm3+gOrk3A3X78uypgHeTccRm5pwvKty6UEXIZJd
IrBGTHPjfEx5x5+5RqfMRrZ0iymHVthBP1SlJuHxuCo1q2XXRZECGxdz9eSHKwdcxc4F9ws7RkW7
thOSUy0kIiKJ9toyGX6NPjDMmdZ9LSgBHwsxAiH/h4S+pbO/3VRUagEVfOvQ71jZ+Ms1gK7YlOKl
CGbXv21wOLo3NdKAA/xGYy5TQThh+eWIfM/AabM/VlriyulAVX+PJueeKzZARfoFwV3reVGBmEdt
6HFq9xlRbRvqgIgJOlF3BjA7iOjatPbx8cA2wwCBsHLlpCvWwMsx9llpoXAcNob4EPA+KsYrqBKt
isQ5XWEkT/rEAiSygJLAOfGqftDoBSl0NazMo1I192NKM5UHEGMYn0AjKF5Eciebaor87yqEviTg
DOKVtckS2UI6mQdKiAGFV5SMKjxIgjQfHqe3ulbz/m+cdU+f2BCgCgyIXiiHEqdEmdqrzZJCt5rD
Ck28wVi/fIPWjUQ9r1XgQPyIiY/eQmCvEbWoaX/KkoIpSy7V7g5sM1LoSkXrijWS7Vpk2ro5u6Ub
YMAT+g/h5XEJ/7R0S6yqaGi0ouINrKEVKLEO/2wx/bs9IrtwQKsyMYsGX6ANgI6VeLQqgY+pNnzm
dv9GRgCti9+o7f9cnhi7wq5iacS1a/f0mm0RwOEABaeiQ8GHToxiZJg9FKRVHmM+FWlt5slyk4pJ
wrI3Kvi4ombAOf0uuKNKx0r7b5FvfKGupuHFtxb+FV7i1BV7V923+FjftKcFy3nTaMUPlAG9W0QT
xvs/vtiC2U4stxzLtCTNCw6PZiQsTOdXRfAvipmvetQKkmVCjqqbTc9a1qUNPfv6t5wbWyvTmlIE
IX25+OkRwHJB+EOlQ01ttIficqlHQjdy11EDPeYcO9hmUpL7BchuiTASC3xN71mg4Fep4jTTnaY4
5OzksMHdzeTGer0UYgvry7NlWnG0P6keRBLbsoX10PXiSW/rrz4/ln1N+vL30rIDsG1CxQ8RA0da
fcKBJWVM3JcwWI5w6hQetIvRMZ9d0xmCsMG5eUqqkG2clSQWBLLvWqV/u7X+oJCmoyxnaetbegMf
I8lKIp0D88TaRhoFYELrPEMl+QawWPiWTvzkudPHMb/EpJFVe5P7Fi/XGiOThS0Ng+FFCAi1+iEN
duUqtSvQs19oYY7aJHSmY2V0PbvgBYB9d6AX+4THq2M19lowjd4rBoCeNh4FXRlocL61X5PfYV2/
+KdEDBQh1OQPdHyHFLBXHQOUIoWwjyfvmN8YlWG1/0QqpDyWrfsY9KEgm7plhAcb0rAa3YNPhcAa
jTCaIEOFTT3VV6saXB87JvUFn/E3+dNzjrOO0rHMQ7WJwx3yrR0UgfpOPxvjdJiUmB3ojbMH3hlT
C7Xeg7GdueLvdxCoZHpbwWMMVhPYlhiEZf2kWyo4RCnYcK1gTdlMvEsFn54kfpZwGNBR+w4Jf/w3
GfLhwGDaGmvYa4+tA29LPyaBGwVUGJfw/kg7QyykgYmm7M3XB5kKKF5O1Zkj5YJ76xYnDxOFcqU+
Az2OUi8cPXs5OwsV59joECdaSXkSw6GCeLXNkpzSXq2WZwZMs6VB+F5p/JJvMpphl7ad8a/ML69U
n7SEBG1enL2Et4Ir3uTeu8ATfWHabZtZetFMUDn5Nl6+6A5qvX8PRKOW+akp4Yv/AUhZQykdFC3W
8MvSyz8FS4NUiysTmFGxz7AxWCUFiq6mgM2hNgsjeOgaXFETxMzb1wlsuLpAk+h2jszmuDyrdfYT
qWo0ydtZMuZVlOVlnrRIlQYYDgYfoM+UDqBN6gL1jF/sA8dhpzeSSDU1BynyPBXicEHmqdOvbRjj
qvV2Tem7U7Zh3cUD709mk543g0ev4jquxpVq/YR5HTQq1bv50aumOcbrgeeWUe75ODFkaE9YoRxR
xwgom1auoBU3KgYkYO/g2wGq57Y1Jg8/O7TRbyA8fJpsdSQUG3flnFADxK0al0uuRL9sbbi+cPdB
KVwjzL244pEF6qawjpu3bezn3x+TYqquMX/wDAPGtOEtdLoT6sosL8d0CxARyBFQWHMSEPMDUf0Z
b3AuuvtDX7wd4vODA7kEk5PP8OxABv+AhTVj2YqnjYEhBpBz2crWZFAcr7s59TRetGNzRNTnWAIy
1YT+61CAecxDzqiabvRd5RRjmIpxYV971Z2LFHXXjaB94pdha7fAwAVTon0xw733hdm6IKcDFKnV
Y5KI3fhePXIJB4qIJq+mgklY2dTBzJvLoxupT02mMm5kR61twqxhpMr17IuDyIvbsnGqS4gGTE7c
6aeP3WfhXQE3f/rplWQuF6i+NkCiFIbTmBwGBJFE1vFTK8aJs2Wx2k/D3K6Z0MYyimWTqtWKwWaO
ZMcFbCufazLXIuyJP23zJgvTtQP5Iu2tCvrETtocESRRO9wo/gUS3Y8BK4zG2FNBg0WFw9dakyi8
9vGZaDRhouwFZeMY4X4Ao1cgeaoiZe6O/smZz+TfJ+XgxFelqE1omzD5Z7wgYSbtrhcrxjbiZN0I
ZemXjyZHliYbUoYCm+I/TDo1sG05B4ZN9JYQ6uOQ6vl+MaZ95tJfp/wiIk2MmrqoQnUNYA+/zOSo
85JRzy3dX49JWMzGWQjjN5Ju1uOEb62htLzQ0I9kDvHE5Wf/QF3LXfAXWKCyRd89UnyBhITYwgKJ
ZbwKSZYqHgXSqZtslo/5xBQTOhg+EN9cCxCKbbKKuumS1p7hsxVTzWv1b3HwwpJORgkqcBSYMDum
9NuHK8wOL2933WFA+YeF+yxIJiYGMgtjb+ktTrN2xVO9QBNf/L0hxYXLhsNYkN1owQAolNjSTKUz
dqobjTsXPit4THFVN0/OtGGdxXsaiMzbc4b8QauObbg4Htq4aOCwl+CRb0yFaBr5rtHCHQh0vpw0
zs1vUh1IeeXp8dTacsRaI3ib+n1sKZxaIif1g8BUPMxfQzlnsRrPTz/yTRiDm/wCmvki+I4X48Re
4I16ClpCXFx6hueMXSAAZuMckJ7dVfE1YtVsoy4wJ2wyDfMTBYPSdsdGgL0hvqvru0clwnPEMoP3
PvjUQHImA5NcWTKiUkQqbTU34dsb6t3ZZdjsfPy6S4O2ddW9wwEZArSMDdLdJ8xe+f+I0uI0AK2w
7FCMxWiiEUfJaTaxvWLdj/kfEaFkRSXdVzWPyalQ7mIvJunxM78NHrJY9/bnNq8McPfHJW3P+6wr
0i8EFu8vKtB+qklyEOYGD1PJbNRCGAM3SihXulhaN82RGTh7hixkofAd/ddnYY75s9v7Hy3IX3/T
RrQz7RXnCiglp4Csiy7bM8p5l/s0yxYEbJ/pVuXXhmt16nVb+ydNl2gLrTFuqsxM8GefYQx/bZXl
RyLa9IHstNTseMsd9R68Ky2j1fK0N8VWu5xROBqRMgAhsLWKAd8n+TP6iksQo8cowRSwRQnXvAj+
kubOpG6yiFnRd+MkTg9Rcur6k1bg0Tyyn6zSoO+BSWBWbv+BjluzWmknjBkpIq8BDoFj9OYFiBIH
Uj4zyuu1tgSjIKOWpVIl5KD340Bqu2kDxNiRlCGn7Uef5O46pXfSJSYMM/Cj67tQIe6LiLyd6X+l
Yvj5c6Os0UfUurXPVnWSSBGvgksv5kcbfeF6tWfyGo0A6lK0lpJYMu+pszR+y6tHZNhW9EAreo6J
EQg4tHYNBDIrpvhjzbsgfu6vUPFM0rzmNBMfFxhl/fVm/tRrchkxg6MkqUnz0Cw0Dl8mZA8EiN0r
a4/HLsARGoNP6yaYEXuVuiluhT89WQ4JQi58ijrN8rVS1VkfOeZyn6ZXQ0KYSL4PTkb7US8w2Xro
H4rhajggXZEmJVxaTxgLM1/xy6ROSepojyCUMYdOPUa1v89Nwqdf9JxzlnB+0BJBUQYV7TjA/ST5
kU8RAOe9dKlnqwEIzeT6asWGKX28/7PDL0JyuejcYr2990lWFMxTgpmuAXFH86J0NSFlKuOQBT3F
wcnCabhD0d13kKf4FNAXc0RSpovuognl4cVMHY/njjy5ca6pWXmhiumA4T3i2yS7hY9FqrJ7XT+t
whi7FArtZYcpD/yrqBM2KmWsjROv6lrYdc9MseThvpUQFzZTjh7nP8v9KUZdZrZxud81QK0+V/uk
s+i/DA8L73MLWhsPsOWSxiQ7eelYN92FoxML1qbtvWA6N/417xVlUiyYglW6l9VDqWF+ADiVp26u
id6SdaJaoLBTk6ghzrf1lMocTxKYZS3VRfMo3XHz6iha8uwNYalmb0p2h0Sd5uCkVJ15zu0e2mC1
f8P1T4Re9wrw5vAttT8odQQKGZdvsPhajQ5z2hELt8ob6XbVztz2hf1GuXX8Gn4HaH8Rgpi/cqcu
LZPJ0TjDYHuVKeAq2N5pS/rLTyBPc7tXjqR8iJf9kAcg75yxPJV3PF74T1K4d9NcbNAT/xvvygqi
Rp5ZcKL5sl4IZgjXzdVvEHqx5yvFS/eOL6p5fKu8qyFKiBkUkbyOhdI1EK/ibFpRpfZWhrw8AVcI
eFKgsu2rfUGsnis2DzO/jQ9l/wYZ/HJPz9ldX0bkJulpAE5NIBG2lVZN5Q30RI9Z0mytby9gWAkE
hZb/WSqn0quc8lY/iUebcksE4zoIPnqyio3iovL6TKpPu0q7FOGeJF/3D20CKSlpGnWm9zjT5iGy
FmaxPLZ+5ie5G0jfC5x92DQ5rXy2Q6rQtd/MkEIE6gZUSxy4a/ApfNgA+swbmPGIA7TzNwo2o1NO
H8DiV/+09yrmUULQRXaZwqiXiMenjEqOz3inobRYHnDjl0dUqzVevLbTBrar8ZhUhQgMZyzCFCLb
Glzm0cZsp2xshSXpI0dnl1FD6GQuCC5HpPyToW9Xnb+SG4DWpkBo8DnyWavLSgxu5OIhqD7GWr9T
RayoJwQERJ/WALhTQ3kfae6fo18kKtCMySmFUHMHmrGziOW/FNJcMZPUFiBbuQV+hrQOSFp3G/Ne
rqdiQC+JRHTARrAndRKnT2Lwre+Yog9Cm/ac3Tu98x0SD20AQsBSrbvREITt3Se62gYC1vu739ef
JQt7RYgwX5NGQ4m0NXJMk06lpTVPcfoFZ/y3B6i+gRgdgC4u+Xx6gwgFl0a9jWm5j5cS0fLs/kLg
foXojSyS/uc4lsP7fpzamwr9KlSq/bG1X/34Xj8zvUNFuthQhYOkFSxze7tEafGfdflYyEpnUzA+
SPCfp23DZVpJEgqHpW9z84kiDny29ZorVTynPj7dSanHDj+hH0yg303a6ZV07c+ae9OPafdZLxDQ
Gqb3UcXb/vj0NL5Q/SCX9VRjFd/FIDapenFIsCaXUmyaa1dlLcR2q2FLKeQ+4YV3sgWrShq4w9r+
jI09B7gLahCVPSZHqnm96NqSmUSrf4ynhWrLVE20S7s99BA8eSobSo498JR4g4B1nuiPQlYhqPmf
uf5u8kgoizeN51ow6nvLA9yBJ9DCfA6kryQpbtLCAalC/QNr3DCR8XpRt9Yr9JG+GFwFd9zzLmZk
moVEY3LmXpUQKf5JEt4QTq7w5FTz7tBgdpoL1BTzmxySzifqJvlag9GCTdtvY3ud9HuvebCPbYPZ
upO0PAc10DXmp6XaEckPGWI9p7ktHaWIktRul7ueFkoRZpknLPUmtO3BhnMtRfvKnzHBcBkpQvAu
L23ujaGSlAqFqsmAFB3Cge+SgyDg3IQQezYMdndiQ1egLkzcjzCnB46QKX8hv103imzP8vpBGopb
IuK+B+wn5Dur2DD+rTWFOYoQVQHNhPNp7TatuNhLvjcjrKllfEAFFbSrd5RH5CVfuu3yAqM1/pWY
dZ4GPq48ydO/pTJegMaSyGy2uFe75mLAxtShsCtJs8Z6RX4xI+xt7Cbnk0tPXSqsVzlBkjqQSdJR
ACTd4a+I47+CkI0Q6VTA3qEtrjn9AdRVfkVauoJl9HqAG3yNJ6phUbOJkAUw3adbc+Pz6m/XQNID
FPXdC13tGrwYqDdR4Kms9B6soGregKWLqNR9uJpv4NGZa8pl6JyzagE=
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
