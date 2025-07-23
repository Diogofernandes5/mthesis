`timescale 1 ps / 1 ps

module TFX_Core_v1_0_bfm_1_wrapper
   (ACLK,
    ARESETN,
    SPI_CS,
    SPI_MISO,
    SPI_MOSI,
    SPI_clk,
    acc_send_done,
    cwt_send_done,
    intr);
  input ACLK;
  input ARESETN;
  output SPI_CS;
  input SPI_MISO;
  output SPI_MOSI;
  output SPI_clk;
  output acc_send_done;
  output cwt_send_done;
  input intr;

  wire ACLK;
  wire ARESETN;
  wire SPI_CS;
  wire SPI_MISO;
  wire SPI_MOSI;
  wire SPI_clk;
  wire acc_send_done;
  wire cwt_send_done;
  wire intr;

  master_test master_test_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .SPI_CS(SPI_CS),
        .SPI_MISO(SPI_MISO),
        .SPI_MOSI(SPI_MOSI),
        .SPI_clk(SPI_clk),
        .acc_send_done(acc_send_done),
        .cwt_send_done(cwt_send_done),
        .intr(intr));
endmodule