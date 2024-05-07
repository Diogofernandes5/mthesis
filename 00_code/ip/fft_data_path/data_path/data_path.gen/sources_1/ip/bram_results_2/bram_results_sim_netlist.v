// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri May  3 16:17:54 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/fft_data_path/data_path/data_path.gen/sources_1/ip/bram_results_2/bram_results_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23216)
`pragma protect data_block
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
kQaGZWflOR2cmzpIwFZRB0A=
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
