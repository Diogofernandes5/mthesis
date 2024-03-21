// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Mar 12 14:48:47 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/rom_stage1_twiddle_im/rom_stage1_twiddle_im_sim_netlist.v
// Design      : rom_stage1_twiddle_im
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_stage1_twiddle_im,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module rom_stage1_twiddle_im
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [13:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [13:0]douta;
  wire ena;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_INIT_FILE = "rom_stage1_twiddle_im.mem" *) 
  (* C_INIT_FILE_NAME = "rom_stage1_twiddle_im.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  rom_stage1_twiddle_im_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[13:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
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
