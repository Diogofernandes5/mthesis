
`timescale 1 ns / 1 ps

module TFX_Core_v1_0 #
(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line


    // Parameters of Axi Slave Bus Interface S_AXI_Config
    parameter integer C_S_AXI_Config_DATA_WIDTH	= 32,
    parameter integer C_S_AXI_Config_ADDR_WIDTH	= 5,

    // Parameters of Axi Master Bus Interface M_AXI_Data
    parameter  C_M_AXI_Data_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
    parameter integer C_M_AXI_Data_BURST_LEN	= 16,
    parameter integer C_M_AXI_Data_ID_WIDTH	= 1,
    parameter integer C_M_AXI_Data_ADDR_WIDTH	= 32,
    parameter integer C_M_AXI_Data_DATA_WIDTH	= 32,
    parameter integer C_M_AXI_Data_AWUSER_WIDTH	= 0,
    parameter integer C_M_AXI_Data_ARUSER_WIDTH	= 0,
    parameter integer C_M_AXI_Data_WUSER_WIDTH	= 0,
    parameter integer C_M_AXI_Data_RUSER_WIDTH	= 0,
    parameter integer C_M_AXI_Data_BUSER_WIDTH	= 0
)
(
    // Users to add ports here
       
    input wire start__but_i,
//    input wire [C_M_AXI_Data_DATA_WIDTH-1:0] data_i,
    
    output wire cwt_done,
    
    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Slave Bus Interface S_AXI_Config
    input wire  s_axi_config_aclk,
    input wire  s_axi_config_aresetn,
    input wire [C_S_AXI_Config_ADDR_WIDTH-1 : 0] s_axi_config_awaddr,
    input wire [2 : 0] s_axi_config_awprot,
    input wire  s_axi_config_awvalid,
    output wire  s_axi_config_awready,
    input wire [C_S_AXI_Config_DATA_WIDTH-1 : 0] s_axi_config_wdata,
    input wire [(C_S_AXI_Config_DATA_WIDTH/8)-1 : 0] s_axi_config_wstrb,
    input wire  s_axi_config_wvalid,
    output wire  s_axi_config_wready,
    output wire [1 : 0] s_axi_config_bresp,
    output wire  s_axi_config_bvalid,
    input wire  s_axi_config_bready,
    input wire [C_S_AXI_Config_ADDR_WIDTH-1 : 0] s_axi_config_araddr,
    input wire [2 : 0] s_axi_config_arprot,
    input wire  s_axi_config_arvalid,
    output wire  s_axi_config_arready,
    output wire [C_S_AXI_Config_DATA_WIDTH-1 : 0] s_axi_config_rdata,
    output wire [1 : 0] s_axi_config_rresp,
    output wire  s_axi_config_rvalid,
    input wire  s_axi_config_rready,

    // Ports of Axi Master Bus Interface M_AXI_Data
    input wire  m_axi_data_aclk,
    input wire  m_axi_data_aresetn,
    output wire [C_M_AXI_Data_ID_WIDTH-1 : 0] m_axi_data_awid,
    output wire [C_M_AXI_Data_ADDR_WIDTH-1 : 0] m_axi_data_awaddr,
    output wire [7 : 0] m_axi_data_awlen,
    output wire [2 : 0] m_axi_data_awsize,
    output wire [1 : 0] m_axi_data_awburst,
    output wire  m_axi_data_awlock,
    output wire [3 : 0] m_axi_data_awcache,
    output wire [2 : 0] m_axi_data_awprot,
    output wire [3 : 0] m_axi_data_awqos,
    output wire [C_M_AXI_Data_AWUSER_WIDTH-1 : 0] m_axi_data_awuser,
    output wire  m_axi_data_awvalid,
    input wire  m_axi_data_awready,
    output wire [C_M_AXI_Data_DATA_WIDTH-1 : 0] m_axi_data_wdata,
    output wire [C_M_AXI_Data_DATA_WIDTH/8-1 : 0] m_axi_data_wstrb,
    output wire  m_axi_data_wlast,
    output wire [C_M_AXI_Data_WUSER_WIDTH-1 : 0] m_axi_data_wuser,
    output wire  m_axi_data_wvalid,
    input wire  m_axi_data_wready,
    input wire [C_M_AXI_Data_ID_WIDTH-1 : 0] m_axi_data_bid,
    input wire [1 : 0] m_axi_data_bresp,
    input wire [C_M_AXI_Data_BUSER_WIDTH-1 : 0] m_axi_data_buser,
    input wire  m_axi_data_bvalid,
    output wire  m_axi_data_bready,
    output wire [C_M_AXI_Data_ID_WIDTH-1 : 0] m_axi_data_arid,
    output wire [C_M_AXI_Data_ADDR_WIDTH-1 : 0] m_axi_data_araddr,
    output wire [7 : 0] m_axi_data_arlen,
    output wire [2 : 0] m_axi_data_arsize,
    output wire [1 : 0] m_axi_data_arburst,
    output wire  m_axi_data_arlock,
    output wire [3 : 0] m_axi_data_arcache,
    output wire [2 : 0] m_axi_data_arprot,
    output wire [3 : 0] m_axi_data_arqos,
    output wire [C_M_AXI_Data_ARUSER_WIDTH-1 : 0] m_axi_data_aruser,
    output wire  m_axi_data_arvalid,
    input wire  m_axi_data_arready,
    input wire [C_M_AXI_Data_ID_WIDTH-1 : 0] m_axi_data_rid,
    input wire [C_M_AXI_Data_DATA_WIDTH-1 : 0] m_axi_data_rdata,
    input wire [1 : 0] m_axi_data_rresp,
    input wire  m_axi_data_rlast,
    input wire [C_M_AXI_Data_RUSER_WIDTH-1 : 0] m_axi_data_ruser,
    input wire  m_axi_data_rvalid,
    output wire  m_axi_data_rready
);

localparam C_M_CACHE_VAL = 4'b0010;
// value to be used in C_M_AxPROT
localparam C_M_PROT_VAL = 3'b000;

// Number of transactions to be operated, independently of the data width
localparam integer C_NUM_OF_TRANSFERS = 2048;

wire dl_busy;

wire ps_start;
wire start;

assign dl_busy = 0;

assign start = ps_start | start__but_i;

// Instantiation of Axi Bus Interface S_AXI_Config
TFX_Core_v1_0_S_AXI_Config # ( 
    .C_S_AXI_DATA_WIDTH(C_S_AXI_Config_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S_AXI_Config_ADDR_WIDTH)
) S_AXI_Config (
    .start(ps_start),

    .S_AXI_ACLK(s_axi_config_aclk),
    .S_AXI_ARESETN(s_axi_config_aresetn),
    .S_AXI_AWADDR(s_axi_config_awaddr),
    .S_AXI_AWPROT(s_axi_config_awprot),
    .S_AXI_AWVALID(s_axi_config_awvalid),
    .S_AXI_AWREADY(s_axi_config_awready),
    .S_AXI_WDATA(s_axi_config_wdata),
    .S_AXI_WSTRB(s_axi_config_wstrb),
    .S_AXI_WVALID(s_axi_config_wvalid),
    .S_AXI_WREADY(s_axi_config_wready),
    .S_AXI_BRESP(s_axi_config_bresp),
    .S_AXI_BVALID(s_axi_config_bvalid),
    .S_AXI_BREADY(s_axi_config_bready),
    .S_AXI_ARADDR(s_axi_config_araddr),
    .S_AXI_ARPROT(s_axi_config_arprot),
    .S_AXI_ARVALID(s_axi_config_arvalid),
    .S_AXI_ARREADY(s_axi_config_arready),
    .S_AXI_RDATA(s_axi_config_rdata),
    .S_AXI_RRESP(s_axi_config_rresp),
    .S_AXI_RVALID(s_axi_config_rvalid),
    .S_AXI_RREADY(s_axi_config_rready)
);

// Instantiation of Axi Bus Interface M_AXI_Data
TFX_Core_v1_0_M_AXI_Data # ( 
    .C_M_TARGET_SLAVE_BASE_ADDR(C_M_AXI_Data_TARGET_SLAVE_BASE_ADDR),
    .C_M_AXI_BURST_LEN(C_M_AXI_Data_BURST_LEN),
    .C_M_AXI_ID_WIDTH(C_M_AXI_Data_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH(C_M_AXI_Data_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH(C_M_AXI_Data_DATA_WIDTH),
    .C_M_AXI_AWUSER_WIDTH(C_M_AXI_Data_AWUSER_WIDTH),
    .C_M_AXI_ARUSER_WIDTH(C_M_AXI_Data_ARUSER_WIDTH),
    .C_M_AXI_WUSER_WIDTH(C_M_AXI_Data_WUSER_WIDTH),
    .C_M_AXI_RUSER_WIDTH(C_M_AXI_Data_RUSER_WIDTH),
    .C_M_AXI_BUSER_WIDTH(C_M_AXI_Data_BUSER_WIDTH),
    
    .C_M_CACHE_VAL(C_M_CACHE_VAL),
    .C_M_PROT_VAL(C_M_PROT_VAL),
    .C_NUM_OF_TRANSFERS(C_NUM_OF_TRANSFERS)
    
) M_AXI_Data (
    .start_i(start),
//    .data_i(data_i),
    .dl_busy(dl_busy),
    
    .cwt_done(cwt_done),
    
    .M_AXI_ACLK(m_axi_data_aclk),
    .M_AXI_ARESETN(m_axi_data_aresetn),
    .M_AXI_AWID(m_axi_data_awid),
    .M_AXI_AWADDR(m_axi_data_awaddr),
    .M_AXI_AWLEN(m_axi_data_awlen),
    .M_AXI_AWSIZE(m_axi_data_awsize),
    .M_AXI_AWBURST(m_axi_data_awburst),
    .M_AXI_AWLOCK(m_axi_data_awlock),
    .M_AXI_AWCACHE(m_axi_data_awcache),
    .M_AXI_AWPROT(m_axi_data_awprot),
    .M_AXI_AWQOS(m_axi_data_awqos),
    .M_AXI_AWUSER(m_axi_data_awuser),
    .M_AXI_AWVALID(m_axi_data_awvalid),
    .M_AXI_AWREADY(m_axi_data_awready),
    .M_AXI_WDATA(m_axi_data_wdata),
    .M_AXI_WSTRB(m_axi_data_wstrb),
    .M_AXI_WLAST(m_axi_data_wlast),
    .M_AXI_WUSER(m_axi_data_wuser),
    .M_AXI_WVALID(m_axi_data_wvalid),
    .M_AXI_WREADY(m_axi_data_wready),
    .M_AXI_BID(m_axi_data_bid),
    .M_AXI_BRESP(m_axi_data_bresp),
    .M_AXI_BUSER(m_axi_data_buser),
    .M_AXI_BVALID(m_axi_data_bvalid),
    .M_AXI_BREADY(m_axi_data_bready),
    .M_AXI_ARID(m_axi_data_arid),
    .M_AXI_ARADDR(m_axi_data_araddr),
    .M_AXI_ARLEN(m_axi_data_arlen),
    .M_AXI_ARSIZE(m_axi_data_arsize),
    .M_AXI_ARBURST(m_axi_data_arburst),
    .M_AXI_ARLOCK(m_axi_data_arlock),
    .M_AXI_ARCACHE(m_axi_data_arcache),
    .M_AXI_ARPROT(m_axi_data_arprot),
    .M_AXI_ARQOS(m_axi_data_arqos),
    .M_AXI_ARUSER(m_axi_data_aruser),
    .M_AXI_ARVALID(m_axi_data_arvalid),
    .M_AXI_ARREADY(m_axi_data_arready),
    .M_AXI_RID(m_axi_data_rid),
    .M_AXI_RDATA(m_axi_data_rdata),
    .M_AXI_RRESP(m_axi_data_rresp),
    .M_AXI_RLAST(m_axi_data_rlast),
    .M_AXI_RUSER(m_axi_data_ruser),
    .M_AXI_RVALID(m_axi_data_rvalid),
    .M_AXI_RREADY(m_axi_data_rready)
);

//wire start_reg;



endmodule
