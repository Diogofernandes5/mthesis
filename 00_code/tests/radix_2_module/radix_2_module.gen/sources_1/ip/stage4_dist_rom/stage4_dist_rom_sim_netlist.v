// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Mar 27 14:45:29 2024
// Host        : fernandes420 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/tests/radix_2_module/radix_2_module.gen/sources_1/ip/stage4_dist_rom/stage4_dist_rom_sim_netlist.v
// Design      : stage4_dist_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "stage4_dist_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module stage4_dist_rom
   (a,
    clk,
    spo);
  input [3:0]a;
  input clk;
  output [27:0]spo;

  wire \<const0> ;
  wire [3:0]a;
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
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "stage4_dist_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "1" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "28" *) 
  (* is_du_within_envelope = "true" *) 
  stage4_dist_rom_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[27:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10688)
`pragma protect data_block
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
8P9HGGmrFevm4huJcDTFYfFFHO4jJIGqN8Lxbb4=
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
