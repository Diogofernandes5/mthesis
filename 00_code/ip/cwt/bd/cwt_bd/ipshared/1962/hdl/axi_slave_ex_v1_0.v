
`timescale 1 ns / 1 ps

	module axi_slave_ex_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_AXI
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here
        input wire [C_S_AXI_DATA_WIDTH-1:0] reg0,
        input wire [C_S_AXI_DATA_WIDTH-1:0] reg1,
        input wire [C_S_AXI_DATA_WIDTH-1:0] reg2,
        input wire [C_S_AXI_DATA_WIDTH-1:0] reg3,
        input wire [C_S_AXI_DATA_WIDTH-1:0] reg4,
        input wire [C_S_AXI_DATA_WIDTH-1:0] reg5,
        input wire [C_S_AXI_DATA_WIDTH-1:0] reg6,
        input wire [C_S_AXI_DATA_WIDTH-1:0] reg7,
        
        // Add more if needed

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_AXI
		input wire  s_axi_aclk,
		input wire  s_axi_aresetn,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
		input wire [2 : 0] s_axi_awprot,
		input wire  s_axi_awvalid,
		output wire  s_axi_awready,
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] s_axi_wstrb,
		input wire  s_axi_wvalid,
		output wire  s_axi_wready,
		output wire [1 : 0] s_axi_bresp,
		output wire  s_axi_bvalid,
		input wire  s_axi_bready,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
		input wire [2 : 0] s_axi_arprot,
		input wire  s_axi_arvalid,
		output wire  s_axi_arready,
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
		output wire [1 : 0] s_axi_rresp,
		output wire  s_axi_rvalid,
		input wire  s_axi_rready
	);
	
reg [C_S_AXI_DATA_WIDTH-1:0] reg0_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg1_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg2_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg3_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg4_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg5_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg6_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg7_r;
	
// Instantiation of Axi Bus Interface S_AXI
axi_slave_ex_v1_0_S_AXI # ( 
    .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)
) axi_slave_ex_v1_0_S_AXI_inst (
    .S_AXI_ACLK(s_axi_aclk),
    .S_AXI_ARESETN(s_axi_aresetn),
    .S_AXI_AWADDR(s_axi_awaddr),
    .S_AXI_AWPROT(s_axi_awprot),
    .S_AXI_AWVALID(s_axi_awvalid),
    .S_AXI_AWREADY(s_axi_awready),
    .S_AXI_WDATA(s_axi_wdata),
    .S_AXI_WSTRB(s_axi_wstrb),
    .S_AXI_WVALID(s_axi_wvalid),
    .S_AXI_WREADY(s_axi_wready),
    .S_AXI_BRESP(s_axi_bresp),
    .S_AXI_BVALID(s_axi_bvalid),
    .S_AXI_BREADY(s_axi_bready),
    .S_AXI_ARADDR(s_axi_araddr),
    .S_AXI_ARPROT(s_axi_arprot),
    .S_AXI_ARVALID(s_axi_arvalid),
    .S_AXI_ARREADY(s_axi_arready),
    .S_AXI_RDATA(s_axi_rdata),
    .S_AXI_RRESP(s_axi_rresp),
    .S_AXI_RVALID(s_axi_rvalid),
    .S_AXI_RREADY(s_axi_rready),
    
    .reg0(reg0_r),
    .reg1(reg1_r),
    .reg2(reg2_r),
    .reg3(reg3_r),
    .reg4(reg4_r),
    .reg5(reg5_r),
    .reg6(reg6_r),
    .reg7(reg7_r)
);

// Add user logic here
always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
    if(!s_axi_aresetn) begin  	
        reg0_r <= 32'd0;  	
        reg1_r <= 32'd0;  	
        reg2_r <= 32'd0;  	
        reg3_r <= 32'd0;  	
        reg4_r <= 32'd0;  	
        reg5_r <= 32'd0;  	
        reg6_r <= 32'd0;  	
        reg7_r <= 32'd0;
    end
    else begin 
        reg0_r <= reg0;
        reg1_r <= reg1;
        reg2_r <= reg2;
        reg3_r <= reg3;
        reg4_r <= reg4;
        reg5_r <= reg5;
        reg6_r <= reg6;
        reg7_r <= reg7;
    end
end

// User logic ends

endmodule
