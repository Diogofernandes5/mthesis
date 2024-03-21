`timescale 1ns / 1ps

module summation_tb();
    
    reg clk;
    reg rstn;
    reg CE;

    wire [15:0] S;
    
    reg [15:0] A;
    reg [15:0] B;
    reg C_IN;
    wire C_OUT;

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
    
    adder adder_tb (
      .A(A),          // input wire [15 : 0] A
      .B(B),          // input wire [15 : 0] B
      .CLK(clk),      // input wire CLK
      .C_IN(C_IN),    // input wire C_IN
      .CE(CE),        // input wire CE
      .C_OUT(C_OUT),  // output wire C_OUT
      .S(S)          // output wire [15 : 0] S
    );

    initial begin  
        #(30);
        
        A = 16'hfffe;
        B = 16'h1;
        C_IN = 1;
        
        #(10)
        CE = 1;
        
        #(200);
        
        A = S;
        B = S;
   
    end
     
endmodule
