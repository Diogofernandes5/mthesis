///////////////////////////////////////////////////////////////////////////////
// Description:       Simple test bench for SPI Master module
///////////////////////////////////////////////////////////////////////////////


module SPI_Master_TB ();
  
parameter SPI_MODE = 3; // CPOL = 1, CPHA = 1
parameter CLKS_PER_HALF_BIT = 4;  // 6.25 MHz
parameter MAIN_CLK_DELAY = 2;  // 25 MHz

logic rstn_r     = 1'b0;  
logic SPI_clk_w;
logic Clk_r       = 1'b0;
logic SPI_MOSI_w;

// Master Specific
logic [7:0] Master_TX_Byte_r = 0;
logic Master_TX_DV_r = 1'b0;
logic Master_TX_Ready_w;
logic Master_RX_DV_w;
logic [7:0] Master_RX_Byte_w;

// Clock Generators:
always #(MAIN_CLK_DELAY) Clk_r = ~Clk_r;

// Instantiate UUT
SPI_Master #(.SPI_MODE(SPI_MODE),
             .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT)) 
  SPI_Master_UUT (
    // Control/Data Signals,
    .rstn_i(rstn_r),     // FPGA Reset
    .clk_i(Clk_r),         // FPGA Clock

    // TX (MOSI) Signals
    .TX_byte_i(Master_TX_Byte_r),     // Byte to transmit on MOSI
    .TX_DV_i(Master_TX_DV_r),         // Data Valid Pulse with i_TX_Byte
    .TX_ready_o(Master_TX_Ready_w),   // Transmit Ready for Byte

    // RX (MISO) Signals
    .RX_DV_o(Master_RX_DV_w),       // Data Valid pulse (1 clock cycle)
    .RX_byte_o(Master_RX_Byte_w),   // Byte received on MISO

    // SPI Interface
    .SPI_clk_o(SPI_clk_w),
    .SPI_MISO_i(SPI_MOSI_w),
    .SPI_MOSI_o(SPI_MOSI_w)
);

// Sends a single byte from master.
task SendSingleByte(input [7:0] data);
  @(posedge Clk_r);
  Master_TX_Byte_r <= data;
  Master_TX_DV_r   <= 1'b1;
  @(posedge Clk_r);
  Master_TX_DV_r <= 1'b0;
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
  
  // Test single byte
  SendSingleByte(8'hC1);
  $display("Sent out 0xC1, Received 0x%X", Master_RX_Byte_w); 
  
  // Test double byte
  SendSingleByte(8'hBE);
  $display("Sent out 0xBE, Received 0x%X", Master_RX_Byte_w); 
  SendSingleByte(8'hEF);
  $display("Sent out 0xEF, Received 0x%X", Master_RX_Byte_w); 
  repeat(10) @(posedge Clk_r);
  $finish();      
end // initial begin

endmodule // SPI_Slave
