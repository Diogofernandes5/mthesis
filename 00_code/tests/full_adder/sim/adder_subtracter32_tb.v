`timescale 1ns / 1ps

module adder_subtracter32_tb(

    );
    
    reg [31:0] x, y;
    reg c_in;
    wire [31:0] r;
    wire v;
    
    adder_subtracter32 dut(
        .x(x),
        .y(y),
        .c_in(c_in),
        .r(r),    
        .v(v)  
        );
        
     initial begin
     // Testing summation
        x <= 32'h0000;
        y <= 32'h0000;
        c_in <= 0;
        
        #(10);
        
        x <= 32'h00000004;
        y <= 32'h00000001;
        c_in <= 0;
        
        #(10);
        
        // 2147483647+1
        x <= 32'h7FFFFFFF;
        y <= 32'h00000001;
        c_in <= 0;
        
        #(10);
        
        // 256+(-512)
        x <= 32'h00000100;   
        y <= 32'hFFFFFE00;   
        c_in <= 0;
        
        #(10);
        
     // testing subtraction
        x <= 32'h0000;
        y <= 32'h0000;
        c_in <= 1;

        #(10);
        
        // 65535-1
        x <= 32'h0000FFFF;
        y <= 32'h00000001;
        c_in <= 1;

        #(10);

        // -65536-(-1)
        x <= 32'hFFFF0000;
        y <= 32'hFFFFFFFF;
        c_in <= 1;
        
        #(10);
        
        // -2147483647-1
        x <= 32'h80000000;
        y <= 32'h00000001;
        c_in <= 1;
        
        #(10);

        x <= 32'h00000000;
        y <= 32'h00000000;
        c_in <= 1;
        
        #(10);
        
        // -1-1
        x <= 32'hFFFFFFFF;
        y <= 32'h00000001;
        c_in <= 1;
        
        #(10);
        
        // -3+1
        x <= 32'hFFFFFFFD;
        y <= 32'h00000001;
        c_in <= 0;
        
        #(10);
        
        // -3-1
        x <= 32'hFFFFFFFD;
        y <= 32'h00000001;
        c_in <= 1;        
      end
      
endmodule