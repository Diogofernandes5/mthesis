// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Feb 16 11:21:11 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top adder_16 -prefix
//               adder_16_ adder_sim_netlist.v
// Design      : adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module adder_16
   (A,
    B,
    CLK,
    C_IN,
    CE,
    C_OUT,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_in_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_in_intf, LAYERED_METADATA undef" *) input C_IN;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_out_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_out_intf, LAYERED_METADATA undef" *) output C_OUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire C_IN;
  wire C_OUT;
  wire [15:0]S;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "1" *) 
  (* c_has_c_out = "1" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  adder_16_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(C_IN),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GTqSEFfdw74AxDk1xtNQd2f6GHWzPN2yfLbDluzXTaZpl4W+sEd4lTW79qJytbO6Id+EKMIQA/Rd
JoOZOfWlzssuRG26ui4Pta5Y3JPgDAy22thMZez0bbLCexUp/MGwpsqeiAH6fB25CKwqaY0ZeWU5
zVSIuMCwrJjkXNKwtns=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zg7QdpS0h5qvdN8jDF6+Uy7LIqhoofwxBC4VSN6My9UgXglQ2uXgzJ3C3R8F1pgtGLa4D+ow2y/Y
AYpFHE8foILr6fC+wuHZ1AVOCIwn3jyrqkyC5GdfavPR782wRbs37sC/s2HdBL9KBYEYx/5Jns/o
UYIX6hvN50LZfVhiFW7hgfl90zqrt0dD0p5PPQIo+CjylU1iskxRQklRTt4e8CiQG4CDFV4P8lOl
A8j9h1MbVgW67VZNE2bmg8yVzCpLZWRMG/YJVq4c5A6ijn++/Skhq8nBHcw/pDZM2cPEt5tIjCsi
RX7+h5VqjxnJIDLE8NjzHmZqaYqo0f46F0d8yA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sraMSTIusw2vW8x6E/6NjBaBni1BYS47l8DJ4rLdHpjUsGIjJyCpbYaL5fGuk9CxeqtrDOjYVAi7
90gKBWdO9PFhDW1ioDW5KOAL0Vn4jIu47pX4jDV4qeNvNk1diz69p4CFg1STDlAXZzrSuxsj72WP
87dmE4nl3SabfGRMBlo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DR1bpsHn3evUQJqCy4fwFjV86IgidayNbMB9OsXIxw3etzwha87Cnp5nA00lGLG4fZ8pZJyrI6L/
fRkMyndVySdfcAKVuezHlGOupplByaJ1+yCRdSsxFWClOxzxu14UG4YKPeaiNLetLoWeelB5Tnqq
1hYi/BGV/rThTOY71pF8la+OJtDpWMFLfoXJoOTVCegrm5gqKtFY6w/8XsbGVdyg3iSIqj8qCkwB
BZ3YsrUv1TDfRwq1TYRCI1n8zXr53wvSW/5PP77E4inmNHCXCVXnOKsizHIZJAkA2UmS1vzkurzr
VEW+C/svU60NnxjcTMNcwEEDircH1H9DE6aBOA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mOBk7oA7/Fcn9XTT8ZhbYFKmYzC49P630wnSr28owJKgc5uh27BumG9Lb7w3/r45RWv2mmSUb6eo
4mxciLVWSDIdLhjlTf7LOhgrJMOQXh5LGfsh9zwms2iOvCnCe0hfP9CL4UIgLUV2jp5cxrFr9uAh
yJgNcg2fWFX83mbc16nw5NIp0rSQlbrOKf65j+6+CDDgfV9oxBoALy3cgRDvV7+fgxQgopIKdFoK
b45HIQkxV/IjqDH03Avy68Ukar+0zNvwBgy+ehioNpAXVylHbDXnHQp4PrgZSO+OktFUy+3UBAwI
dJq7YaBh/R/fv/SlpxdK/xa4Qvtzq9l/9JB4GQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bCy2E+cIonplnhEbZmGvC1heHQ60MGwVmU2x15ENdnJuhBjqhnJc/OjcmXCnsQ0PVFLIlQ/0wpvC
IqfKU1GFE+M+qT4h4wnc/x1JQXagKtMY5JeKKAYfWs8npp6CsE1Cg65poSjyPQsgppvcKCQkY5IZ
90pVE9LqdAo5VyBUFrKhK+FCFJMU+3N2xsv05aL9/AGTNG+GXNZ7CkLFnRb50dABLQ4Ku2BMSRvn
+UuVYirvcztxNT1gNuOrcoLmom1iYxT/TCqIeQROkp5HGgunWatU6fYC+ht+UFU9ygjggNSGfAnd
nCf+NSTYx33GxKIYVtgmZXwyP5cI8Lk/NmSxwA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TmV0I8CXrLN6NcEG9hNmTThTTkBIattb9yt7bm+0yRK6TSd3xiYqQWx5SXI3IMOAAqoYeCKDQiZi
cDQjcnh57glJKKvIBsctOLK/D2Kxyx3ml4Bjudc5vHfUEcBa5y/gEA0EWGBeWkllUdY84GtJEUsS
AuoWUgMw5h5ipQAj5iVYp95KGgk8eW8+W7GSh8cLYOV/kSvykcQxSrHFcgdJFnmCjN2aBEVI+6Rq
fnZfZDbZGAJB6fq14VDxtFeZczuf+wg4xmxBX+Eh2/eWWs22Kj7qYMcbKvAFaRq5iGeydCuQBnIu
ea3TVf+OoBqLQ94kHgaoWr2qD25EKHXRIXHKzQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Qes+skSjlfcngFHqOonb/14mf4z1xOJPJsFQklrcQMwgfeYnzbXPyi+VjQno7oMepbwl3h4WW5qp
aNXYP/ZpN4wr42OVgYVRglpc1gbAeMcellSFa1b3aa0p0MTVbZLuSRBHvAHGATaSH+IryuDZhdQK
2ph4EVLTnZlFXUBQTpyMiG7KQBeQ0fae3hCn5gCL5DSdxeRA3jjvxvbhmrKdOJ62//GfreJsyaWw
nYXtlk7UFCVSSNpAlj6KeazG3ySpvsPARbSw7rVBZlwuxyyVaNShIrT4xyocuG+decy0RByiaxY3
VVhRV6XM/SqfxlhSmSAQ5c9iR+Z7Of4EW3OPW3xuRiFX3j2RMmv7RZJ+grM24tWBNfD7vubT/uYx
LHeqF03tFF/s6jlupPE6Ss6Jdt/rNxPq1rM10viJa0v0aNFc/a7FhHHO9CmpZ3V18zUmudbd6mIi
itL0+u9Q5BeihF1Yk/zHxWnMDZ9bzZzebHRLl4tGiWOJMHyTnvLtg/uj

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fT9P0busnHFhNtVhuf1ATqDeNMlqjQwbhvf0x34wZd35mjARDv55SXpRz+pBacoaxyo8g70Zt6by
jhGGO95tzsD9Cq8TIfsQ2B4hmI5lT4QzHGYby6xuklbwvPhpcpNgdDV9apT+gdvPWZnNk+R5awyV
uNxQNzyZblMxkJinicsdHysCQjzYlps9O1mEE9ZZTZ6WH4+e+k1mrmPmUBBazuWMZ2/cw7t9XbZT
/zm9meBtxtVaA35lu3qeM0Of8DV+54hnAG4sYgN9RRwmHgxE//V5fc/cyV6/fVWSrBIACq6lNplr
Gs0JTuAQrPaxxhx39ruQXEKIuc1vtVdzAuNhSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pwVX21pqNfxup18vS3xEpl3PSey19dSEYcPiGoRa6YZMC/zYz44w0LhNVs9JUfR5Rxw6KHc3ugcN
6I0cH92mfvaMy8bbfnQ6qHhCko6L03wR32nIDBo2eTFHkvHM7YCrRVObSkdXsEzp9l/D2qH4hI4L
zKS0LBRDjE2afnmjsYmXEhIakcJw7lmw62SmGO8BGQIpDNi+5DynTpTz/Pcu3rW3BI0/7XRSFA4Q
Ntqj43kisBi9epra/dLhLoxmohyM+/Tg8m/62WfFzzWb9w1JDg2QTw/xLzX869zK856tza6hZnnr
ulH6sBLz/MpBtW83rBEM7LAdpCQpljcYYWwi4g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
55aHO2/dXeR1zRUrqTn+DQlN9sWEYFDIPXIUmhWXG6vdPRI9MHuQDH5IvyyOIfw3J6qQpd9Fo7bY
iILeZlilM2YETjKjlncfxJWzAfKK4KtjxJIi7cpPRXS4ygWnS3bikeXYAvZBkv1oUzCfmRWY0/8U
/9MUtk56XDttmLISOovcKUJK5uvXDMh/nXrUpJpif2nzWPfZ7wk3w9XQ2tkO6gOvykSU5kIhrlre
pycVJu9oaIGVxUezoyl/22matV066O487kcLzHiVUd2TU3GCHLKbazkjh+VlRNsMSkvY3hp2/6OA
Rg9f8OVzfhFUBgw5s2zb63IqL29QZPGHtou3Dw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15888)
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
