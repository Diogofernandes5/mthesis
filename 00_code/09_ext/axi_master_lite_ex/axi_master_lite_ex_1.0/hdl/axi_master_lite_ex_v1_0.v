
`timescale 1 ns / 1 ps

	module axi_master_lite_ex_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M_AXI_L
		parameter  C_M_AXI_L_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M_AXI_L_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M_AXI_L_ADDR_WIDTH	= 32,
		parameter integer C_M_AXI_L_DATA_WIDTH	= 32,
		parameter integer C_M_AXI_L_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M_AXI_L
		input wire  m_axi_l_init_axi_txn,
		output wire  m_axi_l_error,
		output wire  m_axi_l_txn_done,
		input wire  m_axi_l_aclk,
		input wire  m_axi_l_aresetn,
		output wire [C_M_AXI_L_ADDR_WIDTH-1 : 0] m_axi_l_awaddr,
		output wire [2 : 0] m_axi_l_awprot,
		output wire  m_axi_l_awvalid,
		input wire  m_axi_l_awready,
		output wire [C_M_AXI_L_DATA_WIDTH-1 : 0] m_axi_l_wdata,
		output wire [C_M_AXI_L_DATA_WIDTH/8-1 : 0] m_axi_l_wstrb,
		output wire  m_axi_l_wvalid,
		input wire  m_axi_l_wready,
		input wire [1 : 0] m_axi_l_bresp,
		input wire  m_axi_l_bvalid,
		output wire  m_axi_l_bready,
		output wire [C_M_AXI_L_ADDR_WIDTH-1 : 0] m_axi_l_araddr,
		output wire [2 : 0] m_axi_l_arprot,
		output wire  m_axi_l_arvalid,
		input wire  m_axi_l_arready,
		input wire [C_M_AXI_L_DATA_WIDTH-1 : 0] m_axi_l_rdata,
		input wire [1 : 0] m_axi_l_rresp,
		input wire  m_axi_l_rvalid,
		output wire  m_axi_l_rready
	);
// Instantiation of Axi Bus Interface M_AXI_L
	axi_master_lite_ex_v1_0_M_AXI_L # ( 
		.C_M_START_DATA_VALUE(C_M_AXI_L_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M_AXI_L_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M_AXI_L_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M_AXI_L_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M_AXI_L_TRANSACTIONS_NUM)
	) axi_master_lite_ex_v1_0_M_AXI_L_inst (
		.INIT_AXI_TXN(m_axi_l_init_axi_txn),
		.ERROR(m_axi_l_error),
		.TXN_DONE(m_axi_l_txn_done),
		.M_AXI_ACLK(m_axi_l_aclk),
		.M_AXI_ARESETN(m_axi_l_aresetn),
		.M_AXI_AWADDR(m_axi_l_awaddr),
		.M_AXI_AWPROT(m_axi_l_awprot),
		.M_AXI_AWVALID(m_axi_l_awvalid),
		.M_AXI_AWREADY(m_axi_l_awready),
		.M_AXI_WDATA(m_axi_l_wdata),
		.M_AXI_WSTRB(m_axi_l_wstrb),
		.M_AXI_WVALID(m_axi_l_wvalid),
		.M_AXI_WREADY(m_axi_l_wready),
		.M_AXI_BRESP(m_axi_l_bresp),
		.M_AXI_BVALID(m_axi_l_bvalid),
		.M_AXI_BREADY(m_axi_l_bready),
		.M_AXI_ARADDR(m_axi_l_araddr),
		.M_AXI_ARPROT(m_axi_l_arprot),
		.M_AXI_ARVALID(m_axi_l_arvalid),
		.M_AXI_ARREADY(m_axi_l_arready),
		.M_AXI_RDATA(m_axi_l_rdata),
		.M_AXI_RRESP(m_axi_l_rresp),
		.M_AXI_RVALID(m_axi_l_rvalid),
		.M_AXI_RREADY(m_axi_l_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
