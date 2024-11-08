// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Nov  8 01:09:08 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top shift_right_fractional_len -prefix
//               shift_right_fractional_len_ shift_right_fractional_len_sim_netlist.v
// Design      : shift_right_fractional_len
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module shift_right_fractional_len_shift_right
   (data_out,
    data_in);
  output [24:0]data_out;
  input [23:0]data_in;

  wire [23:0]data_in;
  wire [24:0]data_out;
  wire \data_out[0]_INST_0_i_1_n_0 ;
  wire \data_out[0]_INST_0_n_0 ;
  wire \data_out[0]_INST_0_n_1 ;
  wire \data_out[0]_INST_0_n_2 ;
  wire \data_out[0]_INST_0_n_3 ;
  wire \data_out[12]_INST_0_n_0 ;
  wire \data_out[12]_INST_0_n_1 ;
  wire \data_out[12]_INST_0_n_2 ;
  wire \data_out[12]_INST_0_n_3 ;
  wire \data_out[16]_INST_0_n_0 ;
  wire \data_out[16]_INST_0_n_1 ;
  wire \data_out[16]_INST_0_n_2 ;
  wire \data_out[16]_INST_0_n_3 ;
  wire \data_out[20]_INST_0_n_0 ;
  wire \data_out[20]_INST_0_n_1 ;
  wire \data_out[20]_INST_0_n_2 ;
  wire \data_out[20]_INST_0_n_3 ;
  wire \data_out[4]_INST_0_n_0 ;
  wire \data_out[4]_INST_0_n_1 ;
  wire \data_out[4]_INST_0_n_2 ;
  wire \data_out[4]_INST_0_n_3 ;
  wire \data_out[8]_INST_0_n_0 ;
  wire \data_out[8]_INST_0_n_1 ;
  wire \data_out[8]_INST_0_n_2 ;
  wire \data_out[8]_INST_0_n_3 ;
  wire [3:1]\NLW_data_out[24]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_out[24]_INST_0_O_UNCONNECTED ;

  CARRY4 \data_out[0]_INST_0 
       (.CI(1'b0),
        .CO({\data_out[0]_INST_0_n_0 ,\data_out[0]_INST_0_n_1 ,\data_out[0]_INST_0_n_2 ,\data_out[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_in[0]}),
        .O(data_out[3:0]),
        .S({data_in[3:1],\data_out[0]_INST_0_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[0]_INST_0_i_1 
       (.I0(data_in[0]),
        .I1(data_in[23]),
        .O(\data_out[0]_INST_0_i_1_n_0 ));
  CARRY4 \data_out[12]_INST_0 
       (.CI(\data_out[8]_INST_0_n_0 ),
        .CO({\data_out[12]_INST_0_n_0 ,\data_out[12]_INST_0_n_1 ,\data_out[12]_INST_0_n_2 ,\data_out[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out[15:12]),
        .S(data_in[15:12]));
  CARRY4 \data_out[16]_INST_0 
       (.CI(\data_out[12]_INST_0_n_0 ),
        .CO({\data_out[16]_INST_0_n_0 ,\data_out[16]_INST_0_n_1 ,\data_out[16]_INST_0_n_2 ,\data_out[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out[19:16]),
        .S(data_in[19:16]));
  CARRY4 \data_out[20]_INST_0 
       (.CI(\data_out[16]_INST_0_n_0 ),
        .CO({\data_out[20]_INST_0_n_0 ,\data_out[20]_INST_0_n_1 ,\data_out[20]_INST_0_n_2 ,\data_out[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out[23:20]),
        .S(data_in[23:20]));
  CARRY4 \data_out[24]_INST_0 
       (.CI(\data_out[20]_INST_0_n_0 ),
        .CO({\NLW_data_out[24]_INST_0_CO_UNCONNECTED [3:1],data_out[24]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out[24]_INST_0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \data_out[4]_INST_0 
       (.CI(\data_out[0]_INST_0_n_0 ),
        .CO({\data_out[4]_INST_0_n_0 ,\data_out[4]_INST_0_n_1 ,\data_out[4]_INST_0_n_2 ,\data_out[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out[7:4]),
        .S(data_in[7:4]));
  CARRY4 \data_out[8]_INST_0 
       (.CI(\data_out[4]_INST_0_n_0 ),
        .CO({\data_out[8]_INST_0_n_0 ,\data_out[8]_INST_0_n_1 ,\data_out[8]_INST_0_n_2 ,\data_out[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out[11:8]),
        .S(data_in[11:8]));
endmodule

(* CHECK_LICENSE_TYPE = "shift_right_fractional_len,shift_right,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "shift_right,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module shift_right_fractional_len
   (data_in,
    data_out);
  input [31:0]data_in;
  output [31:0]data_out;

  wire \<const0> ;
  wire [31:0]data_in;
  wire [24:0]\^data_out ;

  assign data_out[31] = \<const0> ;
  assign data_out[30] = \<const0> ;
  assign data_out[29] = \<const0> ;
  assign data_out[28] = \<const0> ;
  assign data_out[27] = \<const0> ;
  assign data_out[26] = \<const0> ;
  assign data_out[25] = \<const0> ;
  assign data_out[24:0] = \^data_out [24:0];
  GND GND
       (.G(\<const0> ));
  shift_right_fractional_len_shift_right inst
       (.data_in(data_in[31:8]),
        .data_out(\^data_out ));
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
