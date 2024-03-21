`timescale 1ns / 1ps

module adder4_tb(

    );
    
    reg [3:0] x, y;
    reg c_in;
    wire [3:0] s;
    wire v;
    
    adder4 dut(
        .x(x),
        .y(y),
        .c_in(c_in),
        .s(s),    
        .v(v)     
        );
        
     initial begin
        x <= 4'b0000;
        y <= 4'b0000;
        c_in <= 0;
        
        #(10);
        
        x <= 4'b0100;
        y <= 4'b0001;
        c_in <= 0;
        
        #(10);
        
        x <= 4'b0111;
        y <= 4'b0001;
        c_in <= 0;
     
      end
      
endmodule