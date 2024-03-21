// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Mar 12 14:51:00 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/rom_stage1_twiddle_re/rom_stage1_twiddle_re_sim_netlist.v
// Design      : rom_stage1_twiddle_re
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_stage1_twiddle_re,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module rom_stage1_twiddle_re
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
  (* C_INIT_FILE = "rom_stage1_twiddle_re.mem" *) 
  (* C_INIT_FILE_NAME = "rom_stage1_twiddle_re.mif" *) 
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
  rom_stage1_twiddle_re_blk_mem_gen_v8_4_4 U0
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
yas8A/Tw8AvN1ytK8Q8Vy4bEyl5wUtGIBqpzl/ocS985WUvo9JjCM/Z4oV8G+f7Pf/I24ab7tKYS
QIGCBbLyCfSsFe/3K/oSW5Dj3v9lwpeJ2nN+i0Vt67p3ch6MfTRKHfVHY7LSdNEv1ojv0WTIhi7G
iB81hHetRzrdtJpDrYpk07XeAkzRgEEUNrZO5uj1rnMQO5AbfjdQSVxT1FOeJJroNc/HYMj0hQ2C
p5kIQmgNcutTyjyxTCsWr1lP4HQlbh77vbZnTmGD8zKP9zcU5MK1FAEncKPHYNjTPXPqp7XPTpda
6EH7Rvepd/dOw+SO4NUaQyhYEfQVca8xk5jA1yM5z5R0DkQixj2ru7qWN+Ss6I+xzCmmzglDHloO
2EnBgbAM2riLYDXjjTu3ui8ILxRS3MS6MhgIr6YecT/SYLIm+FfUlkeSfRbCOEiQnfhaoaNYvlNO
vRxnwt2cxZvHV2dS+HJj3pHYlICnWMJmqWTYS/+7cymHCzQEp6Mv+B2CV5c3D6ZasyL7mlALbJq7
RZFKQ8rTpkrW4s72/7ByanE4HjKkYRXb8TRvon3FdaVp2WCAK7bcl9+25egZPpwmwg0ULsx4BaNM
9OncY+9tLJivmLc4VbKvqgQE4DI/UB0YCXARwzAj47OeyVBE0hbxitqpywZhppztx0sziurt9VOw
oA/q2FpN6xb40kzjMHqk4ekTZ4f7kDyMMKq2nXR2R/tgZ4LPX6/nJUMChqA/fr5uZXg/euRpWmFA
aat1JV42xZEHsdpqDw98AzK/uNjeXQwMLolADVbewy6zFuE3jNxM2tmaq9gaWkCn0Kl0114e6ODX
Ep+fdT3USdy12bIb0MyB5C1ut6XTB8WTS+skDXC2tbXP+NzasUqTxbhYlih5NtmytNJ3XO3q9u+j
CfBeZgaiiN4edb0i+Xig4kKDzb6pT5oB5hhAPAC6QBW8dYcqv5ZsJyaAdybT+E1lqVzDrFD2pyMq
PBM+Jzybxa4ZzVL8NVej8VCua4yVt8/b0ui7mb/1dfMcES6SZYTLNNuhXkEwHplwXs+yRlMFyvK9
sKkepC8gGEt/DXUTWAaH+dfrE+jM0QubZ8SX8hODNuNV4KAgQLTut6eqwhTLde2gKkEHErsRXX+c
4r0/YLhSS6LjU9VSvq5Nx8XPNoGXRubf6AcVeXFW1DfPZTqC/KPGZrfjLNiIjgKletAD1bQCfv3E
4JRGYqROTp7B2Go4Pdw7fYiGQlNP0krcUsM10dFwLvB+7yEVxned43pXMIOFe4QjFtI+WHNf2fjL
HddePNr3441QPodas67gEupUMhVYjNLUZnXD1u3udli2ibpKjNyeN5XpUrA8MiCqbJQeliAOey6m
IfJ3vrDKcHRqG4aP9fNFOqHoR6KED0ov5+w/G5slUzXVE+GbY7ZoFjlBb9Cm45iZmLx+4qWxuNBA
EjNEr6qoxd2nKaCo6D/DxaXSZVKh9R/v2p9eJOO+4rkl+rIBDERmkOHKR25uGgpELG6ce6jsJz32
Nga7SW5onNauEkvysOCd9FEraa0/pNtJBlQVyVIM44lmasZ6f1ytZaUvcCvMWmui9aQPZBTWMtls
cuMTK9+lRLfZCSFKDuNHWYandAQJ1XTF+fSVYqZ/OXyXZ0pYnGLKbvwstIFz7jjRGV6eFUv2EIVS
KAgxpULYe3G14dF6p2TXJZxZbaUUGbFEJqvCatjyDfbkvhZ+fDxeWbvwGuXZv2YbSdt+ixDi3eJr
HNi2U9ojnq2UUsGJA8AxRNVSEavH7O66jq3FI8bZy8z99Ki01g9xpxigaxBD5ZcBLQ7iJus3M+sn
9mN8UWwDvP71TXdK9/COrflwP3G2zj8daaFJTAGXp6bmpWikb1g++grhK1oNgeNEzAhHwizyd4GY
JsxkEeUhUCXNusowNpl7g/wfV5id+Jn5bWQQp8TPrhIienc0w6S/ta1kYcBQmAa27druSVpCpHlT
62A4noriZCDWHIp9zS5EyY+M6WHnB9SYf79QkHw5siC4nDa82jhlxaS8v6LkdyHQ4HqU1uUhtJKO
axZ3xiKZ5qniwWEi8Mb4F2uAk5ohypa1EWVi6qUyNBSBV4Iff8dRLYm3IKuWMCr5EnupiXaZCdri
0sopz7MDjO+2qUJjZQ5wNPJ8LHf64d2yk0hBDMXt1DLGpSTXCQ/Beyk8AOSkr3OeNclyzcX+NRTd
f5TUtGSb5daZTXAYTU2Bl3Agj3yXYSaZUraAhALJ78+Fw6vIvrc8UpzjDVgjykpXTrZCjJzosnZq
ay1BR6BxFugs8bGcBGZh3rLKHWVSm6Q5oC7VSn4kJbhUWGxSlBM2qpyCdBlbqecLhfbV1WIgqPiy
tsCFWZqQhXcIYY6QG0IPqP39oTyYF4DhaGjgUo37mtl75CRo9lZYVLz6udZlWBM2Cu+0f3AMLhpL
smhNFXgHJ+b3yD9DrrBYdXPIVo9JEKOGxMPPSOe7rd0jJsyH49Hb3zHjeSq5GctEIVK9b5dzEoMw
vHh1HuFEhxP9gDt/wsUxZsZcI249rwbkM+ctxYujxisRm4t3XhfIVJQ7EHIhd6oPfyl6HXYBQx7L
auOV2XwTrKf8gnl4FIS9XxoB3kZUA2K23xcvNzDFa5hAWZWetQyxFMVGJsdlLO2Sx9Otx2voXNi3
9oyeraAL8iflhZxHZKAncdPPi092WGEFKktsyMY10vrpfoa3tpvSqp+YPATU6fi5DY9ypgrIqq0k
3yNGTxRbLqUq7IpB0kNKBy72H4Hd7GXULhLXWSCDrnIVt61E5o+TtxqB2DChnrSJ14A0shz2MMr3
lhwrh8E0MPd+z2GNpnNCfIeMD78sRtLrCWfnbAQG+1YS1wzK70vWGy/N2WaYELV8ntysAgcz6ZKu
kFQ7sLp1oa1baCKKPiml0s4yzhJnx02wS9YU7Y6ww5G8R/tzKnYbTG7nEyK5Fr0ffF0QPwc1XDNi
3+/0R8OdmsvKyMU3xAszG6JaZIcBuyEDzx569VHkfpKh4qkdrupb7fCnJn91BO5q08Vek3i/U2SG
CpmFcPgzxalsQX6uhT55RIFcLo9PHs/03MJfP/tL+ygcBn14wknyeqOh2io9ltA/53D0IsHvHpAO
nlY7SwI0vGlNHF3hFEqwJ6EPrMYmwxKSErexKbzU1RNVkJEd0HS2v8dW/Ek398KEcHlQqTRas7m5
xh6sJ0tDqcOUoEJolENPsTdfMEplIxjtZX3nNrWTviqcgY0biUxnQreFlBe33XpoF8RylD6u5nnz
4e1VHDoKecYyWNPxvdTKAxP4cT/OXZaVMzFKZC11x4SdIr7NU7896O3XhtNBSVF/Cf2w3ZCHvnRZ
5eD3ybkPA+G6ynoE775lkJykNBgLETBtG62fao2xBoCarl7WVrrbhPcW26DIPBecGO5SNmHRBrNk
dSPa91FhgGvfTadA+8ZhA51L/iG93OaL6nZSA7zbbtzAsrPETeZ7DEtB6t1XMgWkbWMrwVlWH71q
xdoIR/0wycZAWrV18SDC7CD4lUxIoZFfU+worG8b5c3nUv+Lb4QEGuQRDW11LOmjCjUcLG3uQ3Hk
DUFPWYI+vdL/QjSmaK0sOWcKnSgAmyreEZ4mHPbLx4W6r5Uc33nPWKzZun5NqU4MUb/PFr08soM4
ZVkQ0IdB5yfN0qmJiWfCIMjx7OmveLvUBeTNdl/FQ6dJ0iVFL1fwjwsBytHAOmTGdmSyDxc9NR7J
r61SzNOTLw9gYvpDXOclL2RCdc5c5S3LqRrXQupFAeg/QAlP3hKNv8kzAuczfnV4+3E1yjJc+5Oq
QM4FvVFU9hBb8rZ1gG4z7rge8zZGgCFB65hTgYfXKIagItP0q493uD78ECDqEP/F7xUj12ryU2mK
DqAzqr+LdzGzjoqGK6kDtX+Ne24I6ksaYb8Fr/oAz9Aszcnps1OED0FOZbwQXBUNYDg7NVqOLGTP
J7ZK504p+gu6g19pA6X7555K9V7AE7/RUzfoAWR6NE3tfHaTDoV0vRemDlP/DuQAdIzMjPe5ZFNX
jRJZ54We3QL887LuV5rPxTf8gEyz2Wl0Q993xQ0krMLz1/o8ECABkVaCsbc/ASl7wzfl8pfqXVbn
TasToUxPDJ+3Znb0NOvL6iSOvGEnsPcM4v+jdJO9degZa4y3V4KtjxOXdvVIZm8jR9UPfjrLORx+
gqaDS2Mc0hGeyLG4u+Fday2U7TChbJGs51jtbkqyoMpKeB8LZ/JppcvFZvRUmbqLEFRSX1+cePK4
AlGueGW2tL852js1rvFpKGid49/5ihnndhddXcKm0EPoduwk5fTYcpyXMafrvKdLaVG/LkYe9o3g
DtqckuGlZ4+1Dj13gMGD/03YJTjG/kmcb+dy7EqE1hi9ofNHVYwXf/dkgvaVMpDZRF+zuKq9bImQ
b+q7ORMqjWcrdvs0MPfQjmCrRs/pD+xq/uhNKUDen+gUU9vyE+KGsHDVvAfLz/6MUhqaDpZ6TeGt
XKQ+9iSLThrJaeC8WkN8u/10Qw1cpEnGrFQEirkzynLmEB6B0S4hc5kAvQ31pvY8IRXVtZ1uHCAh
ZDJ2JWso/H8beXIdEoy3t6jGTG53+YzgRwqlvHJYj1c3jUbABNwrJ8ACSnN2fv684usEXeQ6iM6n
Ldz8yL60Msr01jsxXTN0MyzYrdn5FkdWxdo6d+6njBQ6C4T+4HnAckXrSMAPdHSh57/vMcazRQVJ
2iFEYZNEWWUTXmgxX4LG34rb6SuhyRCge4lwZgkbbagsofD8ilP+jifTJ5z7v2N2TqGghvzQsonE
qLuClXsT2rGv05SxIplECIN+vIFgUVADWF7iIo8/5s1Y6oGssMDPIqmYiRnWch7Zjb0YgiNd+MdP
sN4E+sGgKMTbNCEvdAffZT6qZ8f0hwWGuPwld+4DQRF17GwqBLbuMVGi4iHjufm9rnmh9oX0VguI
5zlMKgdislxmBvyB+uWIFwaTSXbYlpDbxba5z0yO+DnpaWXkows4AP2Za7Xw/Sqv5mo/GOpHsX89
yPW/Tg9qyoeEe20BtsK+2/QzShMSAy8In8DlABumrN34jA0J0Qjb3O0MzYMljVXiRFMHqFTZeLLW
DhC2mmcvkaLq8expc7No/RYXPvgsLQvwEutH+PXrwyyAbSHsMIlPsdsisXicAn971yx6+lKL1KX3
Dlx4B1/PJgqIPLKnvdeHo1KMWi0R5JC3gQCGgl7CTMBmF0clwYYCL8wZyEuKtPh3LT/kr8wChoXL
oHrHxB+9Dy4ctsVpmF2JVDhH7qawYplMxIKXw3bvqLr6jXeLBN+Rt4pRiZJcceTWkJ1UG2c/ePte
V1ihmPjDwOSmKg/SDI3bIKzeYGteY9fP4UE/LA5/2QAnFdkgrluCbvuBrBV9exsxJCLyX9ucvG52
SOiYhT/jZ1PqaL1k6bZwhS7zmozu6/Yhg9lHjgHlCQWYP1Sv8tjYj7iv36wfUjx5mEZ2a+bkK2P9
aP3LRtOCR+Q32Ja9cIGAdLgnAnoF5u6WpDtILiYavRZfw9mKVj0/ckaGNoxPJCTFRT5ZBvvZA8xi
6cj9NmfHCDmPGDce5tNyRwLS+ow3xtYb+vIk8U2612XY5f5cMkUdAX5TJ2AMjL9Y0RSxk3vjk9YM
wJTzr1YH/Q4g74ENvHB2nMGhjOcm+4t0AeD8ILcTaVvy6dEG4U/8LXnmQ19WWacbT18YcGhMSDSl
hY2OSsMr5R/PrK/narKGdssJIRAkPbbOCdzrdaFF0OJQU2gwKr85SisXxS3G3oKelfYMG6tC8P5+
4jp204lZ0pxsv3SYaA6Z1yU4pAd3nf7nlSPlnwEPa+ClEQModZcuSOh9H5N8JKUFKMMMlfun6cOJ
RNR1T0GKSo1LxZFj/9F57n/ABda5cX7pkOA+yYMyZv+yQ1dooBuxzmKTpu6FMXqlJ87tJlQTK+jl
jGjzwlQ3nBcGNrkaCbwWk/nQSkI8VH+grWVKb+sjuSA2TtDugqCeXHFC2Rexnogi1t1vh4LMYZV6
4klgmJk7pulgk+pixCrVXvlv7MOfjaRKNIumLqX5TRfVf5eVgAqUPUPGjD5woWEHOLzNyH9nFRKA
a85P46aBZPPRfeVBGRkGw9sVpafcxHfB567cD3msDWRWVD14SQ520IvjQVe25J07VQj1oCL9SFS1
k1ar5PhcU8rZY2AL5sTFYpsn0w2dEWRWJ3r2q/nitRdbCOzI7kKqfJLsecNQZUoIQXWugSp1F9JB
95cvm+AlQhDUEG2c7bOHDlmz7eHQr3YXhnM/ZFG+RrrjId3q2XKFpJis1jW7s880dbthffFnElXg
hCFa1o4C0XL4NHBs/q65U1fBWoKj/j9x0c47SEvdX5/t96DLYoFpw0PIxcoqaLRX75YGU9FKnDBY
6JxtLI4TmGV8Ib5InB1Um58ehNKVhm+fh4/cnN7iyv9kaIQQ/bM1+kHN/co9qkbAjCcAuLj2Ninw
LRzG0rjUfmnWpfHbxknUTpCVDO2nyTM+M76vpelJxi/IdY5jtKdx3ck8emHxrK8Slh9EomPoZDc1
Zq64EMw4dRSR+AiyQrwj2Na8FKCMCVU3Vl5Sk98XNUjznaq8pDCH72hlquYWtKmmqAsosaV2aoc0
sr9xqj8eeoSSMiUpSlbN6Cxzgk+HjZZGAFoaYHt/GIqpGNBQvVX0ZJ7JxqYRqOrkLGoeIpuPmLnD
Jzn9rwyoM49hgroyk+g4P9Jg+7anqnOqy+6ux4W1KMukMMNRBL6Z3DbaB8OCfTvUIL4RjIe46EqJ
gLK0ffoRieFQ6XNpri3TzIO8YYxrxfWNXdGiPUmamuEW0Ca/Dro+g7dqaij+pSeb5LTiEKq99ReO
RhKVGED7ySQj95MFdIECZEnQRd7lArpAxaLPE9C/bmvvXlRg40sj5gfWB2fiJlMQcyPMDhUJQKA3
50kOrbCfzJSorfIIaniBTv9BGfxhrn5TmAKC5HL03/LqQ8TpnL8Dv0lJHwJDChwRXr28zz0yuc9C
JEtbeyWl7wDsiM1aDHU5WRnV3hQcQpFO/GlffQZRWGbY7SYw8pLCzK2lao3SxxinVcKwUj8/6zdy
OzJS+No22OfQCuh2+fpb5icsjYRW7BbsyBFvKWOW/+pLDIkhUg9zNCaLZ65f1/sfNd0KA9RV4Za+
UiXpg9gm0oaBhJeQVruTE9uoUPOplS0TWTmNiXlx/pBD860eiSkWbTPKYSh6J9ap3yBzoPAHag8E
AEtQKQto+C3vGdeDtkP6es/tln7LRdFdAg3hvvFWj/0z6nuARG7/+w5Ux6McKfNxipH6/CdDj6Xn
DKmtXZNvgG632b/kTZN8c2ckBlh8okcd9/3dbzPkHUGHGQ4pnek/ndcLPitGhdn4wJ2Wl/BrIyY1
pkY5+HeYjvZ0LAR4Jz0meEMaO0WKpvSzkBRW5iV7Cr62ouwMNvPFmAKDc91cB3E4odpQl3/ikMnX
8TWGOPHI7s9NbdIvi3/uza+2OQm4C/NUaOmoBXcoqYFK64yycgJiCQgR5wO0idMCCPYvgKKTENYX
eh/GyVT7mOL4U4vGfNg8mb8YsOdpk24gd4aNaH9RSUdxgj1pAS2drsFKW3q1mTNVIMeZETSMY+/L
9K4AIq1dYhm15skhshrkXNo1bUPexpw38GBeIAvlf9qM6l4sXdSTHr15x+SCVK2+M00sTHZ/ySRP
nkOJK4rU0mpp/wX0PQXdm40Gk1g4e6bC0OV+togZ69kSB+GmNL71RN22O2rEFyEu6JSD5lSMAET1
Ik0gdtTlNIKIEsy7tuGt44dZ+VEDXAWgHH0HeTxQ5whBM+ChxoIdPfaO5RZj05/WWddnX23VfIyU
YHbQAQynIgTPYrhya419IXeH7EiaKaJyituKx+eA+Ma2jfutiUCRjbxxO8HGKWEWGSgla23smQ/1
Jw3s+TAqEjYe4sxbqcvELd6UWjIzSMf3IMh0IOYG5BcJslnoWGn2jgQQNuxs/t2usRgzJQgYvwXt
p5lA2HfAbeEyc4qL8ddeldNhCg9nY0IGqpkwZua0Xdxocf5beUzoZ+Qj83NnaTJMyqPGs9z9pQiI
utZ+pNDggNKy6r0a1znDv/VBp+NyuA6ovX1oRFQLReDvWu7EJFMrJb0GcQQ9tQ6MH7LBvGE41SgG
sNrW9to+bqHytZ9RzyRuQQbnAxiKwh0oq1ZKPBE5wrSUASCa/hTnnrWdZN1kw5DvVo2cL2Osscnt
aNvWeVfEKgYVpV3Jzbc/u6uGWpY8fvaL919ghhxM+SMJjpY3wIp0zd1CVq5JxhRwqTn/Ind9ZI6W
FWS5W/nT1fu1bwWlOVLjEK2IlQ09qJc3Nu7XGmZ/xdP3ZZuQxMW51x9BWa6iwNO7YIaJERNFvF1t
EZ0ICrc2nEPiADHndq+peozy1ouYaCx0pR1pZ8LRDfqzH9TMNeqnuY9eUrvLTAFriDNEaH6rOlz6
GWUF0rUQhuyzJRyEPE8Evdtbbd3RqI09oLi25yji3flTu4HrXayajYMuc9ga41sXeSIrjb1PA0be
JjpaKp8cli5tRZxnhxSXPv0y1n2sbcWdmBTAhUQTc1qYUb4kzflf3RvDvimeS3wB8xmXBarPYiKV
ULFS5dS+7JobKin0AirfTmVUKX13V7SXDy5lag2HQfwsyQsx6h5wTzu70xeBCOBVZC8EUdjTr1x2
EMs5Tk9UVgAU7W0okvTnaT4fsZtOvNId81K0LuPJnBnIixJvbjU1xYzSL8P+U4gI64G8TMw765It
jv0rhvIf18hfiRW4YOWlIgT1WWb2UtKD+i0zrLe9zZoHlvRi2boms1m05nx7jqXBwnC99TfVy7Hq
AQZIayxSd2zwsr5zMGp8QcNhHB79Cn7yHE79lqbuPh8OB4Joy8y/f+ud5n1Q3Ht1taWWNkTGCsBW
8TqZlBVqhDr7X1py6JRfTmWsWHTuHLWeXpKussAe1llZ9a4aQt8WdceRzGx5T2cPezlRj4P6G3+8
EJogCUW8Mw4nmJ9DfvaP70q7shcEfur06/HPM+TTJ1FSowlKi/GK6kYRGv7kzAfSCH+IR8wyKYUS
BjZ6iVDTSEi28HvINmjOCnu57RNpaA9P4ExHqVJNbT0xuzyaMfWuAtnGgeVwwz841b7Bf3JQDRjX
XhgXSADDi4zgVVqKzmrnOs4iPzG5xMw8x5clS/Rpo1U/UAK9+mMmZDjFrKNePa+OpTLxP4SD0Mib
mW/OPi9RVRiN0x0ray8OGPQk14R6RJJHom1lKnCrEWhQO6FXXCBeL/ai/thG4AEaUD8pgqJchiv/
Et55EhTUQJyPPLLdCVnJO/hOPgkDo1mmuTzoQREG+ge0pDPm7ertl7stvVbhY58vMst4G0EJSIFJ
9ZRqjlzo0DAk2qoejX5w9cyMkBG/w6IlRV64vtmVzlMT+UHI72Se+TZwwcXPBITsOPglYfzoSSn/
gl460GWVz/zG8usezvhFebu0tuWLuSYU3J7GU0K1nXFKXsGG0uZ3XaFlyPUZgImyxp1O29DQzVwE
wgE1+wygasRrF63zvBM0NLtCZ6V5ITEysDIANIKHGZiA8iXRRMRUQOpZZu4UV6qZiYuXFAXp6Bpm
JOduuk70PZLvaZE4Myx00X8T40NidiuBO7wljhH2/RDIUMC/oLv0NFCRn78OfmtxAhQP23BuYd25
jx5cI/RQOMNR40Z0xKRvqyQICdjaYSwwjQ1tP+KqVJtZ/48NgEFPUssEp7t/7xh1qQZf2bosvzOQ
7dnroi7/wkPc9VO1kiUY/eRA9fLRVXI9HGaaQaWtEoTpK6Jab1ku64brLDBkcB97zLi32+HGFHTr
31nTUIzx4dlYpdzp3b2cgKG4gbGCEYvT/gpb6+6XPxGUP1iTM+uI1Sqwpq4vGkQlFXu/EbljNzGc
qn/b+Aw+DGOvMf1lPT8wDyoDGDxrCr0t4Tnw73vGy0P6LN5tkzdh1qEfNRb7SFdq+2kKa0+hxtrI
1HTbm3M2hZfCjzulvVgr/cWBVwkTeVCXI4cX/wMh4hmXBSlhY5mFtgyE4Pa8opajzccyzynhJEZ5
SelEwlCaU6JIRzL9U/dbSYM5I/epPRkMLqtvOqrCrvsMiMwg1iGwoeQyMC9EB/r5c7BCoJSy21kw
hMcHrWXWBFQ3GA5LL1i8TcyUPXKz6gLN7J3D79tliCutj47RBYAiherV5w60ItLTkanADZ177u6k
L6VIp4tMiFFij6TGHNvLmt18J9q4irrs7j6Y/vTqz6A5N51y6f2Li8IJ3m0DfOH6Dfuu9npbaE6U
0Cn8Wwu9961bXaAIsiwC+I90evA1u1rC0ocYAENxKb9oyNtVoYsurVlYSlObk/M1i/1/i2EmfWU+
ZzBDDGYwQRKOh7+84q6P7SDrzfCSuvJpuOfKzb8w8vGlum/6jQ2qkF2QUtaGxh2m+BI6tYVeeofe
gG6sqELMRntO7mXltMPEa3dsit/tXjDzr17xURo200N6BDmBGuls8Zf/fp2zUXLTUH5Ul7n9wiEp
ap72YDkgNsGyn4jxiT0GYwOHYp0ziy58Ic/xCsAVxZLSxiVhp2vVk/M/KyIej6VU7LHhDiNINWwp
BhhI3WyRyZ6QdggUU0xyr/WDphSf6oRXAxNOe6F3JSqPwjVGxHsronC7z14NYjoLAZIqUt9t6xNC
/rW0rIprNJ2MnF4eolfpc9h/c5vBsLEHfep2fuSwIqhYJk1C0IXDSZE4njyAaLSxpaPSZTclxf9j
oRxOEAxYZIpDWsMpgAvg/neui0GAuiNaI8PzVicE3rbcHmTjN+yKBO/4v7bmMrgJJXRrbwRqXj5C
Swz9/oEb8IuPpXStQ1LN+DTZnpZ7zS0FE0MEe71kWWqAY7l5Ymbw40enQz4Hgwrh+zsQIcvNaK/n
lsQkAcQOn5LU64VrY9oNFTFx+PujkeN7MlkyI+t2qoBDZsU/lfA4YtnJQdcYSDY3oMaxHVujO//m
55GXh/pK+5ZWjyg75g8blirXumG4hZBE4HYd72p4aPjAQhBf+NbDgWi2GAKOkJ9ldiHu4dlBUaKH
xQrCocJiS4AAzlZiCCKR2Z9QsuvzFt3NbosvMKEgSHRXPIIWnrkn+MmBHZT7pK3Ymx7Uj7p4imSg
yUVj3W4r3rCODXEx7amrGvwTspHncygAfEy7z386ZLY3WNf2yZlkxZQl+exy8ltHyz4oMpIfpY3g
OQWwUSdQZokmmq/feWDHFOv4nXlD0VZm2/fbIJNQogNg1NTwn5D5yD/NOTYPdKT4uPTzzDUZdkpW
tX17X2BXWmitJBVd0WhTwM74yR2CzU733lqyvNZtwkVK29i8ABaKtlkAxyeY7uYDMrMDELLN6PXH
S9moAZW8x49D04ugdjFtHGyi5zoeKSZhbX8HMgRzJf/27GJc6brC+nG966LREJUrUk7FBx1vFMrp
8RAazescSD3ijAMySPGOLhy1s8yxWqoGVdXV5d2etYY3X+3aJ/FKje2aM1yun0YTt7dyeyLPqYnK
mYXbEJxbb7BtIeSv/AhLOrubjQrsqTQvViSYb26v5avIgyMf7E4TB89moCwFZQpLnegR71dC1Lnb
iX6iyP5GwYBUUUVYkdGhQgH8/PfeSTjCxhXuC4AsKCWfmyF5pm9DozTYhMfu6b0ODWi8du5A47cI
aHpw7SEcyEIqFMW7nP4kJD/JiPQ7hCZQQObZ26KxDPH2viUlfc2vlBPjU9BgEyo504A1p56Uo5GF
LjRNeH93T2u9opWyuN1Y7Vs4u88v6BEaeDHv08Ikd+JzNyI2aaqCjlNqSwyFX7iw/moPq8eKWOu6
SetC97VjRlg7tyVdgAwCXEWef8Bo96ModeLB37ZzOxfh2/naev12XOS2ejb3w2fHuSbswjVj+JZd
joR47X+pTxaNwmwLAs9a7xpxwaKjlcXopZ2Y3GFWk0THl4IYaIO/xHTtbzW4fqCMOix6ZF1vH6wn
oEBp+Q0MPHGDp1xpnuiq4OzCLQcaolHp2V35OZy8FKhktzOAM9by0Hlb5Bf3v3IrkXWg+khzuGdx
BQdTop71PIgaG01iJDAGtdiOO7F9lyYTSPgqRJT9KaG+AS7IeIBgHCy9RYwhv1KJkKn2i81TfruY
f3J+kIFZ9a3BU9zk2EUms1+CdfAMQSofmFfowTuXG+jJpiJRegqnzwkbSDeq15xrZo5w118u6ZQA
QUhOZruXZRYPC6wwXafUrQEndIFofMmg8NqEB9auIRA/RYY4mpwo/zp1hsgsX7DZwej7NbO/+cNF
9EwawebtGzeRH+oMjqzv1awxlav53BVKDqmReNl35vyta7yL9DJULwdDn+FjCHfyklMo3uNTCTJ0
uTY185CMbjdq3ye0cMHnpt9iUjyKyFz26cWIk7fZzPy2l6gEakBWwGlwK6OgQU5f484VFoc/FJNY
mMXDJ4/rrr4fPp2Hi8IViu61qq7bO5HGPhX+E2hRve2U/0D70kEgncepj7IgsVnxca0TjAW+WxyH
iZSC8KxEjZcbN2EV4iDEtz6Lx+lBOcDgJ6867f8O+vBFRU2QTJkAX5wVLlyPl0Ay2ifw4z/YM5qY
jwlbWl23f91lbvJB72r2nkxj1bAYJKbvjah4H16xlZvPF1icbSaWDDKjNx33O2No8SE2aXtkjv1Q
NBFw/ajmfEVsG7rQH9ZRAVHuOuvnupDqvKNazL27+l3qP+fS2aeiDj8SE0YLLH3cpInZEC15cuv1
JgmDDmhdgyQElLaxkWP9tBl6tR3FhzEdlDp4JPJjC/wkts1kstNia2aH/89DH3jU7Z8QqGb9t36I
hhh4aitcsLpAvctbkE4bNmbaFllSir8n64Kwgo4IklvM0GpFuR1+FSQ6LZ/9ytB4nxbkjAdNJ/5r
J4VAR4X8CmB1TlQM4oNrLwmLPoIMnt+Dyyd5eRZIODQDkqiAmzM/dYLYYerQdvDi4Y0goAfdy5+y
dNAIWPHevOIEgT5kEC1Up0kYSz39M3mv9h1gG9gsCKNrn+Itrs+3Se3ns8O26FjDYdRwh9RFBLHP
+deY0085u9ugi4RblK7wKRvUUIJbYesnD/ZiX63r8Tb79xtrHqcVIimq6gA6Z4Y7BtJo0vyBN/ov
e5nZo4VdN21dHxCnCPQ5uh69GpGZC4tKJHvN+21JHyJicvbNlMg1Kl7RHl+KLPO0BZZLnUycCUbN
Vsth/V+D+SXhrKX2SdpnXd8nd8E5tZiR3Vlr2czQTJoB6CXG1Er0j1zz+haf1bYfOYM4FpyW57lL
rqKgAbs24lLiOMsuVncQMfP0HUNDTTXSdlCtpYkd4OadtbUTm/1omA3T0gce1FcDCxhlPRyj7Iqw
vcd+nSXc4DWwtChFUft7E01VHBqEnEJpcmOV8daNuSeedUtFQbx3FPc2qcvaiI+XLJRfFbxPGEG3
5Q+SaRSCdnlduIZ/QGC3wThsYf4hlmyPHmTFL4FsKQgYE9cqNOvhPGCYQ4IFMpJrR6fYSLDdnRlr
oqWmzSQRuifN5cd2yPx/G/wpNuMb4FTsIh3u6wGUnyKPH96azQasBo+fPjlIiu1eQJKSmRyzO24I
qMWl+tHjvfgig3HVqyNJFx1mpfA0Nt9p7mmbJT5k7qWvY+3X/ZHFYrJAozGWIDbKJUunjoUe28bi
yiorD5l4k8PyPW4aAnfO/+hNczeqkwsm5MMn3A2eIOiZ8ldXcuK3FFEQ9bq/SydTEyXbNf2b8JHH
35w5/2X6HTG1yIZCfx4QP2xNvK4h0FmNwO07keFHtpH2pUsh8aH242fY5HG8toUNtI8P9Rkst1LW
xhVFUMsSZ8hIyMUBRhIaIr4Io8hMGzfkTFV5Mrd7jRQYGsXe8aDSqWY2d5nZXkVvi+u4Cw+g+BZB
n6miqshuKaEn+t789Tg7VnR3jbi3jdZ67o0Ix8JUyoCrDgzYImfx/iQLUxHPCOvtNUQvUgftZcoq
iCTTwlMHV8QJoLDPdFsNUkCEHtUIlA5u0QAJP1wuV6LL1h7pmKgOzR27wYoNIv0WCdC1gPD9SpLB
onzo4M7USsS2/Ydw1QgrEYWO4HeLDTyL1l++MGsKuwJ5OIMn5AXrYBDsE7rSUpH6AgYwQHLXBP7i
7AWFrNv9CfTK+K+izL4zbs3wHHYvCLkr9MpsD+aVJnEX10PViL0bhgYuKcC+AZDhE9nPkjcDhN9/
ezrJhKEkD+hO9tieTdbwGo2wiKJRVxcJhAGUyIH+fwJ+8OiDXLiN1Gagtwsfm1kKA/Ojrtozdy2j
NMe7oZxTG5gG6y5ENbIJ4Crt6Qb1K7wgUoocBeHyHHI0idVrFoarF2ClFp/C4PUIHMXbu6/RTEnK
U1nuek0U1zVCliwUUPZCcbigO/uBs92fJzegZ590ChQgXzJrAD9tImUPpCMO1zOUaEKNDwRR+OGW
5Y1haOUjABnI5Rsl5N1LEihKVp8zaHIfABdcVy33ftSDWE41WvHmiB1QhE2zB4eaI6pj6zFoBLDp
HHR+fy6GdfkOUtjveyEkeqjXn9AIhLMaSvd9RQmbKheVvRl3BSLXjjQOFKiIsz2O+uoFj/CPoq64
Gf/ZWiQdhwG6XsHnK7Gg7eA6xWR9/sIrzC4iC//4KINYqw8bajy76F8wsZ6961lokddt1tl1bm2F
U7+4zET5a6kaPnmh61IE8yLsyx6bjNFyzWvY2Z8TDKusxIm9//r/ents9JMTOPuooNjqV83vWwbv
XK8YbHKQFEqsU8s/bm8UDoutjSM5J3E/6jopEAzLfYm+cDs9TLaE4Yv8dtV0cQe5bidqFtZKMZTg
jmcao4WmC4rvBBaE4n3LRcPp6KAsETfxw/C/f5QoHIdt5wkbX2ZrgWABwgJBLyWmLG+Wn4Dq8Q7A
VLxVtUfFBMTOk9sjIB/EiLajsvVANUVE1jvRY2URHV8Ez3YRvWboE1jalf9tO0Ds8gnuJgOH3PmB
8J3C81EjoDeC1gV00777rFL3JZOhJg+wRzLzgmp3CTvYFFjtDuM+uTt8IR5gpbFG+p+1bLGqU0vI
rRCNFo/3UjfKcoCgbn75e9mCCx+BlKDIJPHxRPv/gQxV04nB2ZRESflOAj5Sykz0TuU7bAxUnY3+
HtwajhPWwZzmwSJUK2SzH9F/NBsa2H9w1RuaL0lsYg9TGeFY4Uwj9efrgrtkeLgq1TJbnvnj46Qf
Bt6Fhq3+cTmktF1U0fzDa7/wHty2shmgc2U8iklLq9tnV/QtxoR5S/v/UTjp7MHTG7P3AhGyO5U5
6TNH/d3m7T/CME9MF0lY0dNAeYkBne2ZH/ndpnQktksuopNWOoDwfwF971YfHYgDYdz7UmVIbCaz
Jvuh8UgwO2sv7279ptZHwT/DELv08+P4t+EeNGapTYnQCSBJ8vFq7DvV64A5e7X+hnEQL+uQeQgm
bmOlSobN+VvzRda1Yg3FgCpWVy/UAOlvnVJ/dClIGk8ug1p1Yh6bcChCt2UZoszIIvZKa9y1rom7
AM0ePcUeLJoiFhvYpBXZl8WKAoQlr1clj0YKTX/aABnxPoPaKbIo26EU3icLk9RxMo35ctUIB7Ao
oHBdjS16sjCNxCmMx6YWPihD49XmwxEJHpeRmxjR3o7kwyv56RNb55PfSRKKQPxF7aV4qvS48sk/
07KZyCkH/CssCpLnryRUfkzmowBkgCO+lwt3uH3H/LGC9RgoEqYi3NeBu7Ae2oFBkK9CIbpbveiC
FmQOQXRNyNtiWPjmmhxyr/s7DMu4dJTloo2dbhbba0Hb8pbw5D9A/f++Z+UztHgIPQTv9O233y9r
A/d40y68xiwKbe+BDBu98p/fzmY0AGs4tWtvWz/65+fmpVOquEsOgM4tncnizSjpuNoR+V13gPnr
jUjb8CEEPslMwI7NGGW+FEJFlTChk7isSt5mW7dk5vecZ5+cHay3MYFoQgVTa62fIa3wwTCOE52S
tedZGWn4ORK1p+4n4PeypbD67RxhaJJgOF44Ood1jAVLesnax1sl5S7pmeeFVuLYAtxVGE3YRJPC
fuyAUV9eIL25ZNVxJFKlqcxKn6SDfW9aryQJHSjTX8lHq9IdZF1qQj4iMMMEZd9KgD+pNqehDuPS
Wq/AUTGVfUWkvMyA3dMvrTANhuVogYanFkjJhKfuqCbRmYm0qG80VKRvjb2oc7cSiX2YtwcQLjO6
jiS9OLM+SgAvj3TMDR12deoOdbxR4wXFtz5ZimfL9gJOHYPWt3EwLODq3VInG1WxMo3LKkbb30sm
VgeBsxHtsMpYPUlgVdJxidOYElZEZ80lHHf+hrTSUNKHOG2QB8ffyjiqDyr+aacvlCsb8VA4/Yf4
YkQftTN+zuggV3l29ROv3Nq3aCQkdFXncG+MNcPMgaD4ZtXaXzLTLmPW5SDov4itpfYqQIflsSUr
Jl/djcVSmZc8v6cBlv8sNWaaDN4lBv/PS5UIyZt0MmyoE0zSZ5go19iF1GT1qkF2CoPcVDoW+hBY
cGw7iYwAr+AYIS+uGTsuoNz5/is4WdyU/EbQpCxoI3txwKweLRedI2wpzZeTvdaVRMEerQ7JphZW
wXwloSeW3OfZdG9KfeYOxhnlcfSALow9NqplOT2Y+nyj9a3p4SI6fDf/Isg8njrsIxZ/Nz3lZakL
Pc5lP+VFiam6IsnUCibtuoK4Hio0fjN0tA9WDPhu7XksSzMo36EkYhxB2zBxZ1Owx+Bc3ov3bFHv
bdjFOVw77Gkl0/xyvEo/An9paUoPFnLF81fDim4NrZpp+/ZpNttG99IGvFW4YcMuz29HvLBQPIHx
/E/2pgj7ler+GwaMenqKQRxN2Wx6OcrKkYBn8UoDP1FNwr0UiAz4giYqfC0tVNp8uPJK7Uw15sYY
fVGTdtFPOUxcExeCTDLUquiol24ffpsC25BfIt3xHx8Rtv09JWeC+y3B33iNZDHmA5v6X3jPzgdj
E2KidsX5qQQ/PNSh+Kgu7KTAld9bQkjPTuQDHrTqo91oui8HWN7UQNmolus4zJF7y9quOrGlyhZ/
v/J4DIZaAi0YeGJNxtTRz0Bz68nHq2Oe8ObYDDNMZpp4EhcXieaq8UKOfkshGdk9nyh9ddoW6eRy
c5bGB7AY55pZCV66ReRRC1QGWgSHXl8HCSaSlLrKMbzGC61X3zvyIg2jJzTAu1vAQ27jrerD9OzC
QSLRMGDg8tMFhAIWQsN6pUzGPRzyZFgLCCm7d/HBEySoIE9yRZ6K5IQT+QCvDvcnYHM7veJnwqUu
1jRecV+UvDM1QK2PrJ3b9D0nFixZF2gBmNAnZvFV9Ago8ijrUkKB1BmSNTpH9ToahWXKeC9CS7wp
jSQHe0apsDd3f6czySgL1goKw2zxnSoH8r1zSx2QTvgThO4Fh9k3fH6TukJzWXgOymV1YIYNiZp9
Q5LU6s0EexUCWeeL6rqu46w8LkItRs10Kq+pTARefs2+3+GNOab4jerctD1Bk+guQ0arWXzPQ81+
3jeWjPXBNTEEYwa55qkE9JgLmpzc/27GP4uVwKCp3tHoq+xPOgVfn1+UbwBWerlepn4fxxr23EFp
aXppy9F3N93rGvbtS6C+T+sqsI6vQSnIU/Rc703rPG2+EeEgi1F8xt4+MBlIRcngaOwBg80RE0nt
JJ8qRBs5tWBtKI6c8jxCraZuP6A9+MyXH2aPWlYcbqY8BGQkTpdy481ByEBay4TWXIacb90uiR5S
5aszais8DdKQghSlKJADYkA8dCl2jDBF+bM5wmBNn0TsUbh/z55BTsF5OE+5mc/Si/IWpQNttMgG
35+HOe8YzJvzgAxoWvcRkt0rtMHSa3Ll4m1A2kKp7fXwMLoKUIgfG1NZJIfxXipvKzsNn3AZ8yEe
8Y+2KKAjqtGIxDGqsXsBRYvfYnv3wZtj9T1CjOKy2dUczEFoUlqzbv2jL4DqFafkBtAdB1cTxBzl
e9FMqUBbmxVx6UDAxRW7LjbzssE1bR2LgZdiWMHi57HGqBgTIFF/HV6oQhocXY+qG8Rkco/XAAC3
hH/tMpJ061r50IeOW0Q6wXq5z7jSNDmdupmb1ANTgOPpX0U6y1GjdHgf9tOFeqBVZI3Y7QKwkbwJ
ghMorA2RNy3wHSgnCsEZTElXS2mYS3b94RDBlll4x8pO1Gsjnmk+wYqmLZx+kii38vTi5CNdrfHY
L/o8c7KLInHetLTWLaXtCo5j5KHe3mYiAWO40Z88tg9ioLFABLnCNCYSqczHwZGO+XzeXPGIGckf
khfhLmOV59Aji2spGBsxPBIuu9vOBQIaGfmgVeUEYilgYB9cA27MVmA03nMIjoKfAUnoKir79AKn
2cp8gWEAhBiyxMKyTrn4Jqaa4D/AMcmmaLa+rW2y+JY3hLP1WPilAdWsg5roPA6LPpEhVBqrwNTh
ytCTCAy8ii20meGnK5/KG/4tAqf7U6roWmgBzqep1klytTfpRlug+uePrVkpFTHI5snJGc+yIMdk
oPsBttyG9iWmKgvZ+tNv3C+SfylhIprTTcDMmMInZqYMDeOTgpjHAs3dcIjlHUZYCuWuxGxj6ioD
QCRYZtmho6d6ssVyLw1x3ew331apEN3tvhb2YY4PKhbpyKucYBj9l+wXQi4LJEfB2l7igDuc6uv3
HdH9E8M1iRVU8IEuC7pa80PB1RbGpBK1lQQKZ5eapXpYphD6A/ZDDwdfVwa+f+MO/ZE3g06UCktJ
UPLzGgXQbhrilzHVTKvsLmLU1Pi0J+v4Qej2RueoMFkkJ7IGJtT5SFy3DqhMqdXVkgG27TuAyyTB
f0wQqw0gW4v+cbiKAfkGiaH4kw2Ap7nFkDa+JuTPAPZPfQowAFRNb9LV8WhLDHtUd0msiAkaT/yi
ibJUlYPxN8gwAuZr5ApnOdo47HTrTTkbp3ojO8DOnPicKKVdklQjpnF+5JHUan1hG7qc54admO0p
gVfddlPqTv1unhnll2ZkG2fQyffH1MX9VwfRyo7ZITvSeqODFQhyKv+t2iL5XTe8e14HIvR1WBx7
e9Bm8HQ679YuCVj2Mz6quw3oIryJJ2HflWTM8+Sq2s2Bi84pNW4TftIOh03pFjx34f8n/1DvK/UB
MlbqOrhs0J7r2mKohbHYiMlwvIkumBUUO+F/V252QXg71VsHvlsVw/Nmjerem9W8vFnOKGJmGNGo
SdwwqQAU3be4kRnfyxZqJXS7CBkToskRtbPVsFkqKnc585VewmfLVksxEeLV+WDsWsqsuF1YyHXQ
RFVrSPivPo7Cp3xx5tiy12Mug62o64M0HScDbulslMRwiQyx/Jjfw/97fPXqO/Ah/eEhhxNIN5U1
fiQ0sQe/4fUVXWulwt0+aeP2XVULjl485WfgfslnRhlIAucnZ1kK4/uMKhOx7TfPp0uTbojtjd2o
bVs13P42HIyMvXvTZm/r4bw9XZ0ikIckxgJoaCZDAIFCXfozQgTWtSihndY9WhSo42/8E6qOjAhP
cuurW9PGLky7ekqRIYYxoR9MbGiwcVdKOobgmZ3IILfF7NQZPgvHJsmzn/JiB3J2tcrscuigZzPp
4mnkSF+9wgGGlldSJw9yvDD4O2Gvm8cLFyJG1ReBpuSNDtFluhJxFdoJhAbVz37Trg+fmoiCMN/m
YqMuqJb18dLdNt3oK0+vbIlY9GbWJNdbUBggQ+JuRdvXcJyRY0kTFUkr1hBZ/E5bqj+Xu0cNOedq
OOJqomksflWxaMxKsRu5Yl/syrC4mBZQ4vm5SFmtn860Q0bxnC3Hw5RePTdvk3mpyKoexeFjcjyc
2HAbZUjTgs0ISzYKHNeevx4bsK93ambNojuT1OHmEwthyhj4D0NntxRCjpQV3dSN03pjR81VQdLa
B+NLCg61ExQG7oZdiMxE+vI2TSnpuubfJR0/oZQiuj/wmUE1f8vvjoPd0iNHF8lGrttk+2nsb+os
MxiQescbpBLzstW0dkq2xrgnMsi6y2a7nxiDIY+/bFjLJwTQNRJQB6hif1a+1RJnOAjxXt4Y+Rrr
iSx5qkRsPwHTbAfMA0hxXdVDq+jI+47aaw3ASa97Zjwkr6srBch9SkXPxnycMmkHKpMqCvcUerxb
arPBba5cAt+XrFUa0hqg+13YPV3cj/r0JB7CStBQlqkhpB7leNDEeJ++PQOFrZSJuF52GerudO/F
TI5I+6oqCdw2WqHT1bBcWq1/oRJQJ4RT4WtAzHnx2JjwKTimBYjXgD58CTP6F2ePX/wPZiqbROVB
cfdUEvGhaY8k+DDfjMTHo22isNuZxQoRM/2H8qJ4IgZ3+pGEdZQn/fUSkTX25swt7OFeHlVWKvak
P9umjIZb/50c16VXDoDwneHWO18UGJkYl0Siuit9SLcgixtBiEPvDS5VX4c0SfrMsbsGdTS4gMcZ
qL/vbUNoLgM78cZaon6TxvHG6c4OSB9XJ1ply06Kk0JVK3Yxt2BeF6qVUM676KrTpaI1VF3bzB9Y
/p33EiN3ulI004JA9yUtqZC/HpkeGXqE1rddXkSWMjvQgvgk4CeNADVynJoUqI//aOU7hT/j+pPl
eaFbSRiuU+1SdRNZ3Rbb7lDPpVDJsCRrn6uauV4LsfR5sImVZrWBJ2dCO/rMApP2Q7ro74zJkgq/
im2S+6XCPAqokdmE3aeypwRdhUUvn3zVvf0Q72rtnz10uXpDmjexx23yzbYFv24ql0BveuZfpdBU
iQXhi5jcGPzdiB9haAMe2Q814yB2IMxbS6rkl6DXY3U9sP4K5eSuTisB4P86D489lPTBOn4EJvDe
L5BcgEYIyDIFvY6tfCXOx5oT+3iH0z/4dAhT7uokPAWEvZHOSgVfOQtOAWxzss4/q0O6luUyp502
dPr4H/eVY5DZI6C/qQITnG8nQ9HJaHVHMdbcbQXw+H9Rfe4ZF3Je/qQdZYqM/Xf4h4Bed9lu8RKp
9aBXfWqdeCuB4+nIEfHtc9KrK6MD9qSEp7N0/itDyV4JohCuGu+ue2kdQfzjOi/MncfRp4iO58/9
nFpxd9dwiYH7LLFLwSvPofp2LGon8i+zvqnZzapMuBHc7Zp5hEnnJgq+Q56RUogKAoQgZZ77x5qQ
qSRan+eCXcCLp9hHbYTAcIl+6m7qwxV/5IcM8CmxgUUOHATxGENE8Vie3tCHX46T/d/EQdevSm+1
SBin5ZJefoW1chq1jAIpMBJn0OUviLyVnn9RYiuYMtfm/z1BBz2zpvB/OBrEYEat8ZMJof7oSbic
yLdQiW1f7W33Oe3s1wnCWCqm5qjJ1dvlzUDBALD12v7p3hrf1yqON/1PYO4rpLYQdO9QzZIAojvB
iMgR6UqBiDPG05rDZPPBvxU5eI6kzvdYL70wnuMugH+Ao/W3Ygutj/HXB1Hp/zzyIBk1WIROOu7c
+NffG52SPUUrP+gcWP+sp+RS3NhcqdagkN0dySVdgpt7nKxB9I8Vt3MEInhod/a0CywBHyXkN0V7
1+RCO5HRbfQxKtgGmNVSWXJwS1KD9LaTHxh0aAFnNLC0kzvFm4bMOrtnWvvdkfDiyUT0vjLvbobB
ZH24ATsIH2Q0A9+yPJUztVcmjwolF8nfBX2AGJKTL4fyCFx4EpBJv6sI395KY0OfGl9rKL790SZw
6AcldBjhtLuR+vMgvzV4ViKG56wtdGkv8dXFPY0byVNSqicJlH7zgH1mJxE6TFZ7Ez52weI9ZUeb
ck3L3intu/Sd654L3/VQU+XttYDcFArdZfZmB4W30/I46qwZ7RjxK6Bt5ajZFTZV4lUhHH9J0wi7
2mZ51oJ+V0+S0AfYQUSwDvbM73kdAppOvMJad7GB9KsXrYA7quTKL7005op/SYOG9pOHUWo5q0/x
jloO48PXJLNntNvptBXFfy3IUnLKSrgOI67W9bzV9IglIHa5oL3cszo6zstSZUy1YQvVlUjFXrT4
3cS5kjJlnYYHaOhvUxYsXY4g6PhCks4+X9t8DsZ4uCuDJFGnTx39YUeHrSmVh6HFBxTu8QKVvmIG
VFHIibAoxidbEMpiFOLHXsNH6y1l5akY8zC1fKBc4FXc/0NUV5akyEt3i9X2n1gN92jqCfA2A+FV
7/W+EjymrYEV/ay7ioZlJfK4UWhZoT9BQWqprzAPjx7oAS/ojOA/2dfY49fYJh8JBpjr700Xv0t6
X43nUgyuY2BvGu53gGjyv+K29c2WOMW5T/aYhx8uxW1j5k+bT4UoGmM7lW4ndgqgyU7DawkJJYvk
UTKdd7UNN85Bf9vVCdE7j3rbj1FxY3XVd4yWWOGgL6LnjfD5kSbusPO/afkvCVLKla/B19916XwH
aPxJuHyRMvV0Y1WvFipjzHQxo3eMm4SFJ6NGybUGOBQlHC2zdoocpBxIZUiLp5e16Lm9qBTNggjr
duhjrbozys8rb7auf4JOOOBvq+m2ulttpgTF3Lg+cRn0xo2OAvVLaJ9Xp3ex6hI2EjtAXJftOI6h
qV+GLCYvAuJ/NQ5N8/5dTwmNHi9/XtGzcHumjnV1JR0hx/P3DOYFHwnjL3BTO3yRwUeD534h/Dsp
cjfICJVlGDN6NXKda5hL1TV9C8i4/8BWBnZD5nU865EI8jXSn2CMLsWubvaaTvDVYxphqRJm9nbM
KmtKc9pF1HXzUQIl5QjAOHIXGqvHE5yz0GizmwcO2AIdl2N/UwaTuiceSAp0rbKE+Mp+NXIvNjDS
T+wbd2wI0KqiSN6KrVCOhz4nBPABn8qC2Q7bdpwoMIVLlsZiUEAz0/fexMT0jHlT2GTITgbm+Umk
hi4HdExC6NwNzc7bHvoo0xfE5JxGCNRvTvIFvXKC/8vYqE2VKxm4MBy/CPiTaz6894vCTZJTgFDw
dX3AVZbvQG4azyu26xOLhuCzC26RwjOTZQnbk5agFHrTIxFfZlVWEVqDUxLWH+ICXBVvzm8+kb0A
dKbdK1eqnj+rf4XTb70LNtgqq9TkjwHtoIM6uzl796rat2n7MpLDSW5I/Rd7Zai8qy+nFpmc8ZQy
+m/oE+mYLotpnysnQHoe2CMjTAoz/pRWlCVWQCxBKA/sFhoDOs1dn/j3iZnHEFdvlMaSj6/lY05h
+dsaNBDmULTa3zsdVhg+WxRE2gg7DCN73C12Bq9IUOTfJICkfgXc+L24rFNnq1wZtp+xn/vtfz4o
REFywGjrQQUrndJqMpG1AeTw+xyAMOehszTUjFvbzWYMWZNlHaSp5ZETCzTK2Ff8oUjG9mIQmWJ4
9QbY3L1ybUEUpGfFQXVeMM5xsqZuLQFL9DSwNZyp88Zv1qf3pEbOwmkOxOZprelFANZIOYPNSWOd
XmtXvMrPsN+QptBV9gWqOvhmew/mP8hEhbVtDdZmW1yOECQB4ZekClMozJ7PYzazrCE6GS1ZHVO7
qF7D6GkNZDm5LUiAbPNfBnzgHAm8GUZMDPy+/9O/abGo9+GKysVkO/HTORKGY6rAjr5IzvOVzaJ1
MzS31vJFUhKMZ35pOAGGwS0+pNS6HgwQFI950Rr3U37yPwFKab/DxSYGxnZb3BNE4KCjKg9N6Sla
a1AMAKfn1N3Jgqy18uxmTb977cbNxTYinIhm8bChcMtbJ4ITfpM79kecyCM+r+6kRUE5Ai/FMqnG
tUtRNBjwEU4RkdoIOoIFJix6ezcpMugUopoMC4YRq94gACYMMwBoLlSuFjJ+E3NKJEylaK7hlpLv
EsQIa99q93pECSomThlS+Nm/Ql0IelyZkMo6KzOIZKq7HiIBKlVXxPCkKV28befMOmlQfKY9gEO1
klaawD/ZhITtiFKdTgZAfHV2UfRCcQKLpNV4eRbgAI+iBZssorKmCBbiSyJxtdyoGZxFAXz8SdIo
mMKresz5uY12lpyz4/1FRpKGnUbwR1uLe01xgzM8EZ81Rq0M/2sz0+Cv28fX2VY3okdlcxUwgXa6
Ht5eSoY8E7KZyGiam7/iy3NtaMPeKABJsjrt8dICt0hSAv3JS7vX50Bpw1GsBPkMFnSqwM8sYlKk
7p99jOlkSuZBCqB5tMACm8Or162Uj+P7NdznDo6Tg+CmNrX8L9EVTisoJAhImWv6y5SdTMZM4x/P
b64wVVl4ornegqflRBtef9CiKVXWea1EcSr2pReNyaALGIyNS5J65X1QhE7kn3YSTOdzBhFH76SL
OIHYkFJfqSUoXrO2ypk/F46QsWVbP+4YFEtjeevo5RFigkNmS/uDIxEYlFiPNSZ4W/+Tm2hwJQ1V
RgF3xTDMIaYY7ORww0LkEVU9BXX/UYFh12dANKwsk8CutT/rgleTg+A5Cg0IZo3QRMjqMnZXuw0u
AFpspBgNxpvGU+4oP/YB5FtPb3jOmv6zeHq8MfhgtfRbPIW9XIz4LaNHKyS7eSK1z0sVQwDPWWFs
Weib5D9pXlN24NGrfp7NWLdbX1CKSKUZAnd4+85QahHdT/piKu4REqV2zFYlTWbKfzqptS9/FH4T
rNKhJpxqN1f7pcK2yzjUhMy2aXxrblzW36np5A8maFFu3nhxR8PyzINPUfgVLjH0QsjFWxzldoV2
CpE1UsohdCNZgLDKtxb812s26E2ACVQRGg+1eFko+YvMVqgTxrRxXHZ69tQ1QK5sMHYRYxczu/p4
0Dwc3Ckzyx5AqW3YAfOAyCKd2p5SW5m+j+ZvTOQhAUHL2TKzgFKL2JHF3Pp9wGVnz97A4lgseaE3
jNMkcXIEUK/DnhKMEk9O1UGJkMSpnh6r/IpdHAd3cgYKUIz/bdrYM8o/D/nkFJIIDzoEZSi1hdv+
nxs67QXPPbbIt0qkMxSohMbbfRFlzCXwK5Cm5LFJ3rPebAv3Jp3aQtaDkApkYrCuMtqEbGGHBX+D
SwXBI7xip40/TJ0Fj8izqFvzkqQtZklhh50Vi/R9tHcDEWyC4rSax/O57vVYPvPMKIJLocyDE904
83udpQHKI13+9baQ3sSymp67LL7PnvM0m9Eb1ZdyZmx1LqDA3VuRp+WbzVpNVNTdRzvsUEoVsD9a
QLwOwwhNrNbI2zeEJJ2lHB/X5i8OaVFtDLlnoFVVTDNjG2+7U2nJFpIZhO+1gYGf+pqKZgwVvr2p
0jYig2B0l+ljgkbdteyUJsL/CEtopQK00oo36qn+/5Bu6iUqXdTbXZlQv1MULSLocfY4nxJ+J0nz
4sIswiCStsnMSn4tQAftkD0SYHC28N2OVMzLVDm7mQXcRur6pUASu+2CMktXQ8k+GhbUGkaDlqhB
A8gYUNbGJuZUq7jRivLakN3sxM14qTqEGSrP42gGAkT/cPemnMYkWKCwji5nOg9KzuPgubtPr4Kl
dWoKPZTaQiYse0B+Ac4ls0ymqCCyxqkHvkidB+VsdahcbbzWfUJOJf5ucOkM5VKxFUlHr2ho7Jo0
vf6Wy7JVgSzAOlQATN0mNlipWRykLaPnmXeMpVIAUQ95CwOws0tQhyH1L2ZLxDXLKtgHXfA3zJDC
JHHR5YOIVhvMdW7ZWZSdeycu52WppTBX45PI+Gs8G/7lsCPA32NpN+Q5CT9O8rSMJ4wBXY039WmR
0hk9Kbx2BjDzE7LTdAA8KoEfAl7aASmpOnHuOjm9HxZZIBfc+qPiPK6+Ybfqtb5FEXUcXqoeslau
Sfe6GYSNIuw3briWDu+d6IXvXh92ZbJIH8RcbmoXLggxgbgQgKmq0+CkXoAgmBA1X5hzmxlQNH+L
7puwmJnrK3+W8k6uxCDuxnbTo4hFTc2rXy4zDx6beVcUY8Ux+6A8+ZJaKvkD6rldWskVK7ou95LS
qaIls4eSjb1O8VtkcsNOz2mxiSJEp0O84ri+ihMmjOzEcYT+wa7R6yub+zHXBK7TEQ52SuINl/J1
DAoNwu1OZfG59vZuTNwDMCMpPtYrEWBuQHGCK+StmNCiHcsTvZWg9/psIk6nsA5icAIaQjYpT1rJ
krWToH41f4Tb+vZqvQLxvD8EyEkv84AvyS9nSCjpUxNck+IEBRxy6DTo/3XV/G3Hf5DXcxYZFKeu
FWsMRgyO7zU/bc9ZRBdILSi0mzbKk0chOP8xb5jKKInK4uyncW9ZeQn6j/LkQyw50jHfC0TSYZvT
GpqixxLXkHRX55Jb9Ailt4Ni305wOM1jDSQ7Ur+cChCwTknAXSooeJSunxsgeCCCov/6LMseQWEJ
89T0w+9H5tAnQk7F766/j+3TzIq1grSoveZ92eSt1dDAhdlyRvpHpph8qov4IZjkBxFB0KKg06MP
aOLUvHviZl7gMOzhlVyW9TwrsugaIhj/0qJd47/vRHw5fUhi3EF3ewboHQ/B5dSgaSa4VNDfs41K
GREaEkc8VsimtZLctbbDNaYm861dEcXXx4pRPjMI2UcT/Fb3DL/D46HhZkmzDgsSz2YLlpk7fDsN
sL6RsWe48oC9CXbzQfP9XlWvKD4TPaqQRlbtXxsFuUsOGbAMKDjacVBpfeYBFtZPXvriC+sG6XIR
0K/neuoDTEH2c5/y6P5yQ4nh9JEvQkXIFZZwz8hEtSav56zYLEgbZC7sf9y6qLujayv13GHh
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
