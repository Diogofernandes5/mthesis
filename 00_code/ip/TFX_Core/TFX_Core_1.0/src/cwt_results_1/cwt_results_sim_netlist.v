// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jun 27 11:43:08 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/TFX_Core/TFX_Core_1.0/src/cwt_results_1/cwt_results_sim_netlist.v
// Design      : cwt_results
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cwt_results,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module cwt_results
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.698 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "cwt_results.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  cwt_results_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48352)
`pragma protect data_block
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
J9uw9lnYMFcmJQ5lMrawKA==
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
