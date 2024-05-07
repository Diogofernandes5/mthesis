`timescale 1ns / 1ps

module bram_tb(

    );
    
    `define CLK_PERIOD 10

    reg clk, rstn, we, en;
    wire rst;

    reg [5:0] bram_addr;
    reg [31:0] din;

    wire [31:0] dout;

    assign rst = ~ rstn;

    always #(`CLK_PERIOD/2) clk = ~clk;

    initial begin
        clk <= 1;
        rstn <= 0;

        #(`CLK_PERIOD*2) rstn <= 1;
    end

    bram_results dut (
      .clka(clk),    // input wire clka
      .rsta(rst),      // input wire ena
      .ena(en),
      .wea(we),      // input wire [0 : 0] wea
      .addra(bram_addr),  // input wire [1 : 0] addra
      .dina(din),    // input wire [31 : 0] dina
      .douta(dout)  // output wire [31 : 0] douta
    );    

    initial begin
        #(`CLK_PERIOD*5);
        we = 1;
        en = 1;

        bram_addr = 5'h0;
        
        #(`CLK_PERIOD*1);
        bram_addr = 5'h1;

        #(`CLK_PERIOD*1);
        bram_addr = 5'h2;
        
        #(`CLK_PERIOD*1);
        bram_addr = 5'h3;
        
        #(`CLK_PERIOD*1);
        we=0;
//        #(`CLK_PERIOD*1);
        bram_addr = 5'h0;
        
        #(`CLK_PERIOD*2);
        bram_addr = 5'h1;
        
        #(`CLK_PERIOD*1);
        bram_addr = 5'h2;
        
        #(`CLK_PERIOD*1);
        bram_addr = 5'h3;
       
    end
    
    initial begin
        #(`CLK_PERIOD*5);
        din = 32'h1;
        
        #(`CLK_PERIOD*1);
        din = 32'h2;

        #(`CLK_PERIOD*1);
        din = 32'h3;
        
        #(`CLK_PERIOD*1);
        din = 32'h4;
    end

endmodule
