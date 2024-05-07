// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr 16 13:09:02 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/fft_data_path/data_path/data_path.gen/sources_1/ip/bram_results_1/bram_results_sim_netlist.v
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
  (* C_USE_DEFAULT_DATA = "1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19792)
`pragma protect data_block
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
4ef9ZmDNlQ6OEUaksw==
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
