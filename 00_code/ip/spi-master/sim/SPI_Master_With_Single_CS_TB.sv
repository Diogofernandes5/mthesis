///////////////////////////////////////////////////////////////////////////////
// Description:       Simple test bench for SPI Master with CS module
///////////////////////////////////////////////////////////////////////////////

module SPI_Master_With_Single_CS_TB ();
  
parameter SPI_MODE = 3;           // CPOL = 1, CPHA = 1
parameter CLKS_PER_HALF_BIT = 4;  // 6.25 MHz
parameter MAIN_CLK_DELAY = 2;     // 25 MHz
parameter MAX_BYTES_PER_CS = 3;   // 2 bytes per chip select
parameter CS_INACTIVE_CLKS = 10;  // Adds delay between bytes

logic rstn_r      = 1'b0;  
logic SPI_clk_w;
logic SPI_En_r    = 1'b0;
logic Clk_r       = 1'b0;
logic SPI_CS_w;
logic SPI_MOSI_w;
logic SPI_MISO_w;

// Master Specific
logic [7:0] Master_TX_Byte_r = 0;
logic Master_TX_DV_r = 1'b0;
logic Master_TX_Ready_w;
logic Master_RX_DV_w;
logic [7:0] Master_RX_Byte_w;
logic [$clog2(MAX_BYTES_PER_CS+1)-1:0] Master_RX_Count_w, Master_TX_Count_r = 2'd3;

// Clock Generators:
always #(MAIN_CLK_DELAY) Clk_r = ~Clk_r;

assign SPI_MISO_w = SPI_MOSI_w; 

// Instantiate UUT
SPI_Master_With_Single_CS
  #(.SPI_MODE(SPI_MODE),
  .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT),
  .MAX_BYTES_PER_CS(MAX_BYTES_PER_CS),
  .CS_INACTIVE_CLKS(CS_INACTIVE_CLKS)) 
  UUT (
  // Control/Data Signals,
  .rstn_i(rstn_r),     // FPGA Reset
  .clk_i(Clk_r),         // FPGA Clock

  // TX (MOSI) Signals
  .TX_count_i(Master_TX_Count_r),   // Number of bytes per CS
  .TX_byte_i(Master_TX_Byte_r),     // Byte to transmit on MOSI
  .TX_DV_i(Master_TX_DV_r),         // Data Valid Pulse with i_TX_Byte
  .TX_ready_o(Master_TX_Ready_w),   // Transmit Ready for Byte

  // RX (MISO) Signals
  .RX_count_o(Master_RX_Count_w), // Index of RX'd byte
  .RX_DV_o(Master_RX_DV_w),       // Data Valid pulse (1 clock cycle)
  .RX_byte_o(Master_RX_Byte_w),   // Byte received on MISO

  // SPI Interface
  .SPI_clk_o(SPI_clk_w),
  .SPI_MISO_i(SPI_MISO_w),
  .SPI_MOSI_o(SPI_MOSI_w),
  .SPI_CS_o(SPI_CS_w)
  );


// Sends a single byte from master.  Will drive CS on its own.
task SendSingleByte(input [7:0] data);
  @(posedge Clk_r);
  Master_TX_Byte_r <= data;
  Master_TX_DV_r   <= 1'b1;
  @(posedge Clk_r);
  Master_TX_DV_r <= 1'b0;
  @(posedge Clk_r);
  @(posedge Master_TX_Ready_w);
endtask // SendSingleByte

initial begin
  // Required for EDA Playground
  $dumpfile("dump.vcd"); 
  $dumpvars;
  
  repeat(10) @(posedge Clk_r);
  rstn_r  = 1'b0;
  repeat(10) @(posedge Clk_r);
  rstn_r          = 1'b1;
  
  // Test sending 2 bytes
  SendSingleByte(8'hC1);
  $display("Sent out 0xC1, Received 0x%X", Master_RX_Byte_w); 
  SendSingleByte(8'hC2);
  $display("Sent out 0xC2, Received 0x%X", Master_RX_Byte_w); 
  SendSingleByte(8'hC3);
  $display("Sent out 0xC3, Received 0x%X", Master_RX_Byte_w); 
  
  repeat(100) @(posedge Clk_r);
  $finish();      
end // initial begin

endmodule // SPI_Master_With_Single_CS_TB