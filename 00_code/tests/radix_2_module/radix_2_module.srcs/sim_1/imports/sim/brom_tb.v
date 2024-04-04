`timescale 1ns / 1ps

module brom_tb(

    );

    reg clk, rst;

    reg [5:0] twiddle_addr;

    wire [27:0] dout;

    always begin
        clk <= 0;
        #(10)
            ;
        clk <= 1;
        #(10)
            ;
    end

    stage6_BROM twiddles_brom (
      .clka(clk),    // input wire clka
      .addra(twiddle_addr),  // input wire [5 : 0] addra
      .douta(dout)  // output wire [27 : 0] douta
    );

    initial begin
        #(30);
        twiddle_addr = 5'h0;
        
        #(20);
        twiddle_addr = 5'h1;
    end


endmodule