// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Mar 27 14:47:09 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/stage5_dist_mem/stage5_dist_mem_sim_netlist.v
// Design      : stage5_dist_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "stage5_dist_mem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module stage5_dist_mem
   (a,
    clk,
    spo);
  input [4:0]a;
  input clk;
  output [27:0]spo;

  wire \<const0> ;
  wire [4:0]a;
  wire clk;
  wire [27:0]\^spo ;
  wire [27:0]NLW_U0_dpo_UNCONNECTED;
  wire [27:0]NLW_U0_qdpo_UNCONNECTED;
  wire [27:0]NLW_U0_qspo_UNCONNECTED;
  wire [15:13]NLW_U0_spo_UNCONNECTED;

  assign spo[27:16] = \^spo [27:16];
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12:0] = \^spo [12:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "5" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "stage5_dist_mem.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "1" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "28" *) 
  (* is_du_within_envelope = "true" *) 
  stage5_dist_mem_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[27:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[27:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[27:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JqLVJNxQZkLohSEqQ9ITFybNm9QPcaTh8kyc7h4uGNwD1GaEe9dZHqj61sUilGTlF+FUk7afNjXe
+9yQ4e75SyWC3Z6F0o0CdI6t84E2VRqNvne6PMLMbSrRPmTgt8cbodbZa3saUKncQltVwK/zTxXc
dXyeIJwoVnylCRZ8MPU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RMR60V/K16S3hDpcgdlFzH6vzNttFBxzcEIP9k8l6xLxOXzEGeRk2beZg3IkkpX9ywpiLolj/ijd
pAlaBccK0sBT48q6qTKLouly7vRT3U8EOwOAJBZoDUnL/NwrlIomkg8Pj/4x8iecc9IFkdcLg53k
dreGnJ/4ti8Qi6sHP5Vsy0qpJoYpWsOBc2cmgH9vayWn6WlV7QL8YjnFQ6bQnWuyarN2QQK+bLzc
JrPAdTBzH05U9MiHwKRG1GlZxJA5fxQttnLA39Nwggz6r5qeYai4Vo+J8h0NQDa/GYHeYKSYsF9p
VKrYe14mz3CSYvF3+NMCtnCz+VeW7lF95iKCXA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k6iMAgjYok8KaQLMY/TME6/aSCYTKFMZWtHwbD2VKIKOoM9woUSioI0NuiYfkPizuiBJEl8Af3NJ
M5VmpW3SVM0lwPjVSCSNmHMIfc2krrmg962M4XaG4w+tnp7hwZbdNZ8ahj6pOLDYSTGKwdGQanuk
rIQbC+15rT9WEK2XGDQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lHyAdhaPyzMCy12MalQZTt5ud3be/nityQmJ518pNrYUzgCs2nz/J1pZZgf+RWFgX9JUwWOgttjl
3vfihnzL/+pRWaWe8tlTToa5xX6V/jpw3hAcktXx9YKYreiOr2qpeTLkbp0k6MDPx0OZ6zF6OnXU
mj71WlXFOMXCx/95ZDxCuphivrOiA+pFZwGv2NIFmX/Oh4q8NTSFzJYzF3L9rWrI08UUEu9QuuxY
Iqlhuw+fXq//x9+jC7JNcedTSCXVkefBvZdJcbH0kbNA5ChG445apiF/OiKhKxTUjVKp7Rkm62fE
cFEo6KH1Cp+QaVxNQ55dcOTpVSSDpQGvshrQzw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D53lVPGhmka10zY9LQFvI7i1UPoiOm2NaQ+1PpDUs4OCbAMqPLHQSHIZ3EMPWpwgdfAtW9t+9lxl
o33XZq60DBUJ4ZKPRvcfbZCHmpPyjm3Rs8+ACxnIH7G37stehOSCzSXeqM9ORqajk0MjoE3bDLx9
FtW+eEPY1KauFU6KHAWAdaZPPnc5QfgBkK0c27Y7CfkJ049Sjv4lFwtiVOmSkCvdDDisv3/WAcSs
c5Zo+cJIWzw/prfWYTGIB0goZNZRXZpB/aULwQ5itLufopA2f9cHo50fqlIvQX4YoYlfQTXpj3Lj
Qd+7/1UmFCqQLsnOUXy9D/tgspVDu7POGbmsiA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bN8g8/EQJ5JNLmcuNioMXeo6xxPhQlbGMqXyUcnPTkqRMGYI+G4Ejpt9cT2XLx48MsTE+bzhGByG
1H1pqr4NO588pcozvxJ5bo7FJRCIhLP1e3pwipkX+z6IlClWyStmkrlQmh4o/jTM/s88Fv0m7FSH
jNd3hhAeYNPIdw9Btn4UcBuZre9QZnCZ+Qb3nW7FuuEd1RxTmP0y9EFC185+bRy+SMigW3FTt75l
qdmakEvm3BkGv3IiztGz6MLRqvBdHQYtaZ17Jeh1xGZ//F4QzRytN/lcdqSrZA6MOo1ObtGE9SFJ
SDo82E2CZlkQZfPVe6EC4/a7V7wIwES5EDHHnw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ewjro/5A8FySdAgSJfHQFGxdnPvtSB6vt25wsSfZkZlB9FCU7IhXRDEGCyqtZv1GE8Vi5CjQkNFt
lkkrCSRYIU5yoD/IUiSUo3oerXD+F7eyfUTsdMH8pyAOmszG4J/U4h2F0oGz4IGjnQhlKadatt3U
Pet1uDdo6p7Uz7fluWoE453v5O5Ag7QL3l2r7pK9QbtKW2b2ZgHI0FP1PfpuAESmBITtaB68uLNI
9IqIpc/l+MM956Gz3Ei4nFXbBqRkNnOoEIr1KKujTAkLJl3zAW45fRxt/SNdspyyOfwqw8HQ4aKl
7gQZLNfO7M9S9RaTP7tfDlNXrjIs40/SiH7VMA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
BU7byHg11K8bY2oU9sv2hTEzfbBQxIL/wbPRcw3zRiIVklygkCLwToVotzcIxQi5+AgzzF89UJr5
6GTSf74dEO/L+7MiiVhop835AvOvvIFH3e15os3Ed8MZ/CykLdSs8kOVPSgygUECxKL/9FDmPOPu
fo2rClbqDh81jw/cX48EVuss3UxP/PNd7DI06TMx7v4Cwbv+pkvbuSJ9JUQBcJB2a2vbXuFSdPnT
ejL1XTVXeTbl2M6D7N0iqk4rwD1DAC1ao/d+axn50hvVPzigrvjqcQX/U1IENh7yF/bcNB1NT4d2
IdXJlmV2SEYwQNjb9ZTuSLUlehhVKrT3vH5zFJC80glrrjZK2l4tx9ZECJLmYjz00oxWf1dNVI0i
SuSyr3w6cWekzZQOv6vsFN+CRqWOkos5IUF5EaLFMFmcV5BtlgtZ9rm6OCo3zn726oQF5zZNaTBv
qrb5vLe4ELSA4fL4YBwiVDxVDpGpLzJNu+m6WS/V5oWJs1UQV1sRHSGu

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dAIafnl1hEJ76Z8bYZlZKSAU+OyCQ2PwlK+IUKj9QNvxJJYU8c0z5dZmxP4ePLBS+vp0Lekmf+JK
ZmwpMP0AH+BW93Y8Y+QNBeNdszz6mwXF1zf7ZAzf+51PzoZEli3SBCs9JMOdSCtnTg1W+j4FkEYs
NWN3ZK6tfrYSbplsV4lsmoYu2c81xW2Ns3lV8YRQCE8VSADdb1pe8pEztQYXzBmAfCVgwFNJ1kXV
pEtDN1MRi07FvYZeUJ/cX+ebYB0p5w0vxVO4vSr0XOHKMcQkxb/64oEoe4AhHQNWURWYKDxNNzm+
jElAKl1fJL20OmItj+GmJlETFK09uAgqwtZ5HQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11584)
`pragma protect data_block
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
QJQXzE0bt0hlxsLIBQ==
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
