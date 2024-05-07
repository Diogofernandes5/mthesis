`timescale 1ns / 1ps

module demux_tb(

    );

    reg clk, rst;

    reg sel;

    wire [31:0] dout0, dout1;

    always begin
        clk <= 0;
        #(10)
            ;
        clk <= 1;
        #(10)
            ;
    end

    demux2_0 dut (
        .d(32'd5),
        .s(sel),
        .y0(dout0),
        .y1(dout1)
    );
    initial begin
        sel = 1'h0;
        
        #(20);
        sel = 1'h1;
    end


endmodule
