`timescale 1ns / 1ps

module tb_spi_read_acc;

// Parameters
parameter ACC_RESOLUTION = 13;
parameter ACC_RANGE = 3;
parameter ACC_INT_INV = 0;
parameter DATA_PTS_NUM = 1;

// Module Inputs
reg clk;
reg rstn;
reg dl_busy_i;
reg intr;

// Module Outputs
wire [31:0] data;
//wire [ACC_RESOLUTION-1:0] data;
wire data_valid;
wire SPI_clk_o;
reg SPI_MISO_i;
wire SPI_MOSI_o;
wire SPI_CS_o;

// Debug Outputs for Internal Signals
wire [3:0] tx_count;
wire tx_dv;
wire [7:0] tx_byte;
wire tx_ready;
wire [3:0] rx_count;
wire rx_dv;
wire [7:0] rx_byte;
wire [3:0] cmd_index;
wire config_done;
wire [15:0] acc_data;
wire bram_en;
wire bram_we;
wire [9:0] bram_addr;
wire [31:0] bram_din;
wire [10:0] data_counter;
wire [2:0] state;
wire [12:0] axis_dt_pnt;

// AUX
reg [2:0] send_index;
wire [1:0] bram_latency_shift;

wire [31:0] data_32b;

// Instantiate the DUT (Device Under Test)
spi_read_acc #(
  .ACC_RESOLUTION(ACC_RESOLUTION),
  .ACC_RANGE(ACC_RANGE),
  .ACC_INT_INV(ACC_INT_INV),
  .DATA_PTS_NUM(DATA_PTS_NUM)
) dut (
  .clk(clk),
  .rstn(rstn),
  .dl_busy_i(dl_busy_i),
  .intr_i(intr),
  .data_o(data),
  .data_valid_o(data_valid),
  .SPI_clk_o(SPI_clk_o),
  .SPI_MISO_i(SPI_MISO_i),
  .SPI_MOSI_o(SPI_MOSI_o),
  .SPI_CS_o(SPI_CS_o),
  .tx_count(tx_count),
  .tx_dv(tx_dv),
  .tx_byte(tx_byte),
  .tx_ready(tx_ready),
  .rx_count(rx_count),
  .rx_dv(rx_dv),
  .rx_byte(rx_byte),
  .cmd_index(cmd_index),
  .config_done(config_done),
  .acc_data(acc_data),
  .bram_en(bram_en),
  .bram_we(bram_we),
  .bram_addr(bram_addr),
  .bram_din(bram_din),
  .data_counter(data_counter),
  .state(state),
  .axis_dt_pnt(axis_dt_pnt),
  .bram_latency_shift(bram_latency_shift)
);

//assign data_32b = {19'd0, data};

// Clock Generation
initial begin
  clk = 0;
  forever #5 clk = ~clk; // 100 MHz clock (10 ns period)
end

// Reset Generation
initial begin
  rstn = 0;
  #20 rstn = 1; // Release reset after 20 ns
end

// SPI Slave Model
reg [7:0] spi_slave_data [0:7]; // Simulate SPI slave data
reg [2:0] spi_slave_index;
reg[11:0] intr_count;

initial begin
  // Initialize SPI slave data
  spi_slave_data[0] = 8'hAD; // Example data
  spi_slave_data[1] = 8'h1D;
  spi_slave_data[2] = 8'h12;
  spi_slave_data[3] = 8'h34;
  spi_slave_data[4] = 8'h56;
  spi_slave_data[5] = 8'h78;
  spi_slave_data[6] = 8'h9A;
  spi_slave_data[7] = 8'hBC;

  spi_slave_index = 0;
  SPI_MISO_i = 0;
end

// SPI Slave Behavior
always @(negedge SPI_clk_o or negedge rstn) begin
  if (!rstn) begin
    spi_slave_index <= 0;
    SPI_MISO_i <= 0;
    send_index <= 3'd0;
  end else if (SPI_CS_o == 0 && config_done && rx_count > 0) begin
    SPI_MISO_i <= spi_slave_data[spi_slave_index][7 - send_index];
    send_index <= send_index + 1;
    if (send_index == 7) begin
      spi_slave_index <= spi_slave_index + 1;
    end
  end
end

task send_intr;
    input int duration; // Duration for which the interrupt is high
    begin
        intr = 1; // Assert interrupt
        #duration; // Hold interrupt for the specified duration
        intr = 0; // Deassert interrupt
    end
endtask

// Test Stimulus
initial begin
  // Initialize inputs
  send_index <= 3'd0;
  dl_busy_i = 0;
  intr = 0;
  SPI_MISO_i = 0;

  // Wait for reset to complete
  #30;

  // Simulate SPI communication
  wait(config_done);
  #100;

  // Trigger interrupt
//  intr = 1;
//  #10;
//  intr = 0;
//  send_intr(10);

  // Wait for data to be read and stored
//  #1000;
//    for (intr_count = 0; intr_count < DATA_PTS_NUM; intr_count++) begin
//        wait(SPI_CS_o)
//            send_intr(10);
//    end
//  send_int(10);

  // Fork a parallel thread to wait for negedge data_valid
  fork
    // Wait for negedge data_valid
    @(negedge data_valid);
  join
  #30;
  $finish;
end

always @(posedge clk or negedge rstn) begin
    if(~rstn) begin
        intr_count <= 13'd0;
    end
    else if(config_done && SPI_CS_o && (intr_count < (DATA_PTS_NUM))) begin
        send_intr(10);
        //intr_count <= intr_count + 1'd1;
    end
end

always @(negedge SPI_CS_o) begin
    if(config_done)
        intr_count = intr_count + 1;
end

//  // Monitor Signals
//  initial begin
//    $monitor("Time: %0t | clk: %b | rstn: %b | state: %b | cmd_index: %h | tx_byte: %h | rx_byte: %h | acc_data: %h | bram_addr: %h | bram_din: %h | bram_we: %b",
//             $time, clk, rstn, state, cmd_index, tx_byte, rx_byte, acc_data, bram_addr, bram_din, bram_we);
//  end

endmodule