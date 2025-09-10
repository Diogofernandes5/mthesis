
`timescale 1 ns / 1 ps

module test_spi_read_v1_0 #
(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line


    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_S00_AXI_DATA_WIDTH	= 32,
    parameter integer C_S00_AXI_ADDR_WIDTH	= 4
)
(
    // Users to add ports here
    input wire dl_busy_i,
    
    input wire intr_i,
    
    output reg config_done_o,
    
    output wire SPI_clk_o,
    input wire SPI_MISO_i,
    output wire SPI_MOSI_o,
    output wire SPI_CS_o,
    
    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Slave Bus Interface S00_AXI
    input wire  s00_axi_aclk,
    input wire  s00_axi_aresetn,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
    input wire [2 : 0] s00_axi_awprot,
    input wire  s00_axi_awvalid,
    output wire  s00_axi_awready,
    input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
    input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input wire  s00_axi_wvalid,
    output wire  s00_axi_wready,
    output wire [1 : 0] s00_axi_bresp,
    output wire  s00_axi_bvalid,
    input wire  s00_axi_bready,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
    input wire [2 : 0] s00_axi_arprot,
    input wire  s00_axi_arvalid,
    output wire  s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
    output wire [1 : 0] s00_axi_rresp,
    output wire  s00_axi_rvalid,
    input wire  s00_axi_rready
);

localparam ACC_RESOLUTION = 13;
localparam ACC_RANGE = 3;
localparam ACC_INT_INV = 0;
localparam DATA_PTS_NUM = 1;

reg intr;
wire intr_w;
reg [15:0] counter;

// Module Outputs
wire [12:0] data;
wire data_valid;

wire config_done;
reg config_flag;

wire [7:0] axis_to_read;

wire rstn;

// Instantiation of Axi Bus Interface S00_AXI
test_spi_read_v1_0_S00_AXI # ( 
    .C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
) test_spi_read_v1_0_S00_AXI_inst (
    .data_valid(data_valid),
    .data(data),
    
    .axis_to_read(axis_to_read),
    .rstn(rstn),

    .S_AXI_ACLK(s00_axi_aclk),
    .S_AXI_ARESETN(s00_axi_aresetn),
    .S_AXI_AWADDR(s00_axi_awaddr),
    .S_AXI_AWPROT(s00_axi_awprot),
    .S_AXI_AWVALID(s00_axi_awvalid),
    .S_AXI_AWREADY(s00_axi_awready),
    .S_AXI_WDATA(s00_axi_wdata),
    .S_AXI_WSTRB(s00_axi_wstrb),
    .S_AXI_WVALID(s00_axi_wvalid),
    .S_AXI_WREADY(s00_axi_wready),
    .S_AXI_BRESP(s00_axi_bresp),
    .S_AXI_BVALID(s00_axi_bvalid),
    .S_AXI_BREADY(s00_axi_bready),
    .S_AXI_ARADDR(s00_axi_araddr),
    .S_AXI_ARPROT(s00_axi_arprot),
    .S_AXI_ARVALID(s00_axi_arvalid),
    .S_AXI_ARREADY(s00_axi_arready),
    .S_AXI_RDATA(s00_axi_rdata),
    .S_AXI_RRESP(s00_axi_rresp),
    .S_AXI_RVALID(s00_axi_rvalid),
    .S_AXI_RREADY(s00_axi_rready)
);

assign intr_w = intr_i;

// generate interrupt to read data - temporary
always @(posedge s00_axi_aclk or negedge s00_axi_aresetn) begin
    if(~s00_axi_aresetn) begin
        counter <= 16'd0;
        intr <= 0;
    end
    else if(axis_to_read < 8'h32 || axis_to_read > 8'h37) begin
        if(intr)
            counter <= 16'd0;
        else if (counter == 16'd60000) begin
            counter <= 16'd0;
            intr <= 1;
        end
        else
            counter <= counter + 1;
    end
    else if(intr_i)
        intr <= intr_w;
end

reg [7:0] cycle_counter;

// To generate the interrupt config_done_o
always @(posedge s00_axi_aclk or negedge s00_axi_aresetn) begin
    if(~s00_axi_aresetn) begin
        config_done_o <= 0;
        config_flag <= 0;
        cycle_counter <= 0;
    end
    else if(config_done && !config_flag) begin
        config_done_o <= 1;
        config_flag <= 1;
    end
    else if(config_done_o) begin
        if(cycle_counter == 8'd4)
            config_done_o <= 0;
        else 
            cycle_counter <= cycle_counter + 1;
    end
    else
        config_done_o <= 0;
end

spi_read_acc #(
  .ACC_RESOLUTION(ACC_RESOLUTION),
  .ACC_RANGE(ACC_RANGE),
  .ACC_INT_INV(ACC_INT_INV),
  .DATA_PTS_NUM(DATA_PTS_NUM)
) spi_read_acc_ip (
  .clk(s00_axi_aclk),
  .rstn(rstn),
  .dl_busy_i(dl_busy_i),
  .intr_i(intr),
  .axis_to_read(axis_to_read),
  .data_o(data),
  .config_done(config_done),
  .data_valid_o(data_valid),
  .SPI_clk_o(SPI_clk_o),
  .SPI_MISO_i(SPI_MISO_i),
  .SPI_MOSI_o(SPI_MOSI_o),
  .SPI_CS_o(SPI_CS_o)
);
// User logic ends

endmodule
