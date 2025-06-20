// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:TFX_Core:1.0
// IP Revision: 45

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module master_test_TFX_Core_0_0 (
  start_but_i,
  cwt_done,
  s_axi_config_aclk,
  s_axi_config_aresetn,
  s_axi_config_awaddr,
  s_axi_config_awprot,
  s_axi_config_awvalid,
  s_axi_config_awready,
  s_axi_config_wdata,
  s_axi_config_wstrb,
  s_axi_config_wvalid,
  s_axi_config_wready,
  s_axi_config_bresp,
  s_axi_config_bvalid,
  s_axi_config_bready,
  s_axi_config_araddr,
  s_axi_config_arprot,
  s_axi_config_arvalid,
  s_axi_config_arready,
  s_axi_config_rdata,
  s_axi_config_rresp,
  s_axi_config_rvalid,
  s_axi_config_rready,
  m_axi_data_aclk,
  m_axi_data_aresetn,
  m_axi_data_awid,
  m_axi_data_awaddr,
  m_axi_data_awlen,
  m_axi_data_awsize,
  m_axi_data_awburst,
  m_axi_data_awlock,
  m_axi_data_awcache,
  m_axi_data_awprot,
  m_axi_data_awqos,
  m_axi_data_awuser,
  m_axi_data_awvalid,
  m_axi_data_awready,
  m_axi_data_wdata,
  m_axi_data_wstrb,
  m_axi_data_wlast,
  m_axi_data_wuser,
  m_axi_data_wvalid,
  m_axi_data_wready,
  m_axi_data_bid,
  m_axi_data_bresp,
  m_axi_data_buser,
  m_axi_data_bvalid,
  m_axi_data_bready,
  m_axi_data_arid,
  m_axi_data_araddr,
  m_axi_data_arlen,
  m_axi_data_arsize,
  m_axi_data_arburst,
  m_axi_data_arlock,
  m_axi_data_arcache,
  m_axi_data_arprot,
  m_axi_data_arqos,
  m_axi_data_aruser,
  m_axi_data_arvalid,
  m_axi_data_arready,
  m_axi_data_rid,
  m_axi_data_rdata,
  m_axi_data_rresp,
  m_axi_data_rlast,
  m_axi_data_ruser,
  m_axi_data_rvalid,
  m_axi_data_rready
);

input wire start_but_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cwt_done, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 cwt_done INTERRUPT" *)
output wire cwt_done;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_config_aclk, ASSOCIATED_BUSIF s_axi_config, ASSOCIATED_RESET s_axi_config_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN master_test_ACLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_config_aclk CLK" *)
input wire s_axi_config_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_config_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_config_aresetn RST" *)
input wire s_axi_config_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config AWADDR" *)
input wire [4 : 0] s_axi_config_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config AWPROT" *)
input wire [2 : 0] s_axi_config_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config AWVALID" *)
input wire s_axi_config_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config AWREADY" *)
output wire s_axi_config_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config WDATA" *)
input wire [31 : 0] s_axi_config_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config WSTRB" *)
input wire [3 : 0] s_axi_config_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config WVALID" *)
input wire s_axi_config_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config WREADY" *)
output wire s_axi_config_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config BRESP" *)
output wire [1 : 0] s_axi_config_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config BVALID" *)
output wire s_axi_config_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config BREADY" *)
input wire s_axi_config_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config ARADDR" *)
input wire [4 : 0] s_axi_config_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config ARPROT" *)
input wire [2 : 0] s_axi_config_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config ARVALID" *)
input wire s_axi_config_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config ARREADY" *)
output wire s_axi_config_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config RDATA" *)
output wire [31 : 0] s_axi_config_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config RRESP" *)
output wire [1 : 0] s_axi_config_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config RVALID" *)
output wire s_axi_config_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_config, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN master_test_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_config RREADY" *)
input wire s_axi_config_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_data_aclk, ASSOCIATED_BUSIF m_axi_data, ASSOCIATED_RESET m_axi_data_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN master_test_ACLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axi_data_aclk CLK" *)
input wire m_axi_data_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_data_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axi_data_aresetn RST" *)
input wire m_axi_data_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWID" *)
output wire [0 : 0] m_axi_data_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWADDR" *)
output wire [31 : 0] m_axi_data_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWLEN" *)
output wire [7 : 0] m_axi_data_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWSIZE" *)
output wire [2 : 0] m_axi_data_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWBURST" *)
output wire [1 : 0] m_axi_data_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWLOCK" *)
output wire m_axi_data_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWCACHE" *)
output wire [3 : 0] m_axi_data_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWPROT" *)
output wire [2 : 0] m_axi_data_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWQOS" *)
output wire [3 : 0] m_axi_data_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWUSER" *)
output wire [0 : 0] m_axi_data_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWVALID" *)
output wire m_axi_data_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWREADY" *)
input wire m_axi_data_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WDATA" *)
output wire [31 : 0] m_axi_data_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WSTRB" *)
output wire [3 : 0] m_axi_data_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WLAST" *)
output wire m_axi_data_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WUSER" *)
output wire [0 : 0] m_axi_data_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WVALID" *)
output wire m_axi_data_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WREADY" *)
input wire m_axi_data_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BID" *)
input wire [0 : 0] m_axi_data_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BRESP" *)
input wire [1 : 0] m_axi_data_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BUSER" *)
input wire [0 : 0] m_axi_data_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BVALID" *)
input wire m_axi_data_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BREADY" *)
output wire m_axi_data_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARID" *)
output wire [0 : 0] m_axi_data_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARADDR" *)
output wire [31 : 0] m_axi_data_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARLEN" *)
output wire [7 : 0] m_axi_data_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARSIZE" *)
output wire [2 : 0] m_axi_data_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARBURST" *)
output wire [1 : 0] m_axi_data_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARLOCK" *)
output wire m_axi_data_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARCACHE" *)
output wire [3 : 0] m_axi_data_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARPROT" *)
output wire [2 : 0] m_axi_data_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARQOS" *)
output wire [3 : 0] m_axi_data_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARUSER" *)
output wire [0 : 0] m_axi_data_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARVALID" *)
output wire m_axi_data_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARREADY" *)
input wire m_axi_data_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RID" *)
input wire [0 : 0] m_axi_data_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RDATA" *)
input wire [31 : 0] m_axi_data_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RRESP" *)
input wire [1 : 0] m_axi_data_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RLAST" *)
input wire m_axi_data_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RUSER" *)
input wire [0 : 0] m_axi_data_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RVALID" *)
input wire m_axi_data_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_data, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN master_test_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RREADY" *)
output wire m_axi_data_rready;

  TFX_Core_v1_0 #(
    .C_S_AXI_Config_DATA_WIDTH(32),
    .C_S_AXI_Config_ADDR_WIDTH(5),
    .C_M_AXI_Data_TARGET_SLAVE_BASE_ADDR(32'H40000000),
    .C_M_AXI_Data_BURST_LEN(256),
    .C_M_AXI_Data_ID_WIDTH(1),
    .C_M_AXI_Data_ADDR_WIDTH(32),
    .C_M_AXI_Data_DATA_WIDTH(32),
    .C_M_AXI_Data_AWUSER_WIDTH(0),
    .C_M_AXI_Data_ARUSER_WIDTH(0),
    .C_M_AXI_Data_WUSER_WIDTH(0),
    .C_M_AXI_Data_RUSER_WIDTH(0),
    .C_M_AXI_Data_BUSER_WIDTH(0)
  ) inst (
    .start_but_i(start_but_i),
    .cwt_done(cwt_done),
    .s_axi_config_aclk(s_axi_config_aclk),
    .s_axi_config_aresetn(s_axi_config_aresetn),
    .s_axi_config_awaddr(s_axi_config_awaddr),
    .s_axi_config_awprot(s_axi_config_awprot),
    .s_axi_config_awvalid(s_axi_config_awvalid),
    .s_axi_config_awready(s_axi_config_awready),
    .s_axi_config_wdata(s_axi_config_wdata),
    .s_axi_config_wstrb(s_axi_config_wstrb),
    .s_axi_config_wvalid(s_axi_config_wvalid),
    .s_axi_config_wready(s_axi_config_wready),
    .s_axi_config_bresp(s_axi_config_bresp),
    .s_axi_config_bvalid(s_axi_config_bvalid),
    .s_axi_config_bready(s_axi_config_bready),
    .s_axi_config_araddr(s_axi_config_araddr),
    .s_axi_config_arprot(s_axi_config_arprot),
    .s_axi_config_arvalid(s_axi_config_arvalid),
    .s_axi_config_arready(s_axi_config_arready),
    .s_axi_config_rdata(s_axi_config_rdata),
    .s_axi_config_rresp(s_axi_config_rresp),
    .s_axi_config_rvalid(s_axi_config_rvalid),
    .s_axi_config_rready(s_axi_config_rready),
    .m_axi_data_aclk(m_axi_data_aclk),
    .m_axi_data_aresetn(m_axi_data_aresetn),
    .m_axi_data_awid(m_axi_data_awid),
    .m_axi_data_awaddr(m_axi_data_awaddr),
    .m_axi_data_awlen(m_axi_data_awlen),
    .m_axi_data_awsize(m_axi_data_awsize),
    .m_axi_data_awburst(m_axi_data_awburst),
    .m_axi_data_awlock(m_axi_data_awlock),
    .m_axi_data_awcache(m_axi_data_awcache),
    .m_axi_data_awprot(m_axi_data_awprot),
    .m_axi_data_awqos(m_axi_data_awqos),
    .m_axi_data_awuser(m_axi_data_awuser),
    .m_axi_data_awvalid(m_axi_data_awvalid),
    .m_axi_data_awready(m_axi_data_awready),
    .m_axi_data_wdata(m_axi_data_wdata),
    .m_axi_data_wstrb(m_axi_data_wstrb),
    .m_axi_data_wlast(m_axi_data_wlast),
    .m_axi_data_wuser(m_axi_data_wuser),
    .m_axi_data_wvalid(m_axi_data_wvalid),
    .m_axi_data_wready(m_axi_data_wready),
    .m_axi_data_bid(m_axi_data_bid),
    .m_axi_data_bresp(m_axi_data_bresp),
    .m_axi_data_buser(m_axi_data_buser),
    .m_axi_data_bvalid(m_axi_data_bvalid),
    .m_axi_data_bready(m_axi_data_bready),
    .m_axi_data_arid(m_axi_data_arid),
    .m_axi_data_araddr(m_axi_data_araddr),
    .m_axi_data_arlen(m_axi_data_arlen),
    .m_axi_data_arsize(m_axi_data_arsize),
    .m_axi_data_arburst(m_axi_data_arburst),
    .m_axi_data_arlock(m_axi_data_arlock),
    .m_axi_data_arcache(m_axi_data_arcache),
    .m_axi_data_arprot(m_axi_data_arprot),
    .m_axi_data_arqos(m_axi_data_arqos),
    .m_axi_data_aruser(m_axi_data_aruser),
    .m_axi_data_arvalid(m_axi_data_arvalid),
    .m_axi_data_arready(m_axi_data_arready),
    .m_axi_data_rid(m_axi_data_rid),
    .m_axi_data_rdata(m_axi_data_rdata),
    .m_axi_data_rresp(m_axi_data_rresp),
    .m_axi_data_rlast(m_axi_data_rlast),
    .m_axi_data_ruser(m_axi_data_ruser),
    .m_axi_data_rvalid(m_axi_data_rvalid),
    .m_axi_data_rready(m_axi_data_rready)
  );
endmodule
