// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar 28 12:13:12 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/stage7_BROM/stage7_BROM_sim_netlist.v
// Design      : stage7_BROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "stage7_BROM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module stage7_BROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [27:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [27:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_INIT_FILE = "stage7_BROM.mem" *) 
  (* C_INIT_FILE_NAME = "stage7_BROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "28" *) 
  (* C_WRITE_WIDTH_B = "28" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  stage7_BROM_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19008)
`pragma protect data_block
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
7AMd0gYjL0AYz4WfTy84gj83fq94c2ui10Ze
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
