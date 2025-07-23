// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Jun 26 10:36:42 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_1.0/src/acc_bram/acc_bram_sim_netlist.v
// Design      : acc_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "acc_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module acc_bram
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
  (* C_INIT_FILE = "acc_bram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
  acc_bram_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20592)
`pragma protect data_block
/wLAXDh/eC3enCFaggFpT2vi6nz8OMgref2w0pNWNUV6obgyo6qbFQo+B7OjD+Oa2sOEBd6c7LeI
fhzsfXNc0uVx5/CLOkPBvC25VhuVazRP0JVE5Z714SQAl3Zkc71JmEixj95wZGh0ul/mvwnFzxts
ub+n01X8o5gfoHyy0Gqmi8Rzxm8NRItS4ihE27V3TVf1tmErRTTSMR7bGI0jvLKv18WYnduy7I90
s1pENeen/NaDJBhdfh2hDAvLyCH3/ThO6EHTsX7buBDLn3SUiw0Dts6LhS+hVaND/GTSmdm0AgQ+
Ry0IK8McDF1jZ48z5LScG3UVy6TJiM7f9CYzt0Gt4zrU4RqhQULCeUy1ALT406OEprkEUjpSrCfD
EzMXFn9OcmNdwJqkjvS0caPZai9zvk+Jjnin7vmowj1Y6T3eIbjeHxp7aB1boHFBe/XJWjAn2jdw
/Js5Ao+Jqjpw7BbLEWg0hSqQW/ok3u5e0Woy+IYtnc38fgWsO2EwNNg9+qg27S3CfzzbT0oLmx93
Ru6RK14KrzNzSdIWWd77s5MjkIFo3ApvTuuJZAqBQymjlADvdRiVaSw/+IxHjsWo6471aR1pZxAE
ezDdfCDUQjvJHFBS840m4Pzs7ZadNXrhBnm2H9lgzZC3ytoOWV24nXahVjiX63wq5lkFhQbBE5V5
lAmR7KNYrj7sR97Guqc4OWzuU4+YfkhJFr4q5E1isztNfDYUt57gZNDh4ON9EPOPDbtCG/VyrkJL
rp4hUmsSAST/lU73nXrDmUftvcTbOxxRgI4sxTjZYM5M1CQYDTM+jtL/C9r9f7LqKZW+mdfESLvB
2khKK0zzFg0OPkJHy3rtb7GXp5ROn6lHIW225Sh/KAiFrvu3ktF85cCDjsNWHMk0ts1JCN+LgVi1
bweGpr942Z0mQ991lMCGcuUNipjHvNpqB5PNZu0VOwBFPWKSOUWWCB+38PB0j8X9ttOEqM3nPVSt
TOVPYpXABYTu1LhSvXOldoJbDZ8McI2dZSiHCUYikc9/m40A9voVEL9l61QtnnfazNSGglphyU8/
RCrcbZwJT65bjRw9R+4O9U0qM1XZaoERvAE0DAo9DeAZ5d8g/U7nQoRp/jL0Ox2Wzr1EswLjA8u3
uFXWG7fuVc4tP0h9w8p6QOIndmYSAnY96Zwn4SbUCq5xsPHw8z9O1lc+8A7bM8Ng1CiVTTVX0+YT
fUQA3nye8g5g0Fs+5TpCjaLlklKzcoF5v7dDVcTyqTbOsDruV+O6E90QZJ9+QhyOVM9F5+eftkJV
+AHmQQB/erAgoqp77Pn06OjorEZ2zlFtRkcckhGreuOY3HQhwv+bPiUt5dBgZTVCCYpXUS4B2SxQ
Yrguvbo+fjhNleyEVohS3IiLh2CHnc+7NgYC28pemDvGPhXZHcfreU5OulEp3VkaCvsQjRcIBsLD
fGLc7dpFrpZemuJ8Drs8ilBjd/OcCCGMcAtSNIx6+njP6RK24F7TaFPqdfWgN9WGLPh3WF9rLMvx
j/xQ65kx3ajMD3fDU/4+Ca/zTu6plqab7A308EV8xe0xRZb5Xl1Vk+/KnKtFfb4/CaxmmwbV3A13
/Djf5szmcWXl1htzXgoSETy/A6SEwu/VbmodJfKVy60mmonKb6kheyc3VZ7z9rLQhf872psBuQCW
L9Gpmw7ozkvUTynfNPbxisake3Z43DySzdmA2/k2XQQ/MZRbiPDDkqpNEXw08t9fhKa6yuQ2lUwH
c6skfHUFHX9YfMewVn/Fa2CyLWyW3SZSvMF5UIB7k9Jmn+YrXFq3aloTwpV0x15qN+sHDr6oGleT
OnD5nFKCkrq10KcjFj4UiUNdH5Z96ssUGvjiQSs7/QM7jvQT2U7mRn4yrAlIyxJd57KysNWW0XH6
FivrqcZB17QHf+BmCY25pOi1VkDGD8b+M/z3AC46A/dvjTv0prDVA10+bZ9wCz61883upXx/ZDcV
XfXSuxG5eXj1BleHjDurag8wZsBZE8CHqkHkVUYIhzfFgB8T9oz+V9ETed3heRi/ePSdxwXyIYQ+
GAJVSivPHR+brIoUaRcwAj1J98Z5gVsGh0hkWO9fTwivdIeZZsMBxQYijnpavtzHZ0lK066I9L7u
i74KA6pbbJ026Fr4tfZB96iOma5h/Ocq3XX9NWTfCAI7OF9Sp39NNfeU5bmFiXbr901mNJKQ3Qn8
HsnoWsHbNYpd5UGoYlyyB0RIDF+Y8TB2sW/3MWMnjy7W1zul4RJ3N7h1pGWZMtkBw8KUyrB60meU
i4xwtRN9rDqaCnY1K44wxOHPWGLSOfHG8LCj3+YfoHLaIAPcFxO+upjEBqLW2voou/yb8HdI7Rd4
81itph7p9I/D/eVWXvaEtOywx/S0PKSdrhYbkP5DKG+js8stILAuw6oGTaIFD6SqmSsiY1rKbhzC
2thAJOwPr4GrRWahE3FuN/KkuAgwSGDnOCydtITTiGsEyuMfJqaHXRHlxrrdzBFUyVaBeqNXTlZz
mVzG5sFt+tJbYYb+sHmfuyOk3AbJOTIibocTYFbtKdyhtg5n3FxUqhFYJnDeEeyyHvGe64nNdm4d
0eUlKQgEmiw5B0r5PxgieGo/fCaZpysaAbc1tuhwbv4e58dCQQHRakdTF5QG7oNX4lB2PDpRlzLq
F1XVVA2+WUeMPCClHhYdaLyezGC3kNiVHrNm6Uj/xGQoWs9cC3coQHIHOXbKDgqC9Vb3uiUZL/pM
8Is+1/0PZ3pAVLcMJPswIWA+PP4shjuTaQOIzenPdK5/4dxhjwg3VUo4oG/zb/5lvmhh1Z4mpkFM
ptLh1ktXTRmSm2uRT7pmROPLYJQau5k47bMnvTjUANqJ9Yvlkr//ZaVDDmGno+RacVwN33bHAQAy
LXURoIpFHeoUcJvgOT18HnZaTDHsWYke3DvCFR6ZCy5K+nhesL88U7pHww21kwKyytLhSZExYw9b
sD/vbLjPQa3x/kUe7QvRM3ydF87L381LfcQmHEkWKNE2mMpo+2egt6iTjuNHjWiY98Q9Crxe5yOk
3CbKPYH8tVKYXhWneQo8NCPP8kaLyERnv5fAOzY5qqbIxx9nCKwX4nzQxhbRaSuaJak1WmfHhDOw
e3ZjLEGuDZirhodBHvhoHexPjd2UbnzmeBBLiaoLFgATYalXgZQ92r5bTjG+CucQ8fMPlF6b+XJW
awE+r5XNNh/0e8hruLvcDshQd6Gn4AP39iXBS5MYFXMUxUpwifpoq7P4Wn5TnD47YhTF9V56pJmq
RPQXe1dDrVuPNNrDf0T8hWdVC2uM13yQ8TdDCUNx/uTbtnGUsboceT3Diqm4I32p28gD73FFr8Fh
5B9+1rXSyPfTwPyd+OZ3bfrFgp0nOu/psqxDqARQGDiEqLcitGxV87YETE9QOiPmtrbVLiortZpM
VjekyvL9PtZr3fZUnB3ouiXdFhQxoON1ruYS5SidM6mFOl4Uxtr39GiDtVZmeQDVpjvmFrQN7fxH
a2pQhK8VrUjGpnad9yG4kpvHwNeLHgo8yUUlO9s8UGIEHhepcELnYhcNjot3mNpJIq1XHLfO1Xxl
j59NXpCh4A4tnAA1ohfMW9uCVqLSV77YLxl5741ISMqP0rY5cEByJlB59kmwO2tcdebo5J5YMJgg
YZPEU9/lNrku7/mIGPDbBfWRrtqQGe+/IcYTANtk8rpurBFV0XVigLakIz8+80uje44HxQKxCnfP
ff2uSYjrlKbX5/1w8ADhnmCz0hfl/7iv31yENEYmGyOLMtgRwGSVSDYIF3Xh2wqGEe+0Smsa/1fi
Oj+K4RL+t5XT23NzuWrLPgsQ8VZ4wzqb7qb14Ch3ONJOiPQjv3YKj1TihazuaUyuruwepp+SMsRq
LSh4FHWA4CxMlrpuILiUzoBdtjWCpiqe3sAEPD0opfta7B9EvlfM6Xlwcjo+zSMgTna3et0uH9pc
jFFp1SqB7A/8kPy/oyc0IQzA/40svqnb6/Hzk991GtbjoqHp3o7OFXm3Sp378BUuVOMuXcEDNcMs
trSNglHiWdsinaxi6ECqCUTdMXpYVrRfCWkAAq5OmK7vqvu7/QBqXl70plfv/75xSg3qTrJVg4Cb
bwL1AJRL4SgXNpUUdAcV/aYffw4iCvihLuKCqXAw4P0lMnsjXmRyaHdEJN1UH8w3lnAZ9XU1kBSi
rjgT59pGWgMhOa9ILqAeyeW+Y3HHLif1XaisCnIUFWktsRXBPOH2hfrJT3qjRG2RK3aoNHlHu2aH
d0a+Ds6yKeJAjlOQnPg7k8CJAm8pgubZ0K/VGtsEFwdpCsw9wu8VfncjMvsYAVvy9nqIsRCHYNM3
3xP+PgNTDIo/UqjZCTjry6/wjOK59U+9jgGaTRuvfRBqdACJXrlDK8TPCb5yj++J9R1VwMIu+C0o
mXDavEY+Y33JH4Rm7iBjG/7pP2GQsmqlpcdJ4DXS2oiq/r/LNFPRojd+3E9PMxEVzeDQTAxzaME8
jZyKsTHy3eTh1P1cZOuDXzwNtabimqwJNs4e48WTkqzQRV0/3V0mb5TX37uXNiu5KaOP16Mq/eLj
eUtLC94PVXeBhsWl3i8hk0SHJm7wPshlvxuSuKHZIqDb0rN9YL7sssxvuFl1Co/r1YjZRHm5QMOR
nY/n1pT7qP4t8ole7jwEyiEtBcWIj0XxeeXiHdj9BfxrhFgzM8KqoOW+U3XPKUp/xsOtJ0M31rVA
wz6FNsezuezXMdmEE1VumJKb8LKqOT5v703KScVquK+IPyRs4CROWqRncNWhH31rh11fm0iUdXXs
kVAR5XebS4G21t5pP2XXk5TtiXogRUWgXqP7CCKIjgCM+4RuqTS5l/ZM9ZP4/zTP0PMSsDFIOiks
fQvT9En0gOmi/BAyYL70uYMeBvI6PyIDGwhrTFyAwNXgz9KncMI+eMDm/r4HyM//IKgsZrpxRsG0
yKQ5PItd3WdPPfKYhPh2l21090Jw5+6BS7MhPtyCO4WybKn0wVqWJDRZ5C1n8RFHtKOqsWl2C6l8
7mufBI7rQ5AmQHXvjw833PzVDVkiqYV2NfYcjtT/NLimQ79AUKOXjX9+it6zXLUrrqkKetaZ6cSw
ezXzB3+aZo0kpwjT3bpuZCNuNxEw0h8ZlI388SKkSIxBtfaQrVOnPYabxJUN19OxLrxWlE0WP4kJ
R1cehJIKSojk2F7MzF16xgW+IzgUKjS5YCNWKmqEP5D0nSY5uQmYo1Q5Z7oHijwBDrYxgRzIq00O
lz60UUej0Fsrr5UAohjrwc432FEj7OIxa6x8aPZQvRS822NPJgL8h3pXN6nF2twYPYFUBmbEUaPE
HRxMCOibbMJ48+ubsJp7pUqh4ix/wWPtHkCOj0TctSAwL7NdIZmBT5eRUc3OMsir2lqlhdyzEvwE
Xw9yV/RegqdW4xscF0ZO8AyR1bZw3FEcbh936G66pjl9p91AoddxHbwBON9DR0IAwDRfC6h9bZpa
2nYLgjFLgoH5nQOTL1vquslHA0LJQWo1Td2WFJ/NzyEruB4YOwGBOXuJFeMqnsLw031Ox5Rb6X6C
dE0TNh22sKpnrSC8JwfakoGhxEyZ3oNF5K/w6TtY2A3G8VmTpVnMIwoQ5r9McKGLxTMrNw3wInA4
gID5mIfrHD+jHf0RtPz7YQcoW0AtL6lmyKoNa8ChRq2jp7VmW4l0XqQeWDCBLnfkfQ9bgM7KJzYA
c+XnvogR1GB5FzgkU/LUY//SsIchihVeL9eS9/eYJQrv5iY0OYN7Hq4BXuBpn3chtoY1QyWHE5ek
Ybu+8i2ke1JCKUpwYPpX+EBnjzclX7ES0VrhGwvO0iogH5Ey7txa1s5/vHgk+zlI/K90mN/VQSUB
yySNouJGb8jiPnk+zEgVBeQtO2+Fq5tEO/5zdMA2QPfIjXPf+q8RMF1wIeUmZkO2CJFkDIXgh0Rp
pGRSLQQ4EbK6HHdmx5aZIlwmJDREkoTjYX8ikAzU9l8iIzjk7oMg2S6vMOGgNoKN/wBW86juOupR
PQTnoeYq5/P+AeXR0w+K0948Uv9siC/koYtEP6jpg4KOT64mVIaQU2Trf2vNwuu/J1SiaYZVocmJ
+Oyr8/BC/opIjk/HkkLREqkWG+wYqD/RJbAkDstGgN8W7wXJoghUt2uBL06xP7tE6DqmcB1VRFLO
X+40U8hWBxZUiW+/o69KPjWZrh+e58+xu3+g2FG/JzkZjp1lv6KaCsTN4JWi3KzlnMCu37e8uVrp
XUVlYuWVmWldroM//saIfKZzP8yu5c8jbRFTzkxxhQ2G7du0BaoJM/0/9rZ5ePjf9KvG1ZyyeMdl
k/oDnFitcd+HO2SirLuLKeJSfaoYfqzR48c3K6CCjianICJlXiO3aiXitmoMJHdwnxEFPTMLSL+I
A2SuTIjVXZInKqV05IgKnnHxC74tPODA/OMSt74uJIZEVtO8rJEx7zL8eh7dYyPM2a/qqKdqduo1
nX1lQYU7VJtiFbBMm2J1ytY0LgQO6GpnKdU/IE9mw+v7ADLpPEdkMjzZhcxn9SFNSiwjrahegPXB
fCIZG2uQXmBEHRD81JBsm3XVEM57alGsyoHO6i+V7/7GMS6aF5WR3ORLQZJRqtpEolyohE3jrCJe
JOR1tF/9NkGxGnlp4aDl3w4Ute3cpfHg+79wj8wC7wFGfLaG6UefdjjE/13LmEvtoaFoe+IU64/m
5xf/VOisweZGBeEt9Cs65hf+iWI3DPbrVpxKN1T+j/ipZMeZf5qatWCA92C8kIl6tAT0eKLx5bnU
/JUg1R2mj8WbGzUhIq8ODiDGlroPoC30FtE5ygsth20Vkl6bZWe24Q3HBthYkVW4wBd7FAN3r1vy
i9mvLrMDEqHaJYvG17i8isjZ4GOp/EL3b9t1DO0b5ghbCVnFlfMhteNpEr0OIVPybwmCOzq+jd0x
RsJ82UtO5xWJlNzRoZrlon+4TGvP8qy8F6oAK74f0rXH7147hiK3NdFs+iads84EfJlQgXSyXgLt
21kYpB0dhzOGNMFJULSudd9GhOMb1Ka2p9/JMNpLaUFlo+7Pm0DvunTe6E1yfDA4YIdQDQoP35uA
9X8RtaHSFyYrFQ7RiLyMyFzH6DfeczQuk8i/3KIuP+Yo9iCcaajsuMoJSruGmt5/AFGe6dMPBJUg
wziZE+OXz31tjhnUZbmNsf7Bl1klwyci9kMLrbIRBhtzM5gWN9mQdqbHpcHyH5bChiN4MjMZAR3B
JUMeyNwEo+8Or9OFNRcnIMgcGGTeXJ9Dp6Bgaq4nt/o+SJuUzcQCQglQtJ0aD3Nd1tVLgwQ2viNL
z4H1tzW4Ho9Sx35TW9Qf47vRD/O4xvmMYMX1r/285neJJz/CP87FH2IEuJVDBy8qDSXWV/yX4Qd8
B0jazWZTnGSC2Mj3weoJiUnmrgZSqIwjCzi3TJvc4kOahaY8twbs8vc27eNPvmw3eOuyokXAgtre
zmQvQBgqy8J8OSfLlTEOXExjJY3bpzuR/tdxwTHJqRJ3be8VOtxkS34eHBhlrqo1gxXRsyV1xAdk
srx3U2rksk6CJsDwjbGjmihKD5U8WoHh0ax335Id9TrM+vH+89i2PKAlzMRoGjGoJMfcMmHq29aR
3e8ydP5LKh4R9dEqghhe0oQQEyTLp5lf0q6y2Vu8Ah5x95CZzX21mvoimDRk3dOeg0NaZ6uZSUDy
V4t8g4qFqUAuEYDsoVbnu5nNWYn0W8od3ViHMpA148sR8yzbGjhrHgBR40aV7VsG07le7U1aGB2+
7cEnGlDJvLzpcydXhEI0HyQ1WySsrmvSmMBmw5k1aIPfDM/EePLjgzDTlcE5RnEEI1Ki09ND+uSW
pOOnEU86LbFMycF9jG5ESzXAGJbOTXPjiaHgnczgCrNg2T1ZcCxhpOhMvXJLr1YCIsAfxBDNFTvU
geSZAs5lxcJWTRPX0/ys9bFJDZUOXg0kArSVIW0clivlU8hv6OXPuB0JjKC9YMWxebuqjXQrHCKr
kNvfXZ82Jk6mv3WmJy4TdYOpcjA7mGIP6rqbjpdsxbBvWEnab3CVIeh3hOenylPZzjB0NJ6gUkhN
bq5Jsb3Z3Dqv60z+Ju9OZmuqb3gjnXJ/29CMGoVgkFE81Mjhj6WzvX2P0DDBFjyXlHm5b6DxNvNz
k7jVaqWsCF06mv/bM3KfPLMqld/fEi8fJ/3sTtWQo99YdeGOeieYFZRXY2qpoQSwfwgFnoR7Gxz7
t++/Kf+IgkeDF0deehAUwonN6A50Ip12H0vpePzQdVFtFS9+pWWbeLf3/B6E3ZLUQXThfBQJBvWE
pBvpgwEY4A5yDMLQZ7Yf55K9YZ81cCg7VSrpz8FLtQqOHFaXmGaYdMOVKp6GPJxWP4imVQsunbgy
HwNQSiClkJjTiEU5b/gvnmvSPp7nyrMg5xTpat1j5FrsWsN4Z3wN+6MuEkYg1QCEm8H+TbImFShM
ZU5ZoB89o1BrMUVDY8HvwN0e/FlGBQ9FGr0d8j3fiWabMAgx02Hpi+pAgIk2J9EQUzzTl7unTFzi
KMuNJ3Cj6rDK4TxT1AiwcYYZCcNNXRHm+BIb70ErC7J9FIsbYVQJOpugB+afrs+oqeNoHONPl1aD
AOEkwjql9KwEl7en7pNHrLDuMWffHurl2jVekN3trylaaHhydB5iLP1syW8AUk9yAtxSITiP9f9X
5mRKfbbeVNDyXJg3iTgqktbbLBlj2kHGT7/cu41mYZA2x+OQWhLizxA0WN8tc1p0NUm5JjGvcjPQ
ktbfTf+ZEJOmK+beFDqM7GZXCSMnywdtnyc//eFNOu0pYdo4a1PuWYD+uCQLFCLHvAXHsirj3FQc
K7Y20Rnf1jyKfqE/TiOUYFRWpp8vAYeURV/eojgsHdc2c/ZTfITABLOLcS73JGB+m+NeWMtTnWgb
01fhEIbRyUJ+Potyk+BkVyLhOVZgeXQg3XE5WOBx3FVzl1PouUcOWvcx+SBm4yHQMC/wJSvpn7Bx
PTcqXUBlUywTij8XYRsAUxuFHf5gX5R+sgyK57ZKnpPjOhc3/PebWB6v1DiLU1q6KF2yCBEUDXpt
tGdmozpactUW3HmTaogOTXd2JGabDLMq6NOix3WAH7UawzjI/NURAUAb4HhSo7TNDAwB649YdbiY
QWGWc0DzoGciggnM4PVtTzMj1eweGlNMMEMpM2fKQYKTBHZrtrE6SJb7rwbdU1KAOedCRjVZNaOt
UuETK7z0nQ87ptaf55qa/fhtpBEqrCh8I1CHxKm+HWstT9HtdAe3YGrgQXdu52tkAGXBlQhBWTXZ
527ZNdq8bIDwege9c/MeIDjCTYWPS0x9qI3RaYJtHxsU3eXOezYjHUDn4HYSNWJSuzjcb1NxTvJD
hp71MwR5PG3bUeh7raeM6DnYAE6yMXy7Os4TBzExxIruxmWLRAB38XsxBi+EQ8HKqtZxela78UP0
v6mo9ilg0Ql50xinb7jKzNVHi+q7Ajxl2RDaWn91LugZeaYxGTEu1e4qZSLy7+F/MaPc8fUlepLq
Dnze4oRxxintN94BlrZj6dfPovsjyro2fHgLJW+9OGX9r5xhKxvz48VxNiR65jp1ef2kocBjsXB0
rBRqwmJUEPMqr+fX4s3lxXjks6aW8g1LGPW3DJtUrL/ulyLx8KscVU0yYane6XHU/AxvQg9nz+b0
QcAWldVQ+3+57xPA1dklgHZix0cn8rk/gaBoK6xAoHdbFbWEJCaphJZrE0avie44kz+ypvtrxM/+
jlmXjuSH0B+IRB0EjgtD7a6WiKiKvRf2qt2OK8Jxxk1uJH8AV3I28VZXsgwLVo0nOu+8uYFkRoAM
qbhPyHk0i5w11jKTghlgszIz3hSbuh8KlXEKefeq2ma5Wxe9xLt2brwXMrHYnTjHuRRKG7UpDLm3
USxOL/3bI4lF1GMY0KGAvjtzqAI6RqlPa6nYUZ2mYIrcI1da18AvOfOSISLxDdBqi874YWS5xy46
KPvjEnPTTVe/IOo7+afn48lgs6+XkZhgI7aE95WFrdweRfjU7o7zBaTAUfaUAF0wKdnCugIzlQuv
QqsvDdmTfePJkxMJCMeIPSEHCuifmxG98wP+lMug7w8kw/n9GZuw+1I6YmFN+dUgkBMumJzeP3Mr
qxZHTL3ImBJp5xMT5vgrCn8g0lwXms38MxxxuiPcIdeo2KFFE72B5YaNW0wDyVmWRwZVwDTmzbuS
EYHQ7QIZmCKVwJA/n9MaRQTk7IocZa+E0jMMGt4etJCFLtrFqaTEQBL6FHXSWPB1Yc/9VRr4K6GL
SlxKTaEjZFdBeH1xP5lXx0IvKitIctZi4bOfYwVblFilP1V6FU7EpBoKXxucxrwYErPG57W84XKx
Y+dqeKOwKdVEvbiy4y7EFhY0B9hX7Hp1HXCmYa4HLDNzVVp5OOVv11BN/Kv/do15XBxSPPolCLjS
yKogGtZpgZ/KfAVcNL0xALbFtqG5Pyo/cM9qsT8agU1A5Eyk2zQgYZlTzrkJGYDx7Xrjkos5zM1Q
ScHqSUHagWIBuh/JwGF5lHCReAN64rueT116INNaSbM1WZuPo5BDjHk7UlpvJiNA3PyriGP2zjw+
nnSbPM1RC1JXKEI9ze5RqQLo02xLE3JndPL8bnKf3sIjYos7IZzQennkgWMKT+LKLeO/dbGxmRhV
Q/wZ11ehL6EZzomTSwe0On+82QRToV9oHaRDgqzaurVvTRJHvOVzK3xemkwBuZFx9XtoEnffjEoT
9B778vBtSAqp5CIopGeygIWxUDuPjD5x4cS5bbwl7mPV1WOJwYj/hyJjoGeWA7SEqIGSB/7lD9JD
gheA/e4Vd4Eey1TfgODDJGeyv2SD2B6TGfgtu0+O0ZG1JNCYO9jMBdqI/Kuml1CMqfHjccycr36E
3ik3N06OMRWQPXH2Yoxmq9juJqd1sR5Ku2LiNsF1RzWGgg0GDldek9mpwViq2oIQqurssoEybzNz
A3F0ENGEnTaakN7eAkj5QODBWpwcgy/t2ENOMN7BuRdtygEV7aCqFwKTvo8NdoqcbQKwfhecgy3g
ke1Zr3FHiy+YOE7YFhwl6QHJE+wuha2Uzs619rg4/4g2/k+kpGqM7vnuF28QPtNQy6NBuEMksK5T
lSAyXgiJvS6IWJGbGenIJa2LXiP1lSW1snDNw1ZJcOJGtJuZExVNWmH0iOG3Sn3805CquOY5TmIZ
I5oUoPsCuV3ZLB2WjQCJN2y1BNNzNKM4paO55cuoBy03X8nOuLZniXsdWk7J9BNqA4an/THKjkfB
DIHSob4VH8pT8fyD7AE2j3bq/33AQqgqGtoccJJpfzqXXW1DWhkrcSpxHXVRgHCNHO8e3EbFOiF/
S4h6S8mBQkiLnTqnCL0AxA4eF8p+3u/5wTQR7Odi63Q4EjSOXafguj6bo7HgMfkfeAGY7aK88cGv
mzbDdzhixQ7PvoTlXL8K6PSRv7ZXlsezSaKxaU5w6sGoYy2peHzeBCmeY0uzwTSSc7pLBC/E4xhk
aYWQTB7ZzOeFqt0Tnv0EsJC/dD0qlmWB4gPltF+T/00q4eKAUvGtV5EOwYc27qAC9tpc5rRhop4E
s7GoXTaQ/k91wx9VVomBmEMLwZ7+tPgJBPEL+ub3fC4cB2WO+IrYXrLRroK+Np3BRxuDQ0alUr9H
pzTr5Fy747gtn2SCHSv+GlAcDXpLgBYnPV2JzrJc5mz2SrkrrRk7dMc4j0Bc+a0xrRQMvawQ9VN2
mtsHmQz6o1nN3vVHGTlBuMnV++j8UggK05X5t5CciA8ogcJyXeUDN4tKgJU6Fv14ydrk1sTsct3H
tQLB7fm4P99VZj/APHVWAG2p83Marmc8VokbOoKu6bpRHH8GzC1SefZ2uvXz7icr14bXdd3QH841
pxmqBDChq881xl3doBtS4nqB7mAW+HIQsVnmfXvWgjQfTI7/bc4ieTRASzVCPrkJHCyoOTZTIOVQ
c2Jbshq9/7U6MTsyxdqUjl2BbiU1b8MpkEOWzA9OTSy94cp6V36YTJLL2aPlyA1omwYXy6ID/JQp
HyWQWdpcuQfgzqySe3t4S5brBGA+9m1crr3fumZQKJPdo6t6vEE+xY0smU0HtZ/kWhd5DJDUPfdC
XWqn1qzgT9bSzsq3o97svG8f5QRf3Tp/oE2trKSEpV+2VRWn7dtnhO/mVmQTYHRSHNMuyPgHS5QF
oJwxLuGikr5o6o+6CHP6uaKrl3fUdp9TYchMY/sOgJ4m97wgvqB7mNJPUZftu/CfNMcYRpL1UJ7z
9G3pSLj9Lae+mNWo7lbQ0LUwAOhFxm1eGWZWh9DAqkp6X7jebwD1gGfN225dlUjlVrGgvMryuJbe
jdxN+4nbx/SGi9a9+LWuFPxh8SJ7CdZgrmS5EDitgHnwO18mHL8FjrdRa/fP5X97Z3jR57eZKvex
PC8Dme/zgGkRIvED456UVEBoiHYupEPAbdhpTe6H8ZK0+QYnU1ZMHF/7ccEDZRXwTyLbe4KtP3Id
FJ/G/Nt2zQX4nQTYh9aS6/vKQlAdaup/hvHHvzy6XEWET8Yhk6530AGDFCe3CAGU1L9kFeSU8i4B
L/3ao0akTcgkSwmll5BUEagtOhurhh2kZPE748WFo6vvCxS9hcbP0x+qyf33oXbX3RTbNC+S5Ai1
T5bWQ7xu6t+Ka9R/K8GSpDlCTzukASCCaij0EPD8S/ITyUgwSXYGEqHpWNsPoCmHGQYWuO+3EZPd
PluWs26qvOlyX94wY4RNEikiAqT93xKFFfR8LXASpbU6gRxsQHsaU6eF9Rlu/7++aoQrZlwcNBvx
z8tBNW5Re+iljFEzVhLaskTEADZBAfJxzjb/ZDB4ukkDbJXh8FtynfaXO8Sk1wIMtRCzS2SKleGs
Oqx46MC7bcm/1caLIeGxbpIq2fFoCN9AouLRAcbRlyxZQj8NnmHMhghNOlEXuZa+GGvceBcR5dfY
xch6uSgGLMVkwBKkY4FuX9yPU+TK1jkKzd3H7VNr3V2plHiJhyUZ89gv+3qwRD5viF/mQ0Vmp3uM
pxTiCGh/HTgLLuFujmvMknBLnPrfIbAo3GgFDRG2/+/EE/fNd226FP2vd1wkwkfPSmhVYwihsyfe
6B+YWbbejb6YdCGHrbRDU4qlG5JyBdIvQqMTwEvacM3TZv3JMV8g+YXx8eHLCg6dab3ABoPGYu+c
6FzFCImL956BprwSHSmsq/cOb2JVtOEdvcvbbu834EtR/9UtbI/KfStkbX3AUr9HZA95nAigE25x
W2FC2vSoMcYn0YrAJ+l5KYFDnrp+PQioW5j8ofXUaPIWGyg+4zoA1kIlD3LAkY5+H2+NbW48qU3s
ARkD7n9jkIpExaAmNn3CntLpx/iCdJbHvyqtlXWCwLNYcmaLTCj3oGWZdA0TiwHMdCe93ZSQ0ZTH
RlzAF4n1PpF/s1erEqYrh4LGRVayIr6XsjM5dITAPuUmRsx0OehD29ZuH6VD7I2JjB0phW9uwGGh
Ne9egPT/+++IeMg+1bjkK2OG1kTGK7MI92/rIZKtQPUyXGp/9FdHNvXys+AXowxISsLxqBJSOlA2
n8xHgjG6CD5yL8pAVErpJYvvCpeWC2b6MkSBE+SPyXzzYcb95oKam47uZL0SSZRusnTnS+ZaIuYF
/++6bLzxASpOxIQlBd35Tn1VeK0Pq0ca/wf/Y1qJLUfCgnPJjYExCH2wGk2mZOeDyihhWY3Dc11p
zMGyqbN/iD8J6Dm7ozhpacSymgeYUg4M6NdkL2hFDm7mmAVoZ3n7oanUb6tNvW3demiNK0qgyyJ2
mQ9H89JOULIYxplvKzhQE5X9erMuSwuvrkbu0iG9HJkGsihT4Cd8lQvpSQm0q88MoYdZoA/ljG5W
W2qb7M7OtJT+doc4NT2efyE9KRixHQ5o420U1sSJ4o3X1wbTLPLdipkyAFer2AYGT1M/z6LthSpt
Y5mcofHSWGX477GyPzQIejNkfnOiU30lrcbJ2RhK5OzPmIke3tfCW/kfjjH9AZ1yPGsIwzhCOaYC
HE8WFSjy8YRg8xI9Q2SQU4XVYa4h+Mr2o92Nac1bSAamP4vP8pZIYQ9UtNHxYsxxWt15qxsXG9ad
U99IydG6csQjylx5Cz/qFrCGsfZB1PWJ1H9bH2mpD7AyfjlwAq+b+R93QZAjTvSvwMeDhobw1P/I
Nm/HzKhhF/RxTx2lnr8aLtvA7AT1FYY+m9vP1MGumOw6bjG2cji9gu6sgjzC5XTskRBt2Gntja+0
ATHCDDTePVZdHNaUJQpjCYod4iYrXe3a8pwkbtT8rXrMuA0IxMSXNU5uly/TiWY3z6KkwJVKrFHf
yNMgI5z1u3ytXHUz/qgZhRQmYw0hIGApz3JXUXyZYSqFEbq2KfSTjAVSlKIlk1kWqKdrPjFt5lpW
lUvhVUlV+LKGoj63mfxuMHZKEOAJVceZ/PdlzJtLyQSxX+2powi8gmJYgwoZhvMEpZuqhmMlEE9R
9qidx4VdaXlM+sTUcK3+QfIzSYmN7YasOD/0K9NDKnxgdBrl8rq5QbTRSIEFriXP8tI3C5rEOCgv
CmHqSCz/OTUSYHsEgNY/kb1faR8dromDr43EUXeWEj+b4cHLOk5qr78ndq6vXtZJrm/gNxV/ta7z
7F1irUNnZ3o+IDSoO87eNmLNFegq7XQjYxcyZKWPUq5unkHpCg3stxIamQPe8X5dEQEtavhMwwhf
wvkWZVEmVS+oq4PzZ4LZnR+n6pDsbur172uDgmqPl2dj4l4zvjaAPUVPpfBoNooeSQ8KMMEuYIDO
+rIsF3EvePHpKGrMVJVvsYfeGC7GpNSiC+rW6CBvWjB0Z5uRXnWn4bgKmbpnniCgsC0JJIA1ZHSo
3T6/4nDLHgTiciyw1Tl83dphUal1m99KMSm4lx4/lZ740PoSx68HY4rCg14fw9bpN+LzXoMcerX1
loNWBtAFmqxk8YN6WRrYNQsKB4vcC4Owgyj6xJxIBsAP29i8pALdTe9fd7GmzOIosN+zFN/H7szJ
HQa2iIxktURMifGF0gAh2d6mVmhNi84279ASS+sFr8JzHfqDFkss3+1+DyPqgj7S+rjTqBlGrbDL
YB4r7XNNpzoK/JiZC8wJlRagHvp6AS+aCY7Oh40EJCt+8RygA5SCABJFVoLyGfV4m2l6WXHWROky
oipRnx5g8lJcibf3XiFyXZMAgU0HlwG/Lor2a/c45qCYgPWKgqEki5MVWrysS1Pj6+7PrKoRrBkZ
sET+gVXUgIHwoum3hg5gSYra7uO3i/oLH09DaZLsFM8dIdwzudYPIHSUgNXjtb+8lUZmmmcdq/HO
XihHRoYkp+9W7zM2XyG3rXNxJnKvr+oo7oKdp5VtSi0JmFUxkf6/yJmeDKLGriN8FF00l8hMDZqh
0g/iIKCL4u+yvjBr6Q2o44VemaoPX9VzLzaibL4i9QXqyYV/wDabD2pihUPpBn5LiJL9ePkatq5J
Z1KyGlAfOF87aEtK8yCNdxKLqW81bTSYNlIjG1kpHe8i3jOcqZJ+ZK64kasDYsmYYkcVEy7urjAW
4++c/rbEhhvHWjU4GQa1iDJksAG0yC9Mbw9hWi2PWQOKrRLmViIzaVcPeXBe+eTelDLhykAhlcb3
5WEpDmsXZtpBuzYetdJvokbT02Bz6PFH+om5xpbNO+1uLgB3TNCq9TqS95mz0zLV3Grjv7U2yBGB
Fit+3+c1pCVJ4QeceH0kGrl+lij/UIn23N1k64GX0onGuDWxQN7kuMQVwGLdAQ1zFLo6qDXTgM1Q
YWU4KZ23cFfl+ap/DiDlPiADxPMPDTMjw+sirxtpxmnsabpT/uedhjnAFGF7XAp+KSOrRHD28vOS
ep+kmv18LjEnHCNmcqWnVnMJKf6Ygkb1zg+L7qIPm6ELzw6nsZ7oCE0O+HbJapXcqO1UOnKFAVZN
YSaW2P/onZjIMNxUqjdbEH9by3c+yvTG7FvXsvXIUC7qVDfCYB/CVKGLkaILHwc2CmYl3ndsXUSr
OD+q20f6e6ZakyXPnctgCya+NDf0SK8XKjyToXHpG3B3nxujuvORSgeLuWPISGa0fNez36nrdEqI
FTu9LH15zphWBq6de0vVQ3z0WtnHXW+31iaIAatuQP2njpD+/Rak+vN7ffHq/mRIO8jvfzDliUA3
McmnzyY9IKIOCHNlJsNsZUvE4NquI38ZA9gG6ygvxP7CORrvG4JIXoWC38qof/rWte1i013naVob
M5Oa+GWx2ATnZARrOSRd1BI7iqeS0fA/CphEyOmGMtlHthJMlqJK98DXVdbuYM4fpwxBtGnq/kJt
CpCFfxs3CwyPeuoIeUAapLEEwmCxrhwNBxMDehajIBL3XTvYYePiPNvnrBJNkLn+VSW++oIAK0Wr
LYTp1DoPBKTiwNQKrn3I9nbugt/xdcF4Loz7Yt8KnxGGey6y0VmIqkffEarARL1wtnhFMWdfGQ0j
SesCozAV5mP90sJeoBLKqVkzvpMJe7ltlCUZUi6jYKQGYM/fjM6VwrR1/Uq3RUk1rP57xNagI6IK
zq0GjrUN6vSY0bfcYs695S3/Xi4ugrcnfowOAv5s/jjoc8LByDF+6GtsxMwZ9qXZzW5XB0pVrIZ1
/GHKptEgKDiF07U2AfgQFL6tC4EO7i6jeCLiRsPlUgt7V2o9KB3dy8ahxR+Pf/7Mi2QK2dQnr4y6
dyv1GlrDjSIipBsywfBWjJuVuIUgtbV3CCgXpHdeFrJS1x3IgeoUzXvpvHc175X7GZm8IFMP+bAB
EibCOcKgZWHXmWHsIhhDEYBQ6eaonnBLfvv92iwaFhKnX/uTNzlXna7826nQk4MSrN0cPkRgEAEo
AA29VJrupeJd+RDKqb9+btZfb91vR2X8DaE9zIUlhX1JVQHcl5KToxs/722I0BWSmoTEJw0YkD5n
8k4N3XCPNK9XU5VxMWSSPy2yg3zQsUNIYJdIi4M0fOzJXrkpM7zxP1h/kHS+gSGF1jDt0GpK+Ucg
9KptirrajSkcyjF0C8eXFAIZs6OcA2When4X/GcKfD6TC95Xd1qgDWifVRaKUNNNcYFc87fli6WN
6BFEFlNT6GnveGukYatD2NPsrmKKKd4EBMSXFj8j2OC7XavghIIrTYHTEvPdBArfj9YqyKwpZtyy
kgwUBj1d2EDqNNIgGBImkB0xNZHkzlaakmAlnRrIOZc5z2gHwpNXz3mXrVdpiyej/fxdXGYMONB0
cPvji1W6s9xUaAbswHCbfQfAMqQq4iBhqAbiGQECrkhqwVuFtBKmuMrN3mbunQQtq05tip3VS6ic
YQLofLKRjdZVwqBxWoXAEYKZTG/fQd3rRdWTcHLhtkLUPzcz32lWY7o/vC3iftCw5jtM00r2r0M4
oMbQZaDc3q6ccxzWMN1bbi+A0q0z5Xb/3LN3Kb7sf1GkYVjs2CKSgdSCM5ftsV1lRBGbbhaX4748
VORVum7wGdnCUXydNKQ+2Xr6t38NR+WfXQOlgO1sGjiR8UTrhZkmaccc3wQF8suTVuzsQA7Sb8Ap
2CMZWYvO+cz/UNCiMLocHQgkgHoRZiT/PD3E1J50/APIpS2ThS4uIurGdg2WD7rfCyFrXNV3aphd
MmEGyMQLmOtXoniR7tEJwYTOdKBwnmYZnpPgLgShBVSCe5eDszszAkpcgmfbPsB/W7f7TN3mk9HM
ZMkZU9FgE7vRM+i2AiwDD0LledqpiBU76nhXlF7r9InZ0sAnePGwnuMtVVdAZ+doTHaiAfDoxRvF
hDNXB5u34DBlH2V7ggNbW31H4BRWXKT9XcMZpqel4P+AtgMR3faP0WXJKs1shJuB89lnISMpCev/
zzTnlruarzt06l2w7CLMh/igCYoajZoTMX99LnovHR4sjDkwd/fFu+Ld5GRl5sJjmIfN4YJv69uU
V2Y4mr7A97THr2pS8mw9yiU24T2uBvyoaEKtljFJR0c6iHF7CgWnSiByFr/0/yYdRen1EF+g7lGh
PzEntU0OaAd2tPTFdO96Nzh8uoXnYPESdZUHnENNm4hMO2NeHNsiUrDEopCr9iJmWwI/pNVD5Hu6
4m9BhMXkmWu/hnLismxCDMQj87aj5Jb12cn8R7YQ+r6mXBL3ErOCTQFslF8fMLpr5xJwKRp0qHQ4
/u5snrPPE6Jjj70ceU1F34pmQpDxib7Ewf622Cfm1NwxkHGUF0+fjw2Mdq1qpMSwRrPcRoYyJUdG
8y+9t6RrZTtH07LHGs/ECIn/seCGjzRqnQjDSrXGpWX+KH/7OsaLCuyC1Rie2LvNFaTbeR3JprA4
3KqpW6b+f0Qf6rotXIqoTOqOx9+IWYgs0z9mx4vgxj9voewj64qi5uwMcrF0v9AbZH2kcn8+Fp7N
YtbIco0PArxFayymSu3YV+7G14gyRQ46jviM+79iyFwW9JmfO62UFigfANq3fDGJ5N/UUsn12nP3
l7FMtJyR9MIFjbcHt6dL7zmCAcRsuqjTgWwWtejRfGga8WnKAJ5xnYzE6dzjyyFr9JcgHAwmSkFS
uy6LGGyAByuBWvMUo4YioaXYaOQEGDNv4u9Qb9Ou0WhhqgUu4QGGq41mVSmgbZ598yClXP4GgHeK
SY7U4XwuyPVlre7W3KDjIvpeFUROWGQYcx1GAhhEsI7HM7HTML7xo7fZvLWAnpo1o7DGXphhTGnn
BbRo2Fm7wXPNens3dadLvceJ4YVLCvY/apwCs3nAnlg9lyS+VgsLCliAMe3uoR4yyaF3jR67L0NP
jDd39MsOcrUciXDvJK5Gn5BQqkcnlA7xNIQrkGojGyKlFmXvSaiFti5+BBAhTcgwZB622wi1qY0T
GR/B3DvObxPzi5Za8cp5vw+QWviqdhESbDsmRy9f0Bu1FSv3xfoIR96KPgSv+kPJ/DVAS3w7T/4W
1jn64JPP49YyBQThTH4y7IouGdXotY7SZpUgUJ3DueCE5w42QD6YHhCEfY3dPmrfCh59eomfT9rg
4Yf+iZtoBb2G/bmy1IastOdGC8YKX1/y715jaAxtK4yZ2k1Icpp20Yro5TRFIwJbQGADLkWimv98
14Ps2+VzdaOV5OpRnIZBccyQYO2TG2+6xMvQP/fhrOJXkR2akLr/uCoRQhbDYJlcQHIe1ECQsSzx
XPzYpz2bN7QGtXm6KjXhCfeckHwxAxIN+nXd77ga0C0oQ0TvmUg9LuRHFPPiIm615iO18fQoL+08
z4IU7BijUOa10OO3S6lR38XYHh4yB5pgjmhRFlseZAIBMUnRNYly7sH00Xu5+YDENuNo92G3F+rp
J1+i2iLo8l2fQvKd/EIUoewxz+Yk2T1/Np01oR3ps1GAjbp1pMXHzg9JJl9eR6HZZe7nfKeD24CJ
qGWLMSgfFOumwlGxhqZ5MKmS5kTg4SyuvUqFVnDrBDKnYMnDkKBu+kpYLPq3eFpDPvvJx5agjhyh
JdmfVXf+j/Lxvtoz7YCVoxUdPbVTPkZjokmtuSCmj9c9pi17uyhsW5aq5yQJ8W9NvYdmvXgf/9Pn
GWojEf4GFIkMaNiLwjnh6Tr3GEbrNYzZ5jQG2QkUBrqZVsT+chNNmNMxUHG7CVKUM0hAPNH4fzPx
T/jfQtijl3IoCqHMYtjzhGM3PnRKeyJ0yDBUfCzmN0y51o07xT6LSds3bmIjlcILyeR6ofZz5IIL
z7xBsJOCUKlFK4CowCcqOSZVkyMrGkfBBk/wHsnb/86B9VdnxmSa+d1vFMbvyzNjTnWQMQYPbKJ8
Wsp2F2xcMuwomCHfXfbWUea1Lte/yKwRtLm/LfHdEBknIlvkaperT98oO1s6VtReM9WMKIH40Cs0
fXCaCScmq6qEaaKCAWyTs5GKdiebORfM5uVzE3B2MK75TY4Ts6uMXfFj67khUzlf+gIHxXkqgelp
Bre/iiIIpBb5sgvizB8YM53GoEy/H40QqajaMa2Mv6nQ74b12QnJ7zAlJI2EqkfJq9Z4HsqSJ66t
rgFh4eMGhFC7ju9mPBw0dG2khm+0BUsKliFXILUnucxrS6WNjyGzUYDdM6aHtS6it99mCeMpDG5Z
1KWwk2ApU7usVfCYc/ImXCgm6uBWMwoD78Ve0XVx6IiUEoS2CRbzrHeEiP4Vfb8DrSvmizMYQE6l
HIPMR9JEiv+Wf3BE1FGx29vbEN1iZ9rYhqMABRl/TMLwk5KnKlphHxZ1Sm42lWk6WUG0mRgp+Sq/
YDZzBbolGq/ktFudW73HGv3ilv4IHKwRQxA8TDy7wlFvsrsZ8SZLl3+s2AS8psXgFyFP9cbG6UI+
2z4uFNlRVDih1edyR9oWmJwXwFm5n/7jMT0YjKwZQy+kDZHrTTmOW8TRD/BbtvTbuJqeOfzLbaQJ
hs8HeRyJwLVTfnNNEno15mLtCDLvDs7TZTthP9rlfi6mHft9XIhHa/CVxuYn2ylGCemr5UGunyhw
WoSnpOGpwbTXpHZEmPe2FwVgN3mzsdifs4A4nA6WO/0BH3rpX3zyqXP3qzfx5e2pNmfMQ8x7GylO
zy/eYvYPy5lUBHWHjtMp2RSZ0r+cnb915yjdZ/wsVjs8OPaX5b8djh/pSRaM/TOyDrz2eC7bSsXx
LbpqK3qHDKcw84L6UFmnePorDUHfmgUETa4K0LTP82+0J+b3hyOtqsZHsLq2AMpVmlvWgQ7xiLV6
whqYw784ZT1J8HRMTpRwpekZl0P7nAi7G2HUjbEBewPwyYQBXTT/qYMb0Swc8CIxelgOjDnj6TDh
R2GaU3nkUvZ86Q1LI1ddEmhSl9OV0Ny7nPgrwPPX6waP05EP+jLq4lw7Lng6Wz/sZyTLFazvcKRR
p1GwQjgwl+wXbJxoguP57bj421KPChXBEFzP8M8Ppp4/KahRjYt3W0G2Msu90djFORw9sWcMi5nN
zuM1Gejc4dYXDl1vTyM5uLX2ebLFz76VMpE8BpIrxTd03CO1khstzJ6k/vJJMScepR3+RlJ/RqYv
cI4OZOjIH3lT+aj8rXi3e3YUHUcsdu+qrlrrNWL/M+EEYTPQxWm2yUcPFU6uoL8+Hx/1vqYz2CU3
/Py6mjzI6cFsPasYOaG9YXzO3AnCnEmIm+gzKF8HQLROmWlLLiPM45sLdXpYTdhwBvB+PBeuHqxO
6WIWNFjnEJSzhK5vMkbIvoKFoIL6dI6ZawFFqkKzz9m7UiH7igxXsEHHBjUaKnJlpbMW57udQlu5
PTfNpPm8/maaoJ9eK31eI0d08dUQ52TPH5apLtaW2XrrD8yI9wRV9mH3oZdiZasO690hNfEQ+D/N
u+4tixtDfjWB8MMzUn7v4pZp8B3r6UjrrLgE5oRvuarnE8QdldCOt0c1TcFnZWUArCOmpIolpyuz
K0Mq0l5gl1+WjYjFXalXzQJUGGsm/lY2G9cutpeVH7dyU1sHJ0AjSQ5t4/VL2eYKsE3N8XNCeY2Z
to0WeMOXvU6qwiKBNc3lqB4d7c4O7KB4iXFeBJxL7/vYUiCGTuuQmECU1mTRdzXc/AxzHF3nZIi7
8uDZzKICzeUNOWdF9TnPvD55A2cbrP3EVAe/QhqL8fTvqcrWpcUoXzAmDi1ErVxQJsxygWSVwNPl
Teg19f0H8IvLerfPYNBuVs2ygEVda8PLcGBBd0hCjaiQwYsfzJjXVE+DI5TaOPSVpk6w5/oLx+N7
Qzq3q1sJDUT9xuFZNY9pexaUBsUlbLgZZ+LduTdXeBpCudfFA7bYJEEj6MSKuyD+Npw8d5yUbNSM
HenqK3NKYasJwg8LQsmiq/re55tMtYUaUlgotDXLuLh6g5oyGtYt7V5pK2ZTbll8CNyBqU6mg3Cg
oMqhgoHR2yhbs/kZjZ1FD9zhPuKSwbD+sNSmTphsz2zz2g4PVoGKNqb+OhMYviJMwuC+9btv8Ps1
22GPYiVpQPnYnfzEfrvk6KDeB9EKDzXWMY2MtujQlpei2oH+8EuMnt7wNhDAViTojlJePMEI+jBJ
2VC9aM3DR2P0fMvoGyU+kyT/s9Eq91u7ZFnIeY/xNMCOUwFod3kaUzIi0bAQu+lbbWmseqPBgZ7u
9QIGLUBAsdIB7gYnzEbxuw/AVNw3SmiDalkkdbSsYhXWg0PqB77p8Ga9MQC9mUfxbEaJpRD2Wzf7
ycw0sTep/3lMfxLbzBJxRwtN6I+aBImpX9kSOLjEcYxAHN2lsCr26UWeVePjxBqDsOY/qkKK7sgY
un2EOWS8mAFsOVnpDVFACuPvszS3C/9Cjv2DuCJwAFKD9iw9tmGzBMi2F0/sJBSc3DrU7hljN1ta
Ewro547gGkU9vxZYM5M8wvUYUJCekoyvqCUgnTvnoQjoZZdodUDbDpyndVKMq+ZUcndYM41oLvDD
vTflPmF2q8uHV3H8A8Fugyq2pX31W8Ubwe5XuamYJ+qAZcklDe/G9C66yu8WGlWFWg55RPq+fPgI
5j5sbqz0y0C/Z02VfTty3WFvvfPGKR2SYLNBfdgUryRMNq2StYKOigpGCxIvkdvhCHFzkDn6CoID
V7oZMQZ39dbaGBC6qlUir3y0rekj1JGLmC+1BpxJ5vCgFG+DH0vPm1gjrx5WYPxDR/uS/EPJBSLT
VF2bGbnZh8cx36OA5LKFQJ7SiYWa6A0thMkbq3zigkDta/r+XjHt6JLyM3QS+uJEAVsKMa1frZSu
0Bc2cuiTtjGcWcgUZYlFrcnumk4rpuiUs/aZNSvYBZZlrVTZFxsFYv8nAybEIzDCaqKnk41SUQp/
YBzFSXjNcZ7vTxAfy9z3dJV4vwYkvbaGqJomRP39zbL9d3sSpQLQMrzMe8j6/Pkl4x3GG87B+jio
oSb0NJ2dU4OBMIgdIW9U6RaHS7oX2N4MnhQpkTiSwZ3ax/ZutGUaU6+9mYozq5FNGRMKmvUQSHfJ
LtdNHP83HDz7c9MUXx+ORhut1rWQZkzacKPmgdOKiNKLtA696LSwyWFkp0/oT9FOB0Fo9A4TQzKl
aJ5hXvqmkPPIJOn0UwtcQJYE4Y9peCXhTcIO9gvf9sbpxyqYHs9V4OXPCXHzTJIz8LCkPbcLvfxa
QYSLxUOW+630yPMaxVGhrYO2jjDsFWYTy0O0jfpLrlEMUFSkImCZdFdVF3wBFJTaLRpM2KWUvaX7
gv34wXJZz4pZaRn9IaWuWmmkmpSPmRjinXqD5T2kmLufR5IqTEfwXTVRsrvn2Jx5u2PQo7tgupN8
iw6h8rDABDZj+F7DmFVf6eeaoXxPqoHBhY5o7+dwYY8JGN6VWhNzfT1SkADn6PWYENh6M6L0zaR9
g2qKRb3dPwgALONytkB39V5esnsXBBXW7Oj2ZhgV6BXs8nTkAYCPFTBPYD8D5rHJAGzKlpN7Amqt
sStymhmt+QnMiz2ocm/ygqGRtsZk/is3uIbjLJmV5Su/IsSXbXcfql6JexA3djObjc0ebojNuare
yB+xYAz1fNegbu2IebL7qHK8V8ArMqQ97UA6vBFtYR1vM+tSN81O1C/b2jNc1t9pldhzfy2AmxBx
btcK1SD4a/8gJzG2kAE5QHtv+M9Bb2ZtPjFodHMtAmx5uD2aw5HXWjUjg0D03Snm6oW1o4EDp/8S
V5r0UY2UMSRrf4mo3LsKAxY9Ne4/t1j/Kv/9wnk5Y367CyXOIFhXP/1Jiq0/PluU4nUpl6nwZ5Xn
JWmq3Zya5iTsYLcQTsZ+7xZ6yvXCvhl+CYm5+P3Liza4D53UCzZDvhWC+pa+gMkbYxp5FVSOVNuH
QTC1+XK4KOepB5FJs3ZU1/UjmW7furvlqxEQmR89loSaIALLfzHzYAY7tNDsFXifs8gDDfJY/1Ek
VWa5IsRIoi8hxTil4aWM/683rj06gyvyASLcAw9c1wpoF6WtSMibu7NoW1+nq2UPSukyAg3rATEf
xLgTlk99ZXdvfbsQwyOH+X7JGh5jl9VqhWGnCUf7jQVvJYHpLSWS8ZYaY3Y7x8rFIgqxp8dKRkJB
AihP5MmEE/wQebLK6IRQ56oIvkwTl6IORHfKsQNqEB5q2R20xEpMMO/nGLss/pzVO4K7y/akKXFn
dCt7teGzgceUIcl0AX4goekYCMnlJ9zQhJqPFetJggNnDOgOHZCHT1hV96rUdFaLKaAiFCWqbDIJ
Yq9R7xrDJcyQ+EjJAU06WEzpAYCLAg9sihX+uHF9vVRwv3z17FhnO4cOHxLk482OyHQ0+MIFrtkM
dqGFLfezpg9xvy8pMzI5zk3JviC4XVH/ZAmPD4v/dmIuew8DKc8gpTqzcbj9F7ZWeKWQ4BQRm4gR
OO4y5G/uMVcqMpuxio9lFqXhhCbZB5nMy4zPAnOzBZgCy2Plwf3Qu3keJ82Hl7nRx1glhlLF0d5Z
p/v62EOa3ACCjLOxclYXvo7YEXkrtve+rDFuSXObxmMPzxUAB400lo22D3ET4ffMB1B7UxSgf6xt
E7PW9Ur/UUbhtIm6LyvjCswEc4LmQ7rCGS9gEQ+jlkzpE4FLPisG4Ax1HVDdIAgtlfvAEshRaO2l
Q4S4S8hUHsAZSzbl7Uazk+LPvMIUOrryHjklKEGwoE4NBJ+Ta5JiC4FzqCWQz/Xnu6yzlvUnDRaP
CWi9vbTi8PYyebOF9qCg6FZhdHd8Wq8YXD4nsgmRquEAyma5dEl5DGBxtcaqz/hKzmnEBXT/AJZ3
1TYtDSwuODuSRkXk/9jAZnbGyzCIBSPKx5wyf5jmvaoEatvNsK1LvkYRfxXvF5nlxotydM/MkDXJ
wRpEILKVqZdpbiHq3e9zu3Syj+kJ9tif0Yn8TtQ8SGO5pmkw0zKYFsY8erhQMgYz75PaavuQaKew
EDvf1/8Kk90ITyiULsFHuIUGUc9IjHB7tD0/ezZu15491bcfkaK3s8wD/I3ALSj7xRss5VLI9M9t
1PoGD4JXJZefvacFzlH+/kxaayU+6BAg/9s5rYJZI/BzEaOprQeb07OfzNqdcg164urjgSBjMZOh
hz0ePODu9luCkTM/aZfq9opN5u/TlEZOPdpUngo4lmyBVxgT8uenXAjk649tIm7N6M18VptiTTKV
r/7RwBi1l6NLGQwM4WXF5YHeY/Kzew996DcsWvBVxlrDszSSKVB7BLzhFlA5RXQdDJotdrhP/DXA
MAE4EjqJpvfRG4M/ugtIhqTb6O90k7H/x7GatAvzdYrPhsNEkK+Vm3EZQ67DLsh5Okjw91AGfmbn
TJURqPqoYbW5bBOGP1w3oIYH4fyNZ+UHwUwM8+lFVLGcZieeKOQ1CebcUZ0FDKiIM5WtZk28WyP3
5H9XTKRDXPp1cCxWn1BN9VwKtET8a1gH5ta84V5odSgeC9+YKgpDYh914MiolHXzGGPxjVHuakTO
yVze3ppBQP/2EFHKeePYocioLTuafZzny+55RDGaV2Gpo2XCWHMruDhxbJCF4It7tXWQ4SfxPXmY
18emi6iHeT7WxgJAt5E+B4zIHdCSgCs2OzbZmH6Og/yRsVUNEFlRRLhFSbfO/Kc3JIcMKch5afIA
KJmWgiqo42u52nTk34B2OFUyVk7CwiihlQtOFs1xlXdmDWXnSSUJKmH7w7FEh/508abtiKccs1cC
lQ6SNE7wEiKJjN5QfiT9lJesTiqtZgFdDaiuAKfvpKjx3K5DKxqwzTLEuayVIQxkfioLaUgOgLEq
H0ENugI2MCAmgTpZsBqR3qUrOYVz6T7VrsvVz6jYiMYchYESRlnKBrpONemX3r0/KmT0WdgyxTCY
plxDLYlV2xzzBXwaUwZjur0EhE8RE16w4M+3wFR8NnK2rwcFi8EhsskNyIXyal3BhZ0YHSWsq0nS
3aM9o+b+x/AProu9YsHwbIK9hW6vfAKDMIJWCkA2RslmFocr6wcptql+LBmLF0S3sIcedaz9eEPa
4ExRjAeLtUXqO3Fwd2qKCNxppSxhASQE85nWu8fZgFNUbcVfgxIHng34sWNQ/LxvMpCvLY7FwP7b
PMzc58KW09FnXPC17mYR68HyJBqonmCjsvpnD/zNDfXCztus0GHDum62x0/iq+65RXGo1NPKUMFB
t9tbubXfLJuLR3rZNE/Y5f6dYepuV6bHNDFz52vSjSjw4MjMDuKbXVlQKOLWU3Wj78zA0RlNqF2g
8HWeIJvbKorygeWaG4e5aCt721uBqGj1fT7Q4jhXnIC2fpkLfT62ABJidZW8OqEJOt+8KVHLWUkt
uq0+2VrO3P2abwpI9MBwShCIwex5Vzs6JwVYf/sx35KxgXy7q5c8C/For3/wSjFJngo3BLdpWzsT
jk4t95+8x8UuwGrLBlFg++86vJBGdQpRs4f/5hxzGXYLONk6pXn64zPANPuAofwK4FHOtXjco3rA
vePA9gtSlYnA65kJPccx7X691V6nLWYxDTJexIpNQNiYGC7FDdapVtoR9QPl7sf4j9avkJZ9XMNu
R2OABvNSCBfrRRGctvORt1dTn5i/a6H6BRYa8YB5XN2zy12Mg+Bs7hONc6ubLmS+It1AyVj3Mk1G
Akg+962u29wwszHIZWH9dfCgSIUiptGFioJVstck8l98qOk98NwopIdLTqkXHeLd4sCBjl/Li890
7KRgrfgS4XBb9Aod2PccWHPqL2lxhCvqCHH9vJxel4u0iR8PbJ390tlCn27ILk52xmkc7AVSxvKK
SR8N11uxKHGddrjmSFx0JBPRvrJ4cNrffdJlSZTgiAnUrl9j45ePRzvDo23uk6aFH2EJMJD8c9un
DoBKMM6KSBIaz5SrruxN9IbZ/KUJdpNOtqbg0IP/TtmV58ACbFgp8JNgxXezs/k4ggWx71V1slrW
nDveyuZGmqKO++ZqDlbSU4/q/iJMvKK0+pFIjf9+0W2WjBnPpulkxUoBuO3h8HYpYiqnSvu9cpvk
yGLg7EYjPm1DVsEvd1FY8DCEg234dXnbMvdf997dQbB0Esd/EsWMzDjXLBTP1sBqOCRB3lW4i/3/
RPeCmwUp98bKXG/B+H79jYFK8g6skCePv5Rit28hRCxLYvno6ViEychxxINz5yyAdIH7O5MEUmMb
apCu/PlIp+RG/qhoL7oagyl8dyKlBndc4N6yUZMviR1P2WRIefq5zNyO58r39aUF7/huj2klYlL+
MZu72sdK2tIEYZye8S9jwJygRGC/lEPh3HRFaVKoTlhEtT7kZCLgdEk/P7lvqmvn5NzYi3htXrcg
YC5TKPXFjfcoB3WnpVmNaIDUlxVorebvhKJVL1EvVG3wfAjExtP+Y23SylIr3jeKYLYjiPRddlRl
CnmkI4AqU76o4zZrNojme4aIxWo8RufMJa0thpuunjX4kS2jtk3CApLxh+fBZXwmVRPvrK3YPPUJ
d5wDI4/i5ode8OwuYv2ygWECajcEd/6vbU8yUwcAnIrNfMett0065u5WIDuujtDDe4q935zh+YP5
c3VB47+nXGyAKyOltGnCLPkBXYbif5LI7rePqhCyRJZSurSc7t57OFIU79vmXs+rD8bxIe8Zw2Rw
ukTOZduIzy6CCd4UL/9F4s8KAJLdmyWgcAff7U3OgCNeJVhVOOE26jnEFQggBKxZJlT/AHObNxwQ
y1uDAh7AHRUEwP78rjA8
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
