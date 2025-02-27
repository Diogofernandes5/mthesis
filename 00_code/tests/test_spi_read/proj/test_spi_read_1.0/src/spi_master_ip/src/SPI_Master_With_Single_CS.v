///////////////////////////////////////////////////////////////////////////////
// Description: SPI (Serial Peripheral Interface) Master
//              With single chip-select (AKA Slave Select) capability
//
//              Supports arbitrary length byte transfers.
// 
//              Instantiates a SPI Master and adds single CS.
//              If multiple CS signals are needed, will need to use different
//              module, OR multiplex the CS from this at a higher level.
//
// Note:        clk_i must be at least 2x faster than i_SPI_Clk
//
// Parameters:  SPI_MODE, can be 0, 1, 2, or 3.  See above.
//              Can be configured in one of 4 modes:
//              Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)
//               0   |             0             |        0
//               1   |             0             |        1
//               2   |             1             |        0
//               3   |             1             |        1
//
//              CLKS_PER_HALF_BIT - Sets frequency of SPI_clk_o.  SPI_clk_o is
//              derived from clk_i.  Set to integer number of clocks for each
//              half-bit of SPI data.  E.g. 100 MHz clk_i, CLKS_PER_HALF_BIT = 2
//              would create o_SPI_CLK of 25 MHz.  Must be >= 2
//
//              MAX_BYTES_PER_CS - Set to the maximum number of bytes that
//              will be sent during a single CS-low pulse.
// 
//              CS_INACTIVE_CLKS - Sets the amount of time in clock cycles to
//              hold the state of Chip-Selct high (inactive) before next 
//              command is allowed on the line.  Useful if chip requires some
//              time when CS is high between trasnfers.
///////////////////////////////////////////////////////////////////////////////

module SPI_Master_With_Single_CS #(
  parameter SPI_MODE = 0,
  parameter CLKS_PER_HALF_BIT = 2,
  parameter MAX_BYTES_PER_CS = 2,
  parameter CS_INACTIVE_CLKS = 1) (
   
  // Control/Data Signals,
  input        rstn_i,     // FPGA Reset
  input        clk_i,       // FPGA Clock

  // TX (MOSI) Signals
  input [$clog2(MAX_BYTES_PER_CS+1)-1:0] TX_count_i,  // # bytes per CS low
  input [7:0]  TX_byte_i,       // Byte to transmit on MOSI
  input        TX_DV_i,         // Data Valid Pulse with TX_byte_i
  output       TX_ready_o,      // Transmit Ready for next byte

  // RX (MISO) Signals
  output reg [$clog2(MAX_BYTES_PER_CS+1)-1:0] RX_count_o,  // Index RX byte
  output       RX_DV_o,     // Data Valid pulse (1 clock cycle)
  output [7:0] RX_byte_o,   // Byte received on MISO

  // SPI Interface
  output SPI_clk_o,
  input  SPI_MISO_i,
  output SPI_MOSI_o,
  output SPI_CS_o
  );

localparam S_IDLE        = 2'b00;
localparam S_TRANSFER    = 2'b01;
localparam S_CS_INACTIVE = 2'b10;

reg [1:0] SM_CS_r; // state machine cs (state reg)
reg CS_r;
reg [$clog2(CS_INACTIVE_CLKS)-1:0] CS_Inactive_Count_r;
reg [$clog2(MAX_BYTES_PER_CS+1)-1:0] TX_Count_r;
wire Master_Ready_w;

// Instantiate Master
SPI_Master #(.SPI_MODE(SPI_MODE),
             .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT)) 
SPI_Master_Inst (
  // Control/Data Signals,
  .rstn_i(rstn_i),     // FPGA Reset
  .clk_i(clk_i),         // FPGA Clock

  // TX (MOSI) Signals
  .TX_byte_i(TX_byte_i),         // Byte to transmit
  .TX_DV_i(TX_DV_i),             // Data Valid Pulse 
  .TX_ready_o(Master_Ready_w),   // Transmit Ready for Byte

  // RX (MISO) Signals
  .RX_DV_o(RX_DV_o),       // Data Valid pulse (1 clock cycle)
  .RX_byte_o(RX_byte_o),   // Byte received on MISO

  // SPI Interface
  .SPI_clk_o(SPI_clk_o),
  .SPI_MISO_i(SPI_MISO_i),
  .SPI_MOSI_o(SPI_MOSI_o)
);

// Purpose: Control CS line using State Machine
always @(posedge clk_i or negedge rstn_i)
begin
  if (~rstn_i) begin
    SM_CS_r <= S_IDLE;
    CS_r  <= 1'b1;   // Resets to high
    TX_Count_r <= 0;
    CS_Inactive_Count_r <= CS_INACTIVE_CLKS;
  end
  else begin
    case (SM_CS_r)      
      S_IDLE: begin
        if (CS_r & TX_DV_i) begin// Start of transmission
          TX_Count_r <= TX_count_i - 1'b1; // Register TX Count
          CS_r     <= 1'b0;       // Drive CS low
          SM_CS_r  <= S_TRANSFER;   // Transfer bytes
        end
      end

      S_TRANSFER: begin
        // Wait until SPI is done transferring do next thing
        if (Master_Ready_w) begin
          if (TX_Count_r > 0) begin
            if (TX_DV_i) begin
              TX_Count_r <= TX_Count_r - 1'b1;
            end
          end
          else begin
            CS_r  <= 1'b1; // we done, so set CS high
            CS_Inactive_Count_r <= CS_INACTIVE_CLKS;
            SM_CS_r             <= S_CS_INACTIVE;
          end // else: !if(TX_Count_r > 0)
        end // if (Master_Ready_w)
      end // case: TRANSFER

      S_CS_INACTIVE: begin
        if (CS_Inactive_Count_r > 0) begin
          CS_Inactive_Count_r <= CS_Inactive_Count_r - 1'b1;
        end
        else begin
          SM_CS_r <= S_IDLE;
        end
      end

      default: begin
        CS_r  <= 1'b1; // we done, so set CS high
        SM_CS_r <= S_IDLE;
      end
    endcase // case (SM_CS_r)
  end
end // always @ (posedge clk_i or negedge rstn_i)


// Purpose: Keep track of RX_Count
always @(posedge clk_i) begin
  if (CS_r) 
    RX_count_o <= 0;

  else if (RX_DV_o)
    RX_count_o <= RX_count_o + 1'b1;
end

assign SPI_CS_o = CS_r;

assign TX_ready_o  = ((SM_CS_r == S_IDLE) | (SM_CS_r == S_TRANSFER && Master_Ready_w == 1'b1 && TX_Count_r > 0)) & ~TX_DV_i;

endmodule // SPI_Master_With_Single_CS