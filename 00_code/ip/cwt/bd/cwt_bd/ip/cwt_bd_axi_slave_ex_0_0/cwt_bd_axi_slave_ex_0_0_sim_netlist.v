// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Mar 28 16:27:05 2025
// Host        : fernandes420 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fernandes/thesis/00_code/ip/cwt/bd/cwt_bd/ip/cwt_bd_axi_slave_ex_0_0/cwt_bd_axi_slave_ex_0_0_sim_netlist.v
// Design      : cwt_bd_axi_slave_ex_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cwt_bd_axi_slave_ex_0_0,axi_slave_ex_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_slave_ex_v1_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module cwt_bd_axi_slave_ex_0_0
   (reg0,
    reg1,
    reg2,
    reg3,
    reg4,
    reg5,
    reg6,
    reg7,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  input [31:0]reg0;
  input [31:0]reg1;
  input [31:0]reg2;
  input [31:0]reg3;
  input [31:0]reg4;
  input [31:0]reg5;
  input [31:0]reg6;
  input [31:0]reg7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cwt_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cwt_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;

  wire \<const0> ;
  wire [31:0]reg0;
  wire [31:0]reg1;
  wire [31:0]reg2;
  wire [31:0]reg3;
  wire [31:0]reg4;
  wire [31:0]reg5;
  wire [31:0]reg6;
  wire [31:0]reg7;
  wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  cwt_bd_axi_slave_ex_0_0_axi_slave_ex_v1_0 inst
       (.reg0(reg0),
        .reg1(reg1),
        .reg2(reg2),
        .reg3(reg3),
        .reg4(reg4),
        .reg5(reg5),
        .reg6(reg6),
        .reg7(reg7),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_slave_ex_v1_0" *) 
module cwt_bd_axi_slave_ex_0_0_axi_slave_ex_v1_0
   (s_axi_wready,
    s_axi_awready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    reg0,
    reg1,
    reg2,
    reg3,
    reg4,
    reg5,
    reg6,
    reg7,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_wstrb,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output s_axi_wready;
  output s_axi_awready;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input [31:0]reg0;
  input [31:0]reg1;
  input [31:0]reg2;
  input [31:0]reg3;
  input [31:0]reg4;
  input [31:0]reg5;
  input [31:0]reg6;
  input [31:0]reg7;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire axi_slave_ex_v1_0_S_AXI_inst_n_1;
  wire [31:0]reg0;
  wire [31:0]reg0_r;
  wire [31:0]reg1;
  wire [31:0]reg1_r;
  wire [31:0]reg2;
  wire [31:0]reg2_r;
  wire [31:0]reg3;
  wire [31:0]reg3_r;
  wire [31:0]reg4;
  wire [31:0]reg4_r;
  wire [31:0]reg5;
  wire [31:0]reg5_r;
  wire [31:0]reg6;
  wire [31:0]reg6_r;
  wire [31:0]reg7;
  wire [31:0]reg7_r;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  cwt_bd_axi_slave_ex_0_0_axi_slave_ex_v1_0_S_AXI axi_slave_ex_v1_0_S_AXI_inst
       (.Q(reg3_r),
        .SR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .\axi_rdata_reg[31]_i_2_0 (reg2_r),
        .\axi_rdata_reg[31]_i_2_1 (reg1_r),
        .\axi_rdata_reg[31]_i_2_2 (reg0_r),
        .\axi_rdata_reg[31]_i_2_3 (reg7_r),
        .\axi_rdata_reg[31]_i_2_4 (reg6_r),
        .\axi_rdata_reg[31]_i_2_5 (reg5_r),
        .\axi_rdata_reg[31]_i_2_6 (reg4_r),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  FDCE \reg0_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[0]),
        .Q(reg0_r[0]));
  FDCE \reg0_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[10]),
        .Q(reg0_r[10]));
  FDCE \reg0_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[11]),
        .Q(reg0_r[11]));
  FDCE \reg0_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[12]),
        .Q(reg0_r[12]));
  FDCE \reg0_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[13]),
        .Q(reg0_r[13]));
  FDCE \reg0_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[14]),
        .Q(reg0_r[14]));
  FDCE \reg0_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[15]),
        .Q(reg0_r[15]));
  FDCE \reg0_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[16]),
        .Q(reg0_r[16]));
  FDCE \reg0_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[17]),
        .Q(reg0_r[17]));
  FDCE \reg0_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[18]),
        .Q(reg0_r[18]));
  FDCE \reg0_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[19]),
        .Q(reg0_r[19]));
  FDCE \reg0_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[1]),
        .Q(reg0_r[1]));
  FDCE \reg0_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[20]),
        .Q(reg0_r[20]));
  FDCE \reg0_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[21]),
        .Q(reg0_r[21]));
  FDCE \reg0_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[22]),
        .Q(reg0_r[22]));
  FDCE \reg0_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[23]),
        .Q(reg0_r[23]));
  FDCE \reg0_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[24]),
        .Q(reg0_r[24]));
  FDCE \reg0_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[25]),
        .Q(reg0_r[25]));
  FDCE \reg0_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[26]),
        .Q(reg0_r[26]));
  FDCE \reg0_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[27]),
        .Q(reg0_r[27]));
  FDCE \reg0_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[28]),
        .Q(reg0_r[28]));
  FDCE \reg0_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[29]),
        .Q(reg0_r[29]));
  FDCE \reg0_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[2]),
        .Q(reg0_r[2]));
  FDCE \reg0_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[30]),
        .Q(reg0_r[30]));
  FDCE \reg0_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[31]),
        .Q(reg0_r[31]));
  FDCE \reg0_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[3]),
        .Q(reg0_r[3]));
  FDCE \reg0_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[4]),
        .Q(reg0_r[4]));
  FDCE \reg0_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[5]),
        .Q(reg0_r[5]));
  FDCE \reg0_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[6]),
        .Q(reg0_r[6]));
  FDCE \reg0_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[7]),
        .Q(reg0_r[7]));
  FDCE \reg0_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[8]),
        .Q(reg0_r[8]));
  FDCE \reg0_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg0[9]),
        .Q(reg0_r[9]));
  FDCE \reg1_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[0]),
        .Q(reg1_r[0]));
  FDCE \reg1_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[10]),
        .Q(reg1_r[10]));
  FDCE \reg1_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[11]),
        .Q(reg1_r[11]));
  FDCE \reg1_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[12]),
        .Q(reg1_r[12]));
  FDCE \reg1_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[13]),
        .Q(reg1_r[13]));
  FDCE \reg1_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[14]),
        .Q(reg1_r[14]));
  FDCE \reg1_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[15]),
        .Q(reg1_r[15]));
  FDCE \reg1_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[16]),
        .Q(reg1_r[16]));
  FDCE \reg1_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[17]),
        .Q(reg1_r[17]));
  FDCE \reg1_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[18]),
        .Q(reg1_r[18]));
  FDCE \reg1_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[19]),
        .Q(reg1_r[19]));
  FDCE \reg1_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[1]),
        .Q(reg1_r[1]));
  FDCE \reg1_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[20]),
        .Q(reg1_r[20]));
  FDCE \reg1_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[21]),
        .Q(reg1_r[21]));
  FDCE \reg1_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[22]),
        .Q(reg1_r[22]));
  FDCE \reg1_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[23]),
        .Q(reg1_r[23]));
  FDCE \reg1_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[24]),
        .Q(reg1_r[24]));
  FDCE \reg1_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[25]),
        .Q(reg1_r[25]));
  FDCE \reg1_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[26]),
        .Q(reg1_r[26]));
  FDCE \reg1_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[27]),
        .Q(reg1_r[27]));
  FDCE \reg1_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[28]),
        .Q(reg1_r[28]));
  FDCE \reg1_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[29]),
        .Q(reg1_r[29]));
  FDCE \reg1_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[2]),
        .Q(reg1_r[2]));
  FDCE \reg1_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[30]),
        .Q(reg1_r[30]));
  FDCE \reg1_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[31]),
        .Q(reg1_r[31]));
  FDCE \reg1_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[3]),
        .Q(reg1_r[3]));
  FDCE \reg1_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[4]),
        .Q(reg1_r[4]));
  FDCE \reg1_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[5]),
        .Q(reg1_r[5]));
  FDCE \reg1_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[6]),
        .Q(reg1_r[6]));
  FDCE \reg1_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[7]),
        .Q(reg1_r[7]));
  FDCE \reg1_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[8]),
        .Q(reg1_r[8]));
  FDCE \reg1_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg1[9]),
        .Q(reg1_r[9]));
  FDCE \reg2_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[0]),
        .Q(reg2_r[0]));
  FDCE \reg2_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[10]),
        .Q(reg2_r[10]));
  FDCE \reg2_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[11]),
        .Q(reg2_r[11]));
  FDCE \reg2_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[12]),
        .Q(reg2_r[12]));
  FDCE \reg2_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[13]),
        .Q(reg2_r[13]));
  FDCE \reg2_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[14]),
        .Q(reg2_r[14]));
  FDCE \reg2_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[15]),
        .Q(reg2_r[15]));
  FDCE \reg2_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[16]),
        .Q(reg2_r[16]));
  FDCE \reg2_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[17]),
        .Q(reg2_r[17]));
  FDCE \reg2_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[18]),
        .Q(reg2_r[18]));
  FDCE \reg2_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[19]),
        .Q(reg2_r[19]));
  FDCE \reg2_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[1]),
        .Q(reg2_r[1]));
  FDCE \reg2_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[20]),
        .Q(reg2_r[20]));
  FDCE \reg2_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[21]),
        .Q(reg2_r[21]));
  FDCE \reg2_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[22]),
        .Q(reg2_r[22]));
  FDCE \reg2_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[23]),
        .Q(reg2_r[23]));
  FDCE \reg2_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[24]),
        .Q(reg2_r[24]));
  FDCE \reg2_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[25]),
        .Q(reg2_r[25]));
  FDCE \reg2_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[26]),
        .Q(reg2_r[26]));
  FDCE \reg2_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[27]),
        .Q(reg2_r[27]));
  FDCE \reg2_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[28]),
        .Q(reg2_r[28]));
  FDCE \reg2_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[29]),
        .Q(reg2_r[29]));
  FDCE \reg2_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[2]),
        .Q(reg2_r[2]));
  FDCE \reg2_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[30]),
        .Q(reg2_r[30]));
  FDCE \reg2_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[31]),
        .Q(reg2_r[31]));
  FDCE \reg2_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[3]),
        .Q(reg2_r[3]));
  FDCE \reg2_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[4]),
        .Q(reg2_r[4]));
  FDCE \reg2_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[5]),
        .Q(reg2_r[5]));
  FDCE \reg2_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[6]),
        .Q(reg2_r[6]));
  FDCE \reg2_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[7]),
        .Q(reg2_r[7]));
  FDCE \reg2_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[8]),
        .Q(reg2_r[8]));
  FDCE \reg2_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg2[9]),
        .Q(reg2_r[9]));
  FDCE \reg3_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[0]),
        .Q(reg3_r[0]));
  FDCE \reg3_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[10]),
        .Q(reg3_r[10]));
  FDCE \reg3_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[11]),
        .Q(reg3_r[11]));
  FDCE \reg3_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[12]),
        .Q(reg3_r[12]));
  FDCE \reg3_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[13]),
        .Q(reg3_r[13]));
  FDCE \reg3_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[14]),
        .Q(reg3_r[14]));
  FDCE \reg3_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[15]),
        .Q(reg3_r[15]));
  FDCE \reg3_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[16]),
        .Q(reg3_r[16]));
  FDCE \reg3_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[17]),
        .Q(reg3_r[17]));
  FDCE \reg3_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[18]),
        .Q(reg3_r[18]));
  FDCE \reg3_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[19]),
        .Q(reg3_r[19]));
  FDCE \reg3_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[1]),
        .Q(reg3_r[1]));
  FDCE \reg3_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[20]),
        .Q(reg3_r[20]));
  FDCE \reg3_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[21]),
        .Q(reg3_r[21]));
  FDCE \reg3_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[22]),
        .Q(reg3_r[22]));
  FDCE \reg3_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[23]),
        .Q(reg3_r[23]));
  FDCE \reg3_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[24]),
        .Q(reg3_r[24]));
  FDCE \reg3_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[25]),
        .Q(reg3_r[25]));
  FDCE \reg3_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[26]),
        .Q(reg3_r[26]));
  FDCE \reg3_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[27]),
        .Q(reg3_r[27]));
  FDCE \reg3_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[28]),
        .Q(reg3_r[28]));
  FDCE \reg3_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[29]),
        .Q(reg3_r[29]));
  FDCE \reg3_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[2]),
        .Q(reg3_r[2]));
  FDCE \reg3_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[30]),
        .Q(reg3_r[30]));
  FDCE \reg3_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[31]),
        .Q(reg3_r[31]));
  FDCE \reg3_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[3]),
        .Q(reg3_r[3]));
  FDCE \reg3_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[4]),
        .Q(reg3_r[4]));
  FDCE \reg3_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[5]),
        .Q(reg3_r[5]));
  FDCE \reg3_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[6]),
        .Q(reg3_r[6]));
  FDCE \reg3_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[7]),
        .Q(reg3_r[7]));
  FDCE \reg3_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[8]),
        .Q(reg3_r[8]));
  FDCE \reg3_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg3[9]),
        .Q(reg3_r[9]));
  FDCE \reg4_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[0]),
        .Q(reg4_r[0]));
  FDCE \reg4_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[10]),
        .Q(reg4_r[10]));
  FDCE \reg4_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[11]),
        .Q(reg4_r[11]));
  FDCE \reg4_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[12]),
        .Q(reg4_r[12]));
  FDCE \reg4_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[13]),
        .Q(reg4_r[13]));
  FDCE \reg4_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[14]),
        .Q(reg4_r[14]));
  FDCE \reg4_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[15]),
        .Q(reg4_r[15]));
  FDCE \reg4_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[16]),
        .Q(reg4_r[16]));
  FDCE \reg4_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[17]),
        .Q(reg4_r[17]));
  FDCE \reg4_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[18]),
        .Q(reg4_r[18]));
  FDCE \reg4_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[19]),
        .Q(reg4_r[19]));
  FDCE \reg4_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[1]),
        .Q(reg4_r[1]));
  FDCE \reg4_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[20]),
        .Q(reg4_r[20]));
  FDCE \reg4_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[21]),
        .Q(reg4_r[21]));
  FDCE \reg4_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[22]),
        .Q(reg4_r[22]));
  FDCE \reg4_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[23]),
        .Q(reg4_r[23]));
  FDCE \reg4_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[24]),
        .Q(reg4_r[24]));
  FDCE \reg4_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[25]),
        .Q(reg4_r[25]));
  FDCE \reg4_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[26]),
        .Q(reg4_r[26]));
  FDCE \reg4_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[27]),
        .Q(reg4_r[27]));
  FDCE \reg4_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[28]),
        .Q(reg4_r[28]));
  FDCE \reg4_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[29]),
        .Q(reg4_r[29]));
  FDCE \reg4_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[2]),
        .Q(reg4_r[2]));
  FDCE \reg4_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[30]),
        .Q(reg4_r[30]));
  FDCE \reg4_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[31]),
        .Q(reg4_r[31]));
  FDCE \reg4_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[3]),
        .Q(reg4_r[3]));
  FDCE \reg4_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[4]),
        .Q(reg4_r[4]));
  FDCE \reg4_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[5]),
        .Q(reg4_r[5]));
  FDCE \reg4_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[6]),
        .Q(reg4_r[6]));
  FDCE \reg4_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[7]),
        .Q(reg4_r[7]));
  FDCE \reg4_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[8]),
        .Q(reg4_r[8]));
  FDCE \reg4_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg4[9]),
        .Q(reg4_r[9]));
  FDCE \reg5_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[0]),
        .Q(reg5_r[0]));
  FDCE \reg5_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[10]),
        .Q(reg5_r[10]));
  FDCE \reg5_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[11]),
        .Q(reg5_r[11]));
  FDCE \reg5_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[12]),
        .Q(reg5_r[12]));
  FDCE \reg5_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[13]),
        .Q(reg5_r[13]));
  FDCE \reg5_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[14]),
        .Q(reg5_r[14]));
  FDCE \reg5_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[15]),
        .Q(reg5_r[15]));
  FDCE \reg5_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[16]),
        .Q(reg5_r[16]));
  FDCE \reg5_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[17]),
        .Q(reg5_r[17]));
  FDCE \reg5_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[18]),
        .Q(reg5_r[18]));
  FDCE \reg5_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[19]),
        .Q(reg5_r[19]));
  FDCE \reg5_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[1]),
        .Q(reg5_r[1]));
  FDCE \reg5_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[20]),
        .Q(reg5_r[20]));
  FDCE \reg5_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[21]),
        .Q(reg5_r[21]));
  FDCE \reg5_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[22]),
        .Q(reg5_r[22]));
  FDCE \reg5_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[23]),
        .Q(reg5_r[23]));
  FDCE \reg5_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[24]),
        .Q(reg5_r[24]));
  FDCE \reg5_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[25]),
        .Q(reg5_r[25]));
  FDCE \reg5_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[26]),
        .Q(reg5_r[26]));
  FDCE \reg5_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[27]),
        .Q(reg5_r[27]));
  FDCE \reg5_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[28]),
        .Q(reg5_r[28]));
  FDCE \reg5_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[29]),
        .Q(reg5_r[29]));
  FDCE \reg5_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[2]),
        .Q(reg5_r[2]));
  FDCE \reg5_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[30]),
        .Q(reg5_r[30]));
  FDCE \reg5_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[31]),
        .Q(reg5_r[31]));
  FDCE \reg5_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[3]),
        .Q(reg5_r[3]));
  FDCE \reg5_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[4]),
        .Q(reg5_r[4]));
  FDCE \reg5_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[5]),
        .Q(reg5_r[5]));
  FDCE \reg5_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[6]),
        .Q(reg5_r[6]));
  FDCE \reg5_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[7]),
        .Q(reg5_r[7]));
  FDCE \reg5_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[8]),
        .Q(reg5_r[8]));
  FDCE \reg5_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg5[9]),
        .Q(reg5_r[9]));
  FDCE \reg6_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[0]),
        .Q(reg6_r[0]));
  FDCE \reg6_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[10]),
        .Q(reg6_r[10]));
  FDCE \reg6_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[11]),
        .Q(reg6_r[11]));
  FDCE \reg6_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[12]),
        .Q(reg6_r[12]));
  FDCE \reg6_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[13]),
        .Q(reg6_r[13]));
  FDCE \reg6_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[14]),
        .Q(reg6_r[14]));
  FDCE \reg6_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[15]),
        .Q(reg6_r[15]));
  FDCE \reg6_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[16]),
        .Q(reg6_r[16]));
  FDCE \reg6_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[17]),
        .Q(reg6_r[17]));
  FDCE \reg6_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[18]),
        .Q(reg6_r[18]));
  FDCE \reg6_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[19]),
        .Q(reg6_r[19]));
  FDCE \reg6_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[1]),
        .Q(reg6_r[1]));
  FDCE \reg6_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[20]),
        .Q(reg6_r[20]));
  FDCE \reg6_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[21]),
        .Q(reg6_r[21]));
  FDCE \reg6_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[22]),
        .Q(reg6_r[22]));
  FDCE \reg6_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[23]),
        .Q(reg6_r[23]));
  FDCE \reg6_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[24]),
        .Q(reg6_r[24]));
  FDCE \reg6_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[25]),
        .Q(reg6_r[25]));
  FDCE \reg6_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[26]),
        .Q(reg6_r[26]));
  FDCE \reg6_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[27]),
        .Q(reg6_r[27]));
  FDCE \reg6_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[28]),
        .Q(reg6_r[28]));
  FDCE \reg6_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[29]),
        .Q(reg6_r[29]));
  FDCE \reg6_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[2]),
        .Q(reg6_r[2]));
  FDCE \reg6_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[30]),
        .Q(reg6_r[30]));
  FDCE \reg6_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[31]),
        .Q(reg6_r[31]));
  FDCE \reg6_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[3]),
        .Q(reg6_r[3]));
  FDCE \reg6_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[4]),
        .Q(reg6_r[4]));
  FDCE \reg6_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[5]),
        .Q(reg6_r[5]));
  FDCE \reg6_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[6]),
        .Q(reg6_r[6]));
  FDCE \reg6_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[7]),
        .Q(reg6_r[7]));
  FDCE \reg6_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[8]),
        .Q(reg6_r[8]));
  FDCE \reg6_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg6[9]),
        .Q(reg6_r[9]));
  FDCE \reg7_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[0]),
        .Q(reg7_r[0]));
  FDCE \reg7_r_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[10]),
        .Q(reg7_r[10]));
  FDCE \reg7_r_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[11]),
        .Q(reg7_r[11]));
  FDCE \reg7_r_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[12]),
        .Q(reg7_r[12]));
  FDCE \reg7_r_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[13]),
        .Q(reg7_r[13]));
  FDCE \reg7_r_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[14]),
        .Q(reg7_r[14]));
  FDCE \reg7_r_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[15]),
        .Q(reg7_r[15]));
  FDCE \reg7_r_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[16]),
        .Q(reg7_r[16]));
  FDCE \reg7_r_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[17]),
        .Q(reg7_r[17]));
  FDCE \reg7_r_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[18]),
        .Q(reg7_r[18]));
  FDCE \reg7_r_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[19]),
        .Q(reg7_r[19]));
  FDCE \reg7_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[1]),
        .Q(reg7_r[1]));
  FDCE \reg7_r_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[20]),
        .Q(reg7_r[20]));
  FDCE \reg7_r_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[21]),
        .Q(reg7_r[21]));
  FDCE \reg7_r_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[22]),
        .Q(reg7_r[22]));
  FDCE \reg7_r_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[23]),
        .Q(reg7_r[23]));
  FDCE \reg7_r_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[24]),
        .Q(reg7_r[24]));
  FDCE \reg7_r_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[25]),
        .Q(reg7_r[25]));
  FDCE \reg7_r_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[26]),
        .Q(reg7_r[26]));
  FDCE \reg7_r_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[27]),
        .Q(reg7_r[27]));
  FDCE \reg7_r_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[28]),
        .Q(reg7_r[28]));
  FDCE \reg7_r_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[29]),
        .Q(reg7_r[29]));
  FDCE \reg7_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[2]),
        .Q(reg7_r[2]));
  FDCE \reg7_r_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[30]),
        .Q(reg7_r[30]));
  FDCE \reg7_r_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[31]),
        .Q(reg7_r[31]));
  FDCE \reg7_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[3]),
        .Q(reg7_r[3]));
  FDCE \reg7_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[4]),
        .Q(reg7_r[4]));
  FDCE \reg7_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[5]),
        .Q(reg7_r[5]));
  FDCE \reg7_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[6]),
        .Q(reg7_r[6]));
  FDCE \reg7_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[7]),
        .Q(reg7_r[7]));
  FDCE \reg7_r_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[8]),
        .Q(reg7_r[8]));
  FDCE \reg7_r_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(axi_slave_ex_v1_0_S_AXI_inst_n_1),
        .D(reg7[9]),
        .Q(reg7_r[9]));
endmodule

(* ORIG_REF_NAME = "axi_slave_ex_v1_0_S_AXI" *) 
module cwt_bd_axi_slave_ex_0_0_axi_slave_ex_v1_0_S_AXI
   (s_axi_wready,
    SR,
    s_axi_awready,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_rvalid,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    Q,
    \axi_rdata_reg[31]_i_2_0 ,
    \axi_rdata_reg[31]_i_2_1 ,
    \axi_rdata_reg[31]_i_2_2 ,
    \axi_rdata_reg[31]_i_2_3 ,
    \axi_rdata_reg[31]_i_2_4 ,
    \axi_rdata_reg[31]_i_2_5 ,
    \axi_rdata_reg[31]_i_2_6 ,
    s_axi_wstrb);
  output s_axi_wready;
  output [0:0]SR;
  output s_axi_awready;
  output s_axi_arready;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input [31:0]Q;
  input [31:0]\axi_rdata_reg[31]_i_2_0 ;
  input [31:0]\axi_rdata_reg[31]_i_2_1 ;
  input [31:0]\axi_rdata_reg[31]_i_2_2 ;
  input [31:0]\axi_rdata_reg[31]_i_2_3 ;
  input [31:0]\axi_rdata_reg[31]_i_2_4 ;
  input [31:0]\axi_rdata_reg[31]_i_2_5 ;
  input [31:0]\axi_rdata_reg[31]_i_2_6 ;
  input [3:0]s_axi_wstrb;

  wire [31:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire [31:0]\axi_rdata_reg[31]_i_2_0 ;
  wire [31:0]\axi_rdata_reg[31]_i_2_1 ;
  wire [31:0]\axi_rdata_reg[31]_i_2_2 ;
  wire [31:0]\axi_rdata_reg[31]_i_2_3 ;
  wire [31:0]\axi_rdata_reg[31]_i_2_4 ;
  wire [31:0]\axi_rdata_reg[31]_i_2_5 ;
  wire [31:0]\axi_rdata_reg[31]_i_2_6 ;
  wire \axi_rdata_reg[31]_i_2_n_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [3:0]sel0;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:0]slv_reg12;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire [31:0]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire [31:0]slv_reg8;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(s_axi_awready),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  FDRE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[0]),
        .Q(sel0[0]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[1]),
        .Q(sel0[1]),
        .R(SR));
  FDRE \axi_araddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[2]),
        .Q(sel0[2]),
        .R(SR));
  FDRE \axi_araddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[3]),
        .Q(sel0[3]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s_axi_arready),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[3]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s_axi_wvalid),
        .I1(s_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(Q[0]),
        .I1(\axi_rdata_reg[31]_i_2_0 [0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [0]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [0]),
        .I1(\axi_rdata_reg[31]_i_2_4 [0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [0]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(sel0[1]),
        .I3(slv_reg9[0]),
        .I4(sel0[0]),
        .I5(slv_reg8[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(slv_reg15[0]),
        .I1(slv_reg14[0]),
        .I2(sel0[1]),
        .I3(slv_reg13[0]),
        .I4(sel0[0]),
        .I5(slv_reg12[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(Q[10]),
        .I1(\axi_rdata_reg[31]_i_2_0 [10]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [10]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [10]),
        .I1(\axi_rdata_reg[31]_i_2_4 [10]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [10]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(slv_reg15[10]),
        .I1(slv_reg14[10]),
        .I2(sel0[1]),
        .I3(slv_reg13[10]),
        .I4(sel0[0]),
        .I5(slv_reg12[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(Q[11]),
        .I1(\axi_rdata_reg[31]_i_2_0 [11]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [11]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [11]),
        .I1(\axi_rdata_reg[31]_i_2_4 [11]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [11]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(slv_reg15[11]),
        .I1(slv_reg14[11]),
        .I2(sel0[1]),
        .I3(slv_reg13[11]),
        .I4(sel0[0]),
        .I5(slv_reg12[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(Q[12]),
        .I1(\axi_rdata_reg[31]_i_2_0 [12]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [12]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [12]),
        .I1(\axi_rdata_reg[31]_i_2_4 [12]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [12]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(slv_reg15[12]),
        .I1(slv_reg14[12]),
        .I2(sel0[1]),
        .I3(slv_reg13[12]),
        .I4(sel0[0]),
        .I5(slv_reg12[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(Q[13]),
        .I1(\axi_rdata_reg[31]_i_2_0 [13]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [13]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [13]),
        .I1(\axi_rdata_reg[31]_i_2_4 [13]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [13]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(slv_reg15[13]),
        .I1(slv_reg14[13]),
        .I2(sel0[1]),
        .I3(slv_reg13[13]),
        .I4(sel0[0]),
        .I5(slv_reg12[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(Q[14]),
        .I1(\axi_rdata_reg[31]_i_2_0 [14]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [14]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [14]),
        .I1(\axi_rdata_reg[31]_i_2_4 [14]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [14]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(slv_reg15[14]),
        .I1(slv_reg14[14]),
        .I2(sel0[1]),
        .I3(slv_reg13[14]),
        .I4(sel0[0]),
        .I5(slv_reg12[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(Q[15]),
        .I1(\axi_rdata_reg[31]_i_2_0 [15]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [15]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [15]),
        .I1(\axi_rdata_reg[31]_i_2_4 [15]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [15]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(slv_reg15[15]),
        .I1(slv_reg14[15]),
        .I2(sel0[1]),
        .I3(slv_reg13[15]),
        .I4(sel0[0]),
        .I5(slv_reg12[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(Q[16]),
        .I1(\axi_rdata_reg[31]_i_2_0 [16]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [16]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [16]),
        .I1(\axi_rdata_reg[31]_i_2_4 [16]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [16]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(slv_reg15[16]),
        .I1(slv_reg14[16]),
        .I2(sel0[1]),
        .I3(slv_reg13[16]),
        .I4(sel0[0]),
        .I5(slv_reg12[16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(Q[17]),
        .I1(\axi_rdata_reg[31]_i_2_0 [17]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [17]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [17]),
        .I1(\axi_rdata_reg[31]_i_2_4 [17]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [17]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(slv_reg15[17]),
        .I1(slv_reg14[17]),
        .I2(sel0[1]),
        .I3(slv_reg13[17]),
        .I4(sel0[0]),
        .I5(slv_reg12[17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(Q[18]),
        .I1(\axi_rdata_reg[31]_i_2_0 [18]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [18]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [18]),
        .I1(\axi_rdata_reg[31]_i_2_4 [18]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [18]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(slv_reg15[18]),
        .I1(slv_reg14[18]),
        .I2(sel0[1]),
        .I3(slv_reg13[18]),
        .I4(sel0[0]),
        .I5(slv_reg12[18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(Q[19]),
        .I1(\axi_rdata_reg[31]_i_2_0 [19]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [19]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [19]),
        .I1(\axi_rdata_reg[31]_i_2_4 [19]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [19]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(slv_reg15[19]),
        .I1(slv_reg14[19]),
        .I2(sel0[1]),
        .I3(slv_reg13[19]),
        .I4(sel0[0]),
        .I5(slv_reg12[19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(Q[1]),
        .I1(\axi_rdata_reg[31]_i_2_0 [1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [1]),
        .I1(\axi_rdata_reg[31]_i_2_4 [1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(sel0[1]),
        .I3(slv_reg9[1]),
        .I4(sel0[0]),
        .I5(slv_reg8[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(slv_reg15[1]),
        .I1(slv_reg14[1]),
        .I2(sel0[1]),
        .I3(slv_reg13[1]),
        .I4(sel0[0]),
        .I5(slv_reg12[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(Q[20]),
        .I1(\axi_rdata_reg[31]_i_2_0 [20]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [20]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [20]),
        .I1(\axi_rdata_reg[31]_i_2_4 [20]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [20]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(slv_reg13[20]),
        .I4(sel0[0]),
        .I5(slv_reg12[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(Q[21]),
        .I1(\axi_rdata_reg[31]_i_2_0 [21]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [21]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [21]),
        .I1(\axi_rdata_reg[31]_i_2_4 [21]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [21]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(slv_reg13[21]),
        .I4(sel0[0]),
        .I5(slv_reg12[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(Q[22]),
        .I1(\axi_rdata_reg[31]_i_2_0 [22]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [22]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [22]),
        .I1(\axi_rdata_reg[31]_i_2_4 [22]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [22]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(slv_reg13[22]),
        .I4(sel0[0]),
        .I5(slv_reg12[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(Q[23]),
        .I1(\axi_rdata_reg[31]_i_2_0 [23]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [23]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [23]),
        .I1(\axi_rdata_reg[31]_i_2_4 [23]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [23]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(slv_reg13[23]),
        .I4(sel0[0]),
        .I5(slv_reg12[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(Q[24]),
        .I1(\axi_rdata_reg[31]_i_2_0 [24]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [24]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [24]),
        .I1(\axi_rdata_reg[31]_i_2_4 [24]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [24]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(slv_reg13[24]),
        .I4(sel0[0]),
        .I5(slv_reg12[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(Q[25]),
        .I1(\axi_rdata_reg[31]_i_2_0 [25]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [25]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [25]),
        .I1(\axi_rdata_reg[31]_i_2_4 [25]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [25]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(slv_reg13[25]),
        .I4(sel0[0]),
        .I5(slv_reg12[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(Q[26]),
        .I1(\axi_rdata_reg[31]_i_2_0 [26]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [26]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [26]),
        .I1(\axi_rdata_reg[31]_i_2_4 [26]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [26]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(slv_reg13[26]),
        .I4(sel0[0]),
        .I5(slv_reg12[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(Q[27]),
        .I1(\axi_rdata_reg[31]_i_2_0 [27]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [27]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [27]),
        .I1(\axi_rdata_reg[31]_i_2_4 [27]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [27]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(slv_reg13[27]),
        .I4(sel0[0]),
        .I5(slv_reg12[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(Q[28]),
        .I1(\axi_rdata_reg[31]_i_2_0 [28]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [28]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [28]),
        .I1(\axi_rdata_reg[31]_i_2_4 [28]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [28]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(slv_reg13[28]),
        .I4(sel0[0]),
        .I5(slv_reg12[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(Q[29]),
        .I1(\axi_rdata_reg[31]_i_2_0 [29]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [29]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [29]),
        .I1(\axi_rdata_reg[31]_i_2_4 [29]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [29]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(slv_reg13[29]),
        .I4(sel0[0]),
        .I5(slv_reg12[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[31]_i_2_0 [2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [2]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [2]),
        .I1(\axi_rdata_reg[31]_i_2_4 [2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [2]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(sel0[1]),
        .I3(slv_reg9[2]),
        .I4(sel0[0]),
        .I5(slv_reg8[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(slv_reg15[2]),
        .I1(slv_reg14[2]),
        .I2(sel0[1]),
        .I3(slv_reg13[2]),
        .I4(sel0[0]),
        .I5(slv_reg12[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(Q[30]),
        .I1(\axi_rdata_reg[31]_i_2_0 [30]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [30]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [30]),
        .I1(\axi_rdata_reg[31]_i_2_4 [30]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [30]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(slv_reg13[30]),
        .I4(sel0[0]),
        .I5(slv_reg12[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(Q[31]),
        .I1(\axi_rdata_reg[31]_i_2_0 [31]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [31]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [31]),
        .I1(\axi_rdata_reg[31]_i_2_4 [31]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [31]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [31]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(slv_reg13[31]),
        .I4(sel0[0]),
        .I5(slv_reg12[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(Q[3]),
        .I1(\axi_rdata_reg[31]_i_2_0 [3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [3]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [3]),
        .I1(\axi_rdata_reg[31]_i_2_4 [3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [3]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(sel0[1]),
        .I3(slv_reg9[3]),
        .I4(sel0[0]),
        .I5(slv_reg8[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(slv_reg15[3]),
        .I1(slv_reg14[3]),
        .I2(sel0[1]),
        .I3(slv_reg13[3]),
        .I4(sel0[0]),
        .I5(slv_reg12[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(Q[4]),
        .I1(\axi_rdata_reg[31]_i_2_0 [4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [4]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [4]),
        .I1(\axi_rdata_reg[31]_i_2_4 [4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [4]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(sel0[1]),
        .I3(slv_reg9[4]),
        .I4(sel0[0]),
        .I5(slv_reg8[4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(slv_reg15[4]),
        .I1(slv_reg14[4]),
        .I2(sel0[1]),
        .I3(slv_reg13[4]),
        .I4(sel0[0]),
        .I5(slv_reg12[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(Q[5]),
        .I1(\axi_rdata_reg[31]_i_2_0 [5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [5]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [5]),
        .I1(\axi_rdata_reg[31]_i_2_4 [5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [5]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(sel0[1]),
        .I3(slv_reg9[5]),
        .I4(sel0[0]),
        .I5(slv_reg8[5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(slv_reg15[5]),
        .I1(slv_reg14[5]),
        .I2(sel0[1]),
        .I3(slv_reg13[5]),
        .I4(sel0[0]),
        .I5(slv_reg12[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(Q[6]),
        .I1(\axi_rdata_reg[31]_i_2_0 [6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [6]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [6]),
        .I1(\axi_rdata_reg[31]_i_2_4 [6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [6]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(sel0[1]),
        .I3(slv_reg9[6]),
        .I4(sel0[0]),
        .I5(slv_reg8[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(slv_reg15[6]),
        .I1(slv_reg14[6]),
        .I2(sel0[1]),
        .I3(slv_reg13[6]),
        .I4(sel0[0]),
        .I5(slv_reg12[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(Q[7]),
        .I1(\axi_rdata_reg[31]_i_2_0 [7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [7]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [7]),
        .I1(\axi_rdata_reg[31]_i_2_4 [7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [7]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(sel0[1]),
        .I3(slv_reg9[7]),
        .I4(sel0[0]),
        .I5(slv_reg8[7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(slv_reg15[7]),
        .I1(slv_reg14[7]),
        .I2(sel0[1]),
        .I3(slv_reg13[7]),
        .I4(sel0[0]),
        .I5(slv_reg12[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(Q[8]),
        .I1(\axi_rdata_reg[31]_i_2_0 [8]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [8]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [8]),
        .I1(\axi_rdata_reg[31]_i_2_4 [8]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [8]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(sel0[1]),
        .I3(slv_reg9[8]),
        .I4(sel0[0]),
        .I5(slv_reg8[8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(sel0[1]),
        .I3(slv_reg13[8]),
        .I4(sel0[0]),
        .I5(slv_reg12[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(Q[9]),
        .I1(\axi_rdata_reg[31]_i_2_0 [9]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_1 [9]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_2 [9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(\axi_rdata_reg[31]_i_2_3 [9]),
        .I1(\axi_rdata_reg[31]_i_2_4 [9]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31]_i_2_5 [9]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_i_2_6 [9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(sel0[1]),
        .I3(slv_reg9[9]),
        .I4(sel0[0]),
        .I5(slv_reg8[9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(slv_reg15[9]),
        .I1(slv_reg14[9]),
        .I2(sel0[1]),
        .I3(slv_reg13[9]),
        .I4(sel0[0]),
        .I5(slv_reg12[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  MUXF8 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_4_n_0 ),
        .I1(\axi_rdata[0]_i_5_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  MUXF8 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(\axi_rdata[10]_i_5_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  MUXF8 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_4_n_0 ),
        .I1(\axi_rdata[11]_i_5_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  MUXF8 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(\axi_rdata[12]_i_5_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  MUXF8 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(\axi_rdata[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  MUXF8 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\axi_rdata[14]_i_5_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  MUXF8 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(\axi_rdata[15]_i_5_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  MUXF8 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(\axi_rdata[16]_i_5_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  MUXF8 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_rdata_reg[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(\axi_rdata[17]_i_5_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  MUXF8 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_rdata_reg[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(\axi_rdata[18]_i_5_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  MUXF8 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(\axi_rdata[19]_i_5_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  MUXF8 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_4_n_0 ),
        .I1(\axi_rdata[1]_i_5_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  MUXF8 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_rdata_reg[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(\axi_rdata[20]_i_5_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  MUXF8 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(\axi_rdata[21]_i_5_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  MUXF8 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(\axi_rdata[22]_i_5_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  MUXF8 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(\axi_rdata[23]_i_5_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  MUXF8 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  MUXF8 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(\axi_rdata[25]_i_5_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  MUXF8 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(\axi_rdata[26]_i_5_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  MUXF8 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(\axi_rdata[27]_i_5_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  MUXF8 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(\axi_rdata[28]_i_5_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  MUXF8 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(\axi_rdata[29]_i_5_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  MUXF8 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_4_n_0 ),
        .I1(\axi_rdata[2]_i_5_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  MUXF8 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(\axi_rdata[30]_i_5_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  MUXF8 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata_reg[31]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata[31]_i_4_n_0 ),
        .I1(\axi_rdata[31]_i_5_n_0 ),
        .O(\axi_rdata_reg[31]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata[31]_i_7_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  MUXF8 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(\axi_rdata[3]_i_5_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  MUXF8 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_4_n_0 ),
        .I1(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  MUXF8 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_4_n_0 ),
        .I1(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  MUXF8 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  MUXF8 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_4_n_0 ),
        .I1(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  MUXF8 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata[8]_i_5_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  MUXF8 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_4_n_0 ),
        .I1(\axi_rdata[9]_i_5_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_arready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s_axi_wready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[1]),
        .I3(s_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[1]),
        .I3(s_axi_wstrb[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[1]),
        .I3(s_axi_wstrb[3]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[1]),
        .I3(s_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(SR));
  FDRE \slv_reg10_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(SR));
  FDRE \slv_reg10_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(SR));
  FDRE \slv_reg10_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(SR));
  FDRE \slv_reg10_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(SR));
  FDRE \slv_reg10_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(SR));
  FDRE \slv_reg10_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(SR));
  FDRE \slv_reg10_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(SR));
  FDRE \slv_reg10_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(SR));
  FDRE \slv_reg10_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(SR));
  FDRE \slv_reg10_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(SR));
  FDRE \slv_reg10_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(SR));
  FDRE \slv_reg10_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(SR));
  FDRE \slv_reg10_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(SR));
  FDRE \slv_reg10_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(SR));
  FDRE \slv_reg10_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(SR));
  FDRE \slv_reg10_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(SR));
  FDRE \slv_reg10_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(SR));
  FDRE \slv_reg10_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(SR));
  FDRE \slv_reg10_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(SR));
  FDRE \slv_reg10_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(SR));
  FDRE \slv_reg10_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(SR));
  FDRE \slv_reg10_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(SR));
  FDRE \slv_reg10_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(SR));
  FDRE \slv_reg10_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(SR));
  FDRE \slv_reg10_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(SR));
  FDRE \slv_reg10_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(SR));
  FDRE \slv_reg10_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(SR));
  FDRE \slv_reg10_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(SR));
  FDRE \slv_reg10_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(SR));
  FDRE \slv_reg10_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(SR));
  FDRE \slv_reg10_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(SR));
  FDRE \slv_reg11_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(SR));
  FDRE \slv_reg11_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(SR));
  FDRE \slv_reg11_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(SR));
  FDRE \slv_reg11_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(SR));
  FDRE \slv_reg11_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(SR));
  FDRE \slv_reg11_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(SR));
  FDRE \slv_reg11_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(SR));
  FDRE \slv_reg11_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(SR));
  FDRE \slv_reg11_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(SR));
  FDRE \slv_reg11_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(SR));
  FDRE \slv_reg11_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(SR));
  FDRE \slv_reg11_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(SR));
  FDRE \slv_reg11_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(SR));
  FDRE \slv_reg11_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(SR));
  FDRE \slv_reg11_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(SR));
  FDRE \slv_reg11_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(SR));
  FDRE \slv_reg11_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(SR));
  FDRE \slv_reg11_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(SR));
  FDRE \slv_reg11_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(SR));
  FDRE \slv_reg11_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(SR));
  FDRE \slv_reg11_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(SR));
  FDRE \slv_reg11_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(SR));
  FDRE \slv_reg11_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(SR));
  FDRE \slv_reg11_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(SR));
  FDRE \slv_reg11_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(SR));
  FDRE \slv_reg11_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(SR));
  FDRE \slv_reg11_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(SR));
  FDRE \slv_reg11_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(SR));
  FDRE \slv_reg11_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(SR));
  FDRE \slv_reg11_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(SR));
  FDRE \slv_reg11_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg12[0]),
        .R(SR));
  FDRE \slv_reg12_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg12[10]),
        .R(SR));
  FDRE \slv_reg12_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg12[11]),
        .R(SR));
  FDRE \slv_reg12_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg12[12]),
        .R(SR));
  FDRE \slv_reg12_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg12[13]),
        .R(SR));
  FDRE \slv_reg12_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg12[14]),
        .R(SR));
  FDRE \slv_reg12_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg12[15]),
        .R(SR));
  FDRE \slv_reg12_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg12[16]),
        .R(SR));
  FDRE \slv_reg12_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg12[17]),
        .R(SR));
  FDRE \slv_reg12_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg12[18]),
        .R(SR));
  FDRE \slv_reg12_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg12[19]),
        .R(SR));
  FDRE \slv_reg12_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg12[1]),
        .R(SR));
  FDRE \slv_reg12_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg12[20]),
        .R(SR));
  FDRE \slv_reg12_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg12[21]),
        .R(SR));
  FDRE \slv_reg12_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg12[22]),
        .R(SR));
  FDRE \slv_reg12_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg12[23]),
        .R(SR));
  FDRE \slv_reg12_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg12[24]),
        .R(SR));
  FDRE \slv_reg12_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg12[25]),
        .R(SR));
  FDRE \slv_reg12_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg12[26]),
        .R(SR));
  FDRE \slv_reg12_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg12[27]),
        .R(SR));
  FDRE \slv_reg12_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg12[28]),
        .R(SR));
  FDRE \slv_reg12_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg12[29]),
        .R(SR));
  FDRE \slv_reg12_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg12[2]),
        .R(SR));
  FDRE \slv_reg12_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg12[30]),
        .R(SR));
  FDRE \slv_reg12_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg12[31]),
        .R(SR));
  FDRE \slv_reg12_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg12[3]),
        .R(SR));
  FDRE \slv_reg12_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg12[4]),
        .R(SR));
  FDRE \slv_reg12_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg12[5]),
        .R(SR));
  FDRE \slv_reg12_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg12[6]),
        .R(SR));
  FDRE \slv_reg12_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg12[7]),
        .R(SR));
  FDRE \slv_reg12_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg12[8]),
        .R(SR));
  FDRE \slv_reg12_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg12[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(s_axi_wstrb[1]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(s_axi_wstrb[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(s_axi_wstrb[3]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(s_axi_wstrb[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg13[0]),
        .R(SR));
  FDRE \slv_reg13_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg13[10]),
        .R(SR));
  FDRE \slv_reg13_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg13[11]),
        .R(SR));
  FDRE \slv_reg13_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg13[12]),
        .R(SR));
  FDRE \slv_reg13_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg13[13]),
        .R(SR));
  FDRE \slv_reg13_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg13[14]),
        .R(SR));
  FDRE \slv_reg13_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg13[15]),
        .R(SR));
  FDRE \slv_reg13_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg13[16]),
        .R(SR));
  FDRE \slv_reg13_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg13[17]),
        .R(SR));
  FDRE \slv_reg13_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg13[18]),
        .R(SR));
  FDRE \slv_reg13_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg13[19]),
        .R(SR));
  FDRE \slv_reg13_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg13[1]),
        .R(SR));
  FDRE \slv_reg13_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(SR));
  FDRE \slv_reg13_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(SR));
  FDRE \slv_reg13_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(SR));
  FDRE \slv_reg13_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(SR));
  FDRE \slv_reg13_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(SR));
  FDRE \slv_reg13_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(SR));
  FDRE \slv_reg13_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(SR));
  FDRE \slv_reg13_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(SR));
  FDRE \slv_reg13_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(SR));
  FDRE \slv_reg13_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(SR));
  FDRE \slv_reg13_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg13[2]),
        .R(SR));
  FDRE \slv_reg13_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(SR));
  FDRE \slv_reg13_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(SR));
  FDRE \slv_reg13_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg13[3]),
        .R(SR));
  FDRE \slv_reg13_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg13[4]),
        .R(SR));
  FDRE \slv_reg13_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg13[5]),
        .R(SR));
  FDRE \slv_reg13_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg13[6]),
        .R(SR));
  FDRE \slv_reg13_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg13[7]),
        .R(SR));
  FDRE \slv_reg13_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg13[8]),
        .R(SR));
  FDRE \slv_reg13_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg13[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[2]),
        .I3(s_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[2]),
        .I3(s_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[2]),
        .I3(s_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[2]),
        .I3(s_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg14[0]),
        .R(SR));
  FDRE \slv_reg14_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg14[10]),
        .R(SR));
  FDRE \slv_reg14_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg14[11]),
        .R(SR));
  FDRE \slv_reg14_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg14[12]),
        .R(SR));
  FDRE \slv_reg14_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg14[13]),
        .R(SR));
  FDRE \slv_reg14_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg14[14]),
        .R(SR));
  FDRE \slv_reg14_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg14[15]),
        .R(SR));
  FDRE \slv_reg14_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg14[16]),
        .R(SR));
  FDRE \slv_reg14_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg14[17]),
        .R(SR));
  FDRE \slv_reg14_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg14[18]),
        .R(SR));
  FDRE \slv_reg14_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg14[19]),
        .R(SR));
  FDRE \slv_reg14_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg14[1]),
        .R(SR));
  FDRE \slv_reg14_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(SR));
  FDRE \slv_reg14_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(SR));
  FDRE \slv_reg14_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(SR));
  FDRE \slv_reg14_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(SR));
  FDRE \slv_reg14_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(SR));
  FDRE \slv_reg14_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(SR));
  FDRE \slv_reg14_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(SR));
  FDRE \slv_reg14_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(SR));
  FDRE \slv_reg14_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(SR));
  FDRE \slv_reg14_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(SR));
  FDRE \slv_reg14_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg14[2]),
        .R(SR));
  FDRE \slv_reg14_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(SR));
  FDRE \slv_reg14_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(SR));
  FDRE \slv_reg14_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg14[3]),
        .R(SR));
  FDRE \slv_reg14_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg14[4]),
        .R(SR));
  FDRE \slv_reg14_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg14[5]),
        .R(SR));
  FDRE \slv_reg14_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg14[6]),
        .R(SR));
  FDRE \slv_reg14_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg14[7]),
        .R(SR));
  FDRE \slv_reg14_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg14[8]),
        .R(SR));
  FDRE \slv_reg14_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg14[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(SR));
  FDRE \slv_reg15_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(SR));
  FDRE \slv_reg15_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(SR));
  FDRE \slv_reg15_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(SR));
  FDRE \slv_reg15_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(SR));
  FDRE \slv_reg15_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(SR));
  FDRE \slv_reg15_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(SR));
  FDRE \slv_reg15_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(SR));
  FDRE \slv_reg15_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(SR));
  FDRE \slv_reg15_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(SR));
  FDRE \slv_reg15_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(SR));
  FDRE \slv_reg15_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(SR));
  FDRE \slv_reg15_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(SR));
  FDRE \slv_reg15_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(SR));
  FDRE \slv_reg15_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(SR));
  FDRE \slv_reg15_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(SR));
  FDRE \slv_reg15_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(SR));
  FDRE \slv_reg15_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(SR));
  FDRE \slv_reg15_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(SR));
  FDRE \slv_reg15_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(SR));
  FDRE \slv_reg15_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(SR));
  FDRE \slv_reg15_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(SR));
  FDRE \slv_reg15_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(SR));
  FDRE \slv_reg15_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(SR));
  FDRE \slv_reg15_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(SR));
  FDRE \slv_reg15_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(SR));
  FDRE \slv_reg15_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(SR));
  FDRE \slv_reg15_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(SR));
  FDRE \slv_reg15_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(SR));
  FDRE \slv_reg15_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(SR));
  FDRE \slv_reg15_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(SR));
  FDRE \slv_reg15_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \slv_reg8[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \slv_reg8[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \slv_reg8[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg8[31]_i_2 
       (.I0(s_axi_wready),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \slv_reg8[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg8_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(SR));
  FDRE \slv_reg8_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(SR));
  FDRE \slv_reg8_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(SR));
  FDRE \slv_reg8_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(SR));
  FDRE \slv_reg8_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(SR));
  FDRE \slv_reg8_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(SR));
  FDRE \slv_reg8_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(SR));
  FDRE \slv_reg8_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(slv_reg8[16]),
        .R(SR));
  FDRE \slv_reg8_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(slv_reg8[17]),
        .R(SR));
  FDRE \slv_reg8_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(slv_reg8[18]),
        .R(SR));
  FDRE \slv_reg8_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(slv_reg8[19]),
        .R(SR));
  FDRE \slv_reg8_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(SR));
  FDRE \slv_reg8_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(slv_reg8[20]),
        .R(SR));
  FDRE \slv_reg8_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(slv_reg8[21]),
        .R(SR));
  FDRE \slv_reg8_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(slv_reg8[22]),
        .R(SR));
  FDRE \slv_reg8_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(slv_reg8[23]),
        .R(SR));
  FDRE \slv_reg8_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(slv_reg8[24]),
        .R(SR));
  FDRE \slv_reg8_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(slv_reg8[25]),
        .R(SR));
  FDRE \slv_reg8_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(slv_reg8[26]),
        .R(SR));
  FDRE \slv_reg8_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(slv_reg8[27]),
        .R(SR));
  FDRE \slv_reg8_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(slv_reg8[28]),
        .R(SR));
  FDRE \slv_reg8_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(slv_reg8[29]),
        .R(SR));
  FDRE \slv_reg8_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(SR));
  FDRE \slv_reg8_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(slv_reg8[30]),
        .R(SR));
  FDRE \slv_reg8_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(slv_reg8[31]),
        .R(SR));
  FDRE \slv_reg8_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(SR));
  FDRE \slv_reg8_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(SR));
  FDRE \slv_reg8_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(SR));
  FDRE \slv_reg8_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(SR));
  FDRE \slv_reg8_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(SR));
  FDRE \slv_reg8_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(SR));
  FDRE \slv_reg8_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(SR));
  FDRE \slv_reg9_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(SR));
  FDRE \slv_reg9_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(SR));
  FDRE \slv_reg9_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(SR));
  FDRE \slv_reg9_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(SR));
  FDRE \slv_reg9_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(SR));
  FDRE \slv_reg9_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(SR));
  FDRE \slv_reg9_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(SR));
  FDRE \slv_reg9_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(SR));
  FDRE \slv_reg9_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(SR));
  FDRE \slv_reg9_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(SR));
  FDRE \slv_reg9_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(SR));
  FDRE \slv_reg9_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(SR));
  FDRE \slv_reg9_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(SR));
  FDRE \slv_reg9_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(SR));
  FDRE \slv_reg9_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(SR));
  FDRE \slv_reg9_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(SR));
  FDRE \slv_reg9_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(SR));
  FDRE \slv_reg9_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(SR));
  FDRE \slv_reg9_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(SR));
  FDRE \slv_reg9_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(SR));
  FDRE \slv_reg9_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(SR));
  FDRE \slv_reg9_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(SR));
  FDRE \slv_reg9_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(SR));
  FDRE \slv_reg9_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(SR));
  FDRE \slv_reg9_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(SR));
  FDRE \slv_reg9_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(SR));
  FDRE \slv_reg9_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(SR));
  FDRE \slv_reg9_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(SR));
  FDRE \slv_reg9_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(SR));
  FDRE \slv_reg9_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(SR));
  FDRE \slv_reg9_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(s_axi_arready),
        .O(slv_reg_rden__0));
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
