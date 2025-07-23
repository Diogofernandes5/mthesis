// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Jul 10 10:40:51 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/TFX_Core_2/src/brom_vals/brom_vals_sim_netlist.v
// Design      : brom_vals
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brom_vals,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module brom_vals
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [12:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [12:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [12:0]dina;
  wire [12:0]douta;
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
  wire [12:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.74805 mW" *) 
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
  (* C_INIT_FILE = "brom_vals.mem" *) 
  (* C_INIT_FILE_NAME = "brom_vals.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "13" *) 
  (* C_READ_WIDTH_B = "13" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "13" *) 
  (* C_WRITE_WIDTH_B = "13" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  brom_vals_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[12:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[12:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20608)
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
