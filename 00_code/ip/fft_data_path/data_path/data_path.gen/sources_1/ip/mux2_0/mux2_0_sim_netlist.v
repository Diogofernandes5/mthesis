// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar  7 17:55:37 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top mux2_0 -prefix
//               mux2_0_ mux2_0_sim_netlist.v
// Design      : mux2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux2_0_mux2
   (y,
    d1,
    d0,
    s);
  output [31:0]y;
  input [31:0]d1;
  input [31:0]d0;
  input s;

  wire [31:0]d0;
  wire [31:0]d1;
  wire s;
  wire [31:0]y;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[0]_INST_0 
       (.I0(d1[0]),
        .I1(d0[0]),
        .I2(s),
        .O(y[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[10]_INST_0 
       (.I0(d1[10]),
        .I1(d0[10]),
        .I2(s),
        .O(y[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[11]_INST_0 
       (.I0(d1[11]),
        .I1(d0[11]),
        .I2(s),
        .O(y[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[12]_INST_0 
       (.I0(d1[12]),
        .I1(d0[12]),
        .I2(s),
        .O(y[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[13]_INST_0 
       (.I0(d1[13]),
        .I1(d0[13]),
        .I2(s),
        .O(y[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[14]_INST_0 
       (.I0(d1[14]),
        .I1(d0[14]),
        .I2(s),
        .O(y[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[15]_INST_0 
       (.I0(d1[15]),
        .I1(d0[15]),
        .I2(s),
        .O(y[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[16]_INST_0 
       (.I0(d1[16]),
        .I1(d0[16]),
        .I2(s),
        .O(y[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[17]_INST_0 
       (.I0(d1[17]),
        .I1(d0[17]),
        .I2(s),
        .O(y[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[18]_INST_0 
       (.I0(d1[18]),
        .I1(d0[18]),
        .I2(s),
        .O(y[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[19]_INST_0 
       (.I0(d1[19]),
        .I1(d0[19]),
        .I2(s),
        .O(y[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[1]_INST_0 
       (.I0(d1[1]),
        .I1(d0[1]),
        .I2(s),
        .O(y[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[20]_INST_0 
       (.I0(d1[20]),
        .I1(d0[20]),
        .I2(s),
        .O(y[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[21]_INST_0 
       (.I0(d1[21]),
        .I1(d0[21]),
        .I2(s),
        .O(y[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[22]_INST_0 
       (.I0(d1[22]),
        .I1(d0[22]),
        .I2(s),
        .O(y[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[23]_INST_0 
       (.I0(d1[23]),
        .I1(d0[23]),
        .I2(s),
        .O(y[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[24]_INST_0 
       (.I0(d1[24]),
        .I1(d0[24]),
        .I2(s),
        .O(y[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[25]_INST_0 
       (.I0(d1[25]),
        .I1(d0[25]),
        .I2(s),
        .O(y[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[26]_INST_0 
       (.I0(d1[26]),
        .I1(d0[26]),
        .I2(s),
        .O(y[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[27]_INST_0 
       (.I0(d1[27]),
        .I1(d0[27]),
        .I2(s),
        .O(y[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[28]_INST_0 
       (.I0(d1[28]),
        .I1(d0[28]),
        .I2(s),
        .O(y[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[29]_INST_0 
       (.I0(d1[29]),
        .I1(d0[29]),
        .I2(s),
        .O(y[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[2]_INST_0 
       (.I0(d1[2]),
        .I1(d0[2]),
        .I2(s),
        .O(y[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[30]_INST_0 
       (.I0(d1[30]),
        .I1(d0[30]),
        .I2(s),
        .O(y[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[31]_INST_0 
       (.I0(d1[31]),
        .I1(d0[31]),
        .I2(s),
        .O(y[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[3]_INST_0 
       (.I0(d1[3]),
        .I1(d0[3]),
        .I2(s),
        .O(y[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[4]_INST_0 
       (.I0(d1[4]),
        .I1(d0[4]),
        .I2(s),
        .O(y[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[5]_INST_0 
       (.I0(d1[5]),
        .I1(d0[5]),
        .I2(s),
        .O(y[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[6]_INST_0 
       (.I0(d1[6]),
        .I1(d0[6]),
        .I2(s),
        .O(y[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[7]_INST_0 
       (.I0(d1[7]),
        .I1(d0[7]),
        .I2(s),
        .O(y[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[8]_INST_0 
       (.I0(d1[8]),
        .I1(d0[8]),
        .I2(s),
        .O(y[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[9]_INST_0 
       (.I0(d1[9]),
        .I1(d0[9]),
        .I2(s),
        .O(y[9]));
endmodule

(* CHECK_LICENSE_TYPE = "mux2_0,mux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "mux2,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module mux2_0
   (d0,
    d1,
    s,
    y);
  input [31:0]d0;
  input [31:0]d1;
  input s;
  output [31:0]y;

  wire [31:0]d0;
  wire [31:0]d1;
  wire s;
  wire [31:0]y;

  mux2_0_mux2 inst
       (.d0(d0),
        .d1(d1),
        .s(s),
        .y(y));
endmodule
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
