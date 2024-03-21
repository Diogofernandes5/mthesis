`timescale 1ns / 1ps

module subtraction_tb();
    
    reg clk;
    reg rstn;
    reg CE;

    wire [15:0] S;
    
    reg [15:0] A;
    reg [15:0] B;
    wire c_out;

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
    
    subtracter subtracter_tb (
      .A(A),      // input wire [15 : 0] A
      .B(B),      // input wire [15 : 0] B
      .C_IN(1'b1),
      .CLK(clk),  // input wire CLK
      .CE(CE),    // input wire CE
      .C_OUT(c_out),
      .S(S)      // output wire [15 : 0] S
    );
    
    initial begin  
        #(30);
        
        A = 16'h8;
        B = 16'h4;
        
        #(10)
        CE = 1;
        
        #(200);
        
//        A = S;
//        B = S;
   
    end
     
endmodule
