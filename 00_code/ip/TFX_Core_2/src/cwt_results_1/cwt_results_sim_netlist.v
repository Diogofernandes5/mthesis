// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jun 27 11:43:07 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top cwt_results -prefix
//               cwt_results_ cwt_results_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48080)
`pragma protect data_block
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
YRwH6XNMLccQotJPMm2OIbXDL6WQYU5HB8fbTf4=
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
