`timescale 1ns / 1ps

module bram_tb(

    );

    reg clk, rst, we;

    reg [5:0] bram_addr;
    reg [31:0] din;

    wire [31:0] dout;

    always begin
        clk <= 0;
        #(10)
            ;
        clk <= 1;
        #(10)
            ;
    end

    bram your_instance_name (
      .clka(clk),    // input wire clka
      .ena(1'b1),      // input wire ena
      .wea(we),      // input wire [0 : 0] wea
      .addra(bram_addr),  // input wire [1 : 0] addra
      .dina(din),    // input wire [31 : 0] dina
      .douta(dout)  // output wire [31 : 0] douta
    );

    initial begin
        #(30);
        we = 1;
        bram_addr = 5'h0;
        din = 32'h0;
        
        #(20);
        bram_addr = 5'h1;
        din = 32'h1;

        #(20);
        bram_addr = 5'h2;
        din = 32'h2;
        
         #(20);
        bram_addr = 5'h3;
        din = 32'h3;
        
        #(20);
        we=0;
        bram_addr = 5'h0;
        
        #(20);
        bram_addr = 5'h1;
        
        #(20);
        bram_addr = 5'h2;
        
        #(20);
        bram_addr = 5'h3;
       
    end


endmodule
