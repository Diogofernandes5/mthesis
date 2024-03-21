`timescale 1ns / 1ps

module full_adder_tb(

    );
    
    reg x, y, c_in;
    wire s, c_out;

    full_adder dut(
        .x(x),
        .y(y),
        .c_in(c_in),
        .s(s),
        .c_out(c_out));

    initial begin
        x <= 0;
        y <= 0;
        c_in <= 0;
        
        #(10);
        
        x <= 0;
        y <= 1;
        c_in <= 0;
        
        #(10);
        
        x <= 1;
        y <= 0;
        c_in <= 0;
        
        #(10);
        
        x <= 1;
        y <= 1;
        c_in <= 0;
        
        #(10);
        
        
        x <= 0;
        y <= 0;
        c_in <= 1;
        
        #(10);
        
        x <= 0;
        y <= 1;
        c_in <= 1;
        
        #(10);
        
        x <= 1;
        y <= 0;
        c_in <= 1;
        
        #(10);
            
        x <= 1;
        y <= 1;
        c_in <= 1;
        
        #(10);
        
        x <= 0;
        y <= 0;
        c_in <= 0;

    end


endmodule
