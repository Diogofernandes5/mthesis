// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Mar  7 17:54:36 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/demux2_0/demux2_0_sim_netlist.v
// Design      : demux2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "demux2_0,demux2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "demux2,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module demux2_0
   (d,
    s,
    y0,
    y1);
  input [31:0]d;
  input s;
  output [31:0]y0;
  output [31:0]y1;

  wire [31:0]d;
  wire s;
  wire [31:0]y0;
  wire [31:0]y1;

  demux2_0_demux2 inst
       (.d(d),
        .s(s),
        .y0(y0),
        .y1(y1));
endmodule

(* ORIG_REF_NAME = "demux2" *) 
module demux2_0_demux2
   (y1,
    y0,
    s,
    d);
  output [31:0]y1;
  output [31:0]y0;
  input s;
  input [31:0]d;

  wire [31:0]d;
  wire s;
  wire [31:0]y0;
  wire [31:0]y1;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[0]_INST_0 
       (.I0(d[0]),
        .I1(s),
        .O(y0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[10]_INST_0 
       (.I0(d[10]),
        .I1(s),
        .O(y0[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[11]_INST_0 
       (.I0(d[11]),
        .I1(s),
        .O(y0[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[12]_INST_0 
       (.I0(d[12]),
        .I1(s),
        .O(y0[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[13]_INST_0 
       (.I0(d[13]),
        .I1(s),
        .O(y0[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[14]_INST_0 
       (.I0(d[14]),
        .I1(s),
        .O(y0[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[15]_INST_0 
       (.I0(d[15]),
        .I1(s),
        .O(y0[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[16]_INST_0 
       (.I0(d[16]),
        .I1(s),
        .O(y0[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[17]_INST_0 
       (.I0(d[17]),
        .I1(s),
        .O(y0[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[18]_INST_0 
       (.I0(d[18]),
        .I1(s),
        .O(y0[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[19]_INST_0 
       (.I0(d[19]),
        .I1(s),
        .O(y0[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[1]_INST_0 
       (.I0(d[1]),
        .I1(s),
        .O(y0[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[20]_INST_0 
       (.I0(d[20]),
        .I1(s),
        .O(y0[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[21]_INST_0 
       (.I0(d[21]),
        .I1(s),
        .O(y0[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[22]_INST_0 
       (.I0(d[22]),
        .I1(s),
        .O(y0[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[23]_INST_0 
       (.I0(d[23]),
        .I1(s),
        .O(y0[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[24]_INST_0 
       (.I0(d[24]),
        .I1(s),
        .O(y0[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[25]_INST_0 
       (.I0(d[25]),
        .I1(s),
        .O(y0[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[26]_INST_0 
       (.I0(d[26]),
        .I1(s),
        .O(y0[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[27]_INST_0 
       (.I0(d[27]),
        .I1(s),
        .O(y0[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[28]_INST_0 
       (.I0(d[28]),
        .I1(s),
        .O(y0[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[29]_INST_0 
       (.I0(d[29]),
        .I1(s),
        .O(y0[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[2]_INST_0 
       (.I0(d[2]),
        .I1(s),
        .O(y0[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[30]_INST_0 
       (.I0(d[30]),
        .I1(s),
        .O(y0[30]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[31]_INST_0 
       (.I0(d[31]),
        .I1(s),
        .O(y0[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[3]_INST_0 
       (.I0(d[3]),
        .I1(s),
        .O(y0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[4]_INST_0 
       (.I0(d[4]),
        .I1(s),
        .O(y0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[5]_INST_0 
       (.I0(d[5]),
        .I1(s),
        .O(y0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[6]_INST_0 
       (.I0(d[6]),
        .I1(s),
        .O(y0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[7]_INST_0 
       (.I0(d[7]),
        .I1(s),
        .O(y0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[8]_INST_0 
       (.I0(d[8]),
        .I1(s),
        .O(y0[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y0[9]_INST_0 
       (.I0(d[9]),
        .I1(s),
        .O(y0[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[0]_INST_0 
       (.I0(s),
        .I1(d[0]),
        .O(y1[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[10]_INST_0 
       (.I0(s),
        .I1(d[10]),
        .O(y1[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[11]_INST_0 
       (.I0(s),
        .I1(d[11]),
        .O(y1[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[12]_INST_0 
       (.I0(s),
        .I1(d[12]),
        .O(y1[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[13]_INST_0 
       (.I0(s),
        .I1(d[13]),
        .O(y1[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[14]_INST_0 
       (.I0(s),
        .I1(d[14]),
        .O(y1[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[15]_INST_0 
       (.I0(s),
        .I1(d[15]),
        .O(y1[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[16]_INST_0 
       (.I0(s),
        .I1(d[16]),
        .O(y1[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[17]_INST_0 
       (.I0(s),
        .I1(d[17]),
        .O(y1[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[18]_INST_0 
       (.I0(s),
        .I1(d[18]),
        .O(y1[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[19]_INST_0 
       (.I0(s),
        .I1(d[19]),
        .O(y1[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[1]_INST_0 
       (.I0(s),
        .I1(d[1]),
        .O(y1[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[20]_INST_0 
       (.I0(s),
        .I1(d[20]),
        .O(y1[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[21]_INST_0 
       (.I0(s),
        .I1(d[21]),
        .O(y1[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[22]_INST_0 
       (.I0(s),
        .I1(d[22]),
        .O(y1[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[23]_INST_0 
       (.I0(s),
        .I1(d[23]),
        .O(y1[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[24]_INST_0 
       (.I0(s),
        .I1(d[24]),
        .O(y1[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[25]_INST_0 
       (.I0(s),
        .I1(d[25]),
        .O(y1[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[26]_INST_0 
       (.I0(s),
        .I1(d[26]),
        .O(y1[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[27]_INST_0 
       (.I0(s),
        .I1(d[27]),
        .O(y1[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[28]_INST_0 
       (.I0(s),
        .I1(d[28]),
        .O(y1[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[29]_INST_0 
       (.I0(s),
        .I1(d[29]),
        .O(y1[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[2]_INST_0 
       (.I0(s),
        .I1(d[2]),
        .O(y1[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[30]_INST_0 
       (.I0(s),
        .I1(d[30]),
        .O(y1[30]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[31]_INST_0 
       (.I0(s),
        .I1(d[31]),
        .O(y1[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[3]_INST_0 
       (.I0(s),
        .I1(d[3]),
        .O(y1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[4]_INST_0 
       (.I0(s),
        .I1(d[4]),
        .O(y1[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[5]_INST_0 
       (.I0(s),
        .I1(d[5]),
        .O(y1[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[6]_INST_0 
       (.I0(s),
        .I1(d[6]),
        .O(y1[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[7]_INST_0 
       (.I0(s),
        .I1(d[7]),
        .O(y1[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[8]_INST_0 
       (.I0(s),
        .I1(d[8]),
        .O(y1[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y1[9]_INST_0 
       (.I0(s),
        .I1(d[9]),
        .O(y1[9]));
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
