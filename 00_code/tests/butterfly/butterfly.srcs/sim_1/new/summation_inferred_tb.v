`timescale 1ns / 1ps

module summation_inferred_tb();
    
    reg clk;
    reg rstn;
    reg CE;

    wire [15:0] S;
    
    reg [15:0] A;
    reg [15:0] B;

    initial begin
        rstn <= 0;
        #(10)
            ;
        rstn <= 1;
    end

    always begin
        clk <= 0;
        #(10)
            ;
        clk <= 1;
        #(10)
            ;
    end
    
    assign S = A + B;
    
    initial begin  
        #(30);
        
        A = 16'h4;
        B = 16'h2;
        
        #(10)
        CE = 1;
        
        #(200);
        
        A = S;
        B = S;
   
    end
     
endmodule
