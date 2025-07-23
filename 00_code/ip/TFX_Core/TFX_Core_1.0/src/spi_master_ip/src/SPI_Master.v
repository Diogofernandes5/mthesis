///////////////////////////////////////////////////////////////////////////////
// Description: SPI (Serial Peripheral Interface) Master
//              Creates master based on input configuration.
//              Sends a byte one bit at a time on MOSI
//              Will also receive byte data one bit at a time on MISO.
//              Any data on input byte will be shipped out on MOSI.
//
//              To kick-off transaction, user must pulse TX_DV_i.
//              This module supports multi-byte transmissions by pulsing
//              TX_DV_i and loading up TX_byte_i when TX_ready_o is high.
//
//              This module is only responsible for controlling Clk, MOSI, 
//              and MISO.  If the SPI peripheral requires a chip-select, 
//              this must be done at a higher level.
//
// Note:        clk_i must be at least 2x faster than i_SPI_Clk
//
// Parameters:  SPI_MODE, can be 0, 1, 2, or 3.  See above.
//              CPOL defines whereas the active/idle clock is low or high (active low or high)
//              CPHA defines whereas the sample is taken in the transition to active or to idle.
//              CPHA high means that the sample occurs when theres a transition to idle. 
//              Can be configured in one of 4 modes:
//              Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)
//               0   |             0             |        0
//               1   |             0             |        1
//               2   |             1             |        0
//               3   |             1             |        1
//              More: https://en.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus#Mode_numbers
//              CLKS_PER_HALF_BIT - Sets frequency of SPI_clk_o.  SPI_clk_o is
//              derived from clk_i.  Set to integer number of clocks for each
//              half-bit of SPI data.  E.g. 100 MHz clk_i, CLKS_PER_HALF_BIT = 2
//              would create o_SPI_CLK of 25 MHz.  Must be >= 2
//
///////////////////////////////////////////////////////////////////////////////

module SPI_Master #(
  parameter SPI_MODE = 0,
  parameter CLKS_PER_HALF_BIT = 2) (
  
  // Control/Data Signals,
  input        rstn_i,     // FPGA Reset
  input        clk_i,       // FPGA Clock

  // TX (MOSI) Signals
  input [7:0]  TX_byte_i,        // Byte to transmit on MOSI
  input        TX_DV_i,          // Data Valid Pulse with TX_byte_i
  output reg   TX_ready_o,       // Transmit Ready for next byte

  // RX (MISO) Signals
  output reg       RX_DV_o,     // Data Valid pulse (1 clock cycle)
  output reg [7:0] RX_byte_o,   // Byte received on MISO

  // SPI Interface
  output reg SPI_clk_o,
  input      SPI_MISO_i,
  output reg SPI_MOSI_o
  );

// SPI Interface (All Runs at SPI Clock Domain)
wire CPOL_w;     // Clock polarity
wire CPHA_w;     // Clock phase

reg [$clog2(CLKS_PER_HALF_BIT*2)-1:0] SPI_clk_count_r;
reg SPI_clk_r;
reg [4:0] SPI_clk_edges_r;
reg leading_edge_r;
reg trailing_edge_r;
reg       TX_DV_r;
reg [7:0] TX_byte_r;

reg [2:0] RX_bit_count_r;
reg [2:0] TX_bit_count_r;

// CPOL: Clock Polarity
// CPOL=0 means clock idles at 0, leading edge is rising edge.
// CPOL=1 means clock idles at 1, leading edge is falling edge.
assign CPOL_w  = (SPI_MODE == 2) | (SPI_MODE == 3);

// CPHA: Clock Phase
// CPHA=0 means the "out" side changes the data on trailing edge of clock
//              the "in" side captures data on leading edge of clock
// CPHA=1 means the "out" side changes the data on leading edge of clock
//              the "in" side captures data on the trailing edge of clock
assign CPHA_w  = (SPI_MODE == 1) | (SPI_MODE == 3);


// Purpose: Generate SPI Clock correct number of times when DV pulse comes
always @(posedge clk_i or negedge rstn_i) begin
  if (~rstn_i) begin
    TX_ready_o      <= 1'b0;
    SPI_clk_edges_r <= 0;
    leading_edge_r  <= 1'b0;
    trailing_edge_r <= 1'b0;
    SPI_clk_r       <= CPOL_w; // assign default state to idle state
    SPI_clk_count_r <= 0;
  end
  else begin
    // Default assignments
    leading_edge_r  <= 1'b0;
    trailing_edge_r <= 1'b0;
    
    if (TX_DV_i) begin
      TX_ready_o      <= 1'b0;
      SPI_clk_edges_r <= 16;  // Total # edges in one byte ALWAYS 16
    end
    
    else if (SPI_clk_edges_r > 0) begin
      TX_ready_o <= 1'b0;
      
      // Leading Edge
      if (SPI_clk_count_r == CLKS_PER_HALF_BIT-1) begin
        SPI_clk_edges_r <= SPI_clk_edges_r - 1'b1;
        leading_edge_r  <= 1'b1;
        SPI_clk_count_r <= SPI_clk_count_r + 1'b1;
        SPI_clk_r       <= ~SPI_clk_r;
      end

      // Trailing edge
      else if (SPI_clk_count_r == CLKS_PER_HALF_BIT*2-1) begin
        SPI_clk_edges_r <= SPI_clk_edges_r - 1'b1;
        trailing_edge_r <= 1'b1;
        SPI_clk_count_r <= 0;
        SPI_clk_r       <= ~SPI_clk_r;
      end
      
      else
        SPI_clk_count_r <= SPI_clk_count_r + 1'b1;
     
    end  

    else 
      TX_ready_o <= 1'b1;
  end // else: !if(~rstn_i)
end // always @ (posedge clk_i or negedge rstn_i)


// Purpose: Register TX_byte_i when Data Valid is pulsed.
// Keeps local storage of byte in case higher level module changes the data
always @(posedge clk_i or negedge rstn_i) begin
  if (~rstn_i) begin
    TX_byte_r <= 8'h00;
    TX_DV_r   <= 1'b0;
  end

  else begin
    TX_DV_r <= TX_DV_i; // 1 clock cycle delay
    
    if (TX_DV_i)
      TX_byte_r <= TX_byte_i;
  end // else: !if(~rstn_i)
end // always @ (posedge clk_i or negedge rstn_i)

// Purpose: Generate MOSI data
// Works with both CPHA=0 and CPHA=1
always @(posedge clk_i or negedge rstn_i) begin
  if (~rstn_i) begin
    SPI_MOSI_o     <= 1'b0;
    TX_bit_count_r <= 3'b111; // send MSb first
  end

  else begin
    // If ready is high, reset bit counts to default
    if (TX_ready_o) 
      TX_bit_count_r <= 3'b111;

    // Catch the case where we start transaction and CPHA = 0
    else if (TX_DV_r & ~CPHA_w) begin
      SPI_MOSI_o     <= TX_byte_r[3'b111];
      TX_bit_count_r <= 3'b110;
    end

    else if ((leading_edge_r & CPHA_w) | (trailing_edge_r & ~CPHA_w)) begin
      TX_bit_count_r <= TX_bit_count_r - 1'b1;
      SPI_MOSI_o     <= TX_byte_r[TX_bit_count_r];
    end
  end
end


// Purpose: Read in MISO data.
always @(posedge clk_i or negedge rstn_i) begin
  if (~rstn_i) begin
    RX_byte_o      <= 8'h00;
    RX_DV_o        <= 1'b0;
    RX_bit_count_r <= 3'b111;
  end

  else begin
    // Default Assignments
    RX_DV_o   <= 1'b0;

    if (TX_ready_o) // Check if ready is high, if so reset bit count to default
      RX_bit_count_r <= 3'b111;
    
    else if ((leading_edge_r & ~CPHA_w) | (trailing_edge_r & CPHA_w)) begin
      RX_byte_o[RX_bit_count_r] <= SPI_MISO_i;  // Sample data
      RX_bit_count_r            <= RX_bit_count_r - 1'b1;
      
      if (RX_bit_count_r == 3'b000)
        RX_DV_o   <= 1'b1;   // Byte done, pulse Data Valid
    end
  end
end

// Purpose: Add clock delay to signals for alignment.
always @(posedge clk_i or negedge rstn_i) begin
  if (~rstn_i)
    SPI_clk_o  <= CPOL_w;

  else
    SPI_clk_o <= SPI_clk_r;   
end // always @ (posedge clk_i or negedge rstn_i)


endmodule // SPI_Master
