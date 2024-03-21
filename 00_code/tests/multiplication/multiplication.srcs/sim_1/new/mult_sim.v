`timescale 1ns / 1ps

module mult_sim();
    
    reg clk;
    reg rstn;

    wire [31:0] result;
    
    reg [31:0] A;
    reg [31:0] B;

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
    
    mult_gen_0 mul
        (.CLK(clk),
         .A(A),
         .B(B),
         .P(result));
    
    initial begin  
        #(30);
        
        A = 16'h2;
        B = 16'h2;
        
        #(30);
        
        A = 16'h00cc;
        B = 16'h333;
   
    end
     
endmodule
