// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Feb 16 09:51:33 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/butterfly/butterfly.gen/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

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
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_addsub_0_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
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
Fmh9t4u7OHMqigX532VLIOJriMZwzHNraVXM1KECiC7dhBSFy7kMh/G8ukte72T6CXfDKRvLrmTM
oFZqSzRaq8hLO/4DMwNEF4VVX9ITwrwKOGmbciJDVsbR6EHwqyeFRYDinpFNelDIlXQFw1hIL6DQ
Np0hi825H+H8l0YxSGiN7RLlGRMWpbLyllaep+H4Q06tE3FgUK1gkrjD1Zmqpl48oWnzE91Snzmm
ET7lUW4pcfaJ+NH41pR1T5wI3tRBXC56fnEKZj2v/KEk5i/PLMxi+5Sge9WXq+WPmOLkEng50vdi
xYGsp482NvS1o/4Hg2nH0mc7fFP7VkxM0RTk8w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S2PkfqXd8nlniXTkgDVeB51zusBxJ0DXT4I+qjIho/OPenBIvQonQwDhaOurlc6Bw6ddesVh3EyI
Pv7tcitlCqAYLqx2T/t6GvZYtMVSSNa048RG2UnC6CXvdq5G+wSOLZqfzIjBl50B6VlCwnv1LsYP
u1fedYFF9opKlRZsHVoFUeoE37JJyy7KumdhASj5X0HnOOAJwYpcJwuxUgJq59ubWYEwvugqgSpA
kNclOFYDyA1gD2UjivUXa8nznGOCOeMTsh13vYyVE0azidA/xwLJqXtI22yIS+imoaP45hg67lxZ
TvLieHBncjG9lX0gRlgBBRf7hC5VDXTb7BgZnw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15232)
`pragma protect data_block
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
aa+/oQj4QNBLzPJllw==
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
