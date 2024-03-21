// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Feb 15 18:13:00 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/butterfly/butterfly.gen/sources_1/ip/x0_real_adder/x0_real_adder_sim_netlist.v
// Design      : x0_real_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "x0_real_adder,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module x0_real_adder
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
  (* c_add_mode = "0" *) 
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
  x0_real_adder_c_addsub_v12_0_14 U0
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
dQEPcqUNDR19tEotVvg4QmWhauHUVXZufdRdcC/dc2Yxxwg7V/r13wDB02OTJZilcyhi+4968DgS
p9/5ZV0Y02XGSvfM+hpiUsGdjR6XI1X30AiuUNrMdHBb1vv+PIqoX826GBuzJUlQcc0buIgs2NdG
EWLka26ohyRPqlpQiq9iZ6xfJWYuNUPNoOmB8FeVxPMMiEBtIlW8+OniZRugsjeVSeCDo8ycVi2W
qFTri0daFLgu6EKhbLsEZIov4S80OsrdnZl2PJmkUxbGVR+dBFzSKvD11nAummXIfKpKNdvxHMmO
tNQk3j0X7/9HnsF2fxXVg016LRw+0jrxlZP+cw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TMdb0Rk2RHL8BuEaO++rgOO8YsXiJgLoavStLwz5//u7SJ91WTILLiC6MKrVLrP6+Tbyilsdu4Ic
NLVizQNdXaP7VZM1W5sSbya6ayNbHV3K/kxa/6tzQuWA+Ilyo+47hxVSUlsR9/p1d/r7+L/3q8EF
bidJsxIsuisBAoh5KHx7iVqfNsAVqRgx7W+gJ51QjWZ7Ng5BTZe7o+YpScSpLGHS3TvWVJlbf9rO
s/5a54RZfMAj0aOOJVx97XKLZM8pDcqbvkk4CPCokqu/T0WNovfHKbtsJNGNUjsJ5RQwhtYwld33
LvSaIyjLELg14dTuwbm/u82eCuMeKH4njt+FSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15264)
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
