`timescale 1ns / 1ps

// To perform subtraction is used the c_in input 
//      If c_in = 1 subtraction (make 2's complement of y)
//      If c_in = 0 summation
module adder_subtracter32(
    input [31:0] x,      // first operand
    input [31:0] y,      // second operand
    input c_in,         // carry in
    output [31:0] s,     // result
    output v            // overflow
    );
    
    wire [31:0] c_out;
    
    full_adder add0(
        .x(x[0]),
        .y(y[0] ^ c_in),    // 2's complement of y if c_in is asserted
        .c_in(c_in),
        .s(s[0]),
        .c_out(c_out[0]));
    
    full_adder add1(
        .x(x[1]),
        .y(y[1] ^ c_in),
        .c_in(c_out[0]),
        .s(s[1]),
        .c_out(c_out[1]));
        
    full_adder add2(
        .x(x[2]),
        .y(y[2] ^ c_in),
        .c_in(c_out[1]),
        .s(s[2]),
        .c_out(c_out[2]));
        
    full_adder add3(
        .x(x[3]),
        .y(y[3] ^ c_in),
        .c_in(c_out[2]),
        .s(s[3]),
        .c_out(c_out[3]));

    full_adder add4(
        .x(x[4]),
        .y(y[4] ^ c_in),
        .c_in(c_out[3]),
        .s(s[4]),
        .c_out(c_out[4]));

    full_adder add5(
        .x(x[5]),
        .y(y[5] ^ c_in),
        .c_in(c_out[4]),
        .s(s[5]),
        .c_out(c_out[5]));
    
    full_adder add6(
        .x(x[6]),
        .y(y[6] ^ c_in),
        .c_in(c_out[5]),
        .s(s[6]),
        .c_out(c_out[6]));

    full_adder add7(
        .x(x[7]),
        .y(y[7] ^ c_in),
        .c_in(c_out[6]),
        .s(s[7]),
        .c_out(c_out[7]));

    full_adder add8(
        .x(x[8]),
        .y(y[8] ^ c_in),
        .c_in(c_out[7]),
        .s(s[8]),
        .c_out(c_out[8])); 

    full_adder add9(
        .x(x[9]),
        .y(y[9] ^ c_in),
        .c_in(c_out[8]),
        .s(s[9]),
        .c_out(c_out[9]));
        
    full_adder add10(
        .x(x[10]),
        .y(y[10] ^ c_in),
        .c_in(c_out[9]),
        .s(s[10]),
        .c_out(c_out[10]));
        
    full_adder add11(
        .x(x[11]),
        .y(y[11] ^ c_in),
        .c_in(c_out[10]),
        .s(s[11]),
        .c_out(c_out[11]));

    full_adder add12(
        .x(x[12]),
        .y(y[12] ^ c_in),
        .c_in(c_out[11]),
        .s(s[12]),
        .c_out(c_out[12]));

    full_adder add13(
        .x(x[13]),
        .y(y[13] ^ c_in),
        .c_in(c_out[12]),
        .s(s[13]),
        .c_out(c_out[13]));
    
    full_adder add14(
        .x(x[14]),
        .y(y[14] ^ c_in),
        .c_in(c_out[13]),
        .s(s[14]),
        .c_out(c_out[14]));

    full_adder add15(
        .x(x[15]),
        .y(y[15] ^ c_in),
        .c_in(c_out[14]),
        .s(s[15]),
        .c_out(c_out[15]));

    full_adder add16(
        .x(x[16]),
        .y(y[16] ^ c_in),    // 2's complement of y if c_in is asserted
        .c_in(c_out[15]),
        .s(s[16]),
        .c_out(c_out[16]));
    
    full_adder add17(
        .x(x[17]),
        .y(y[17] ^ c_in),
        .c_in(c_out[16]),
        .s(s[17]),
        .c_out(c_out[17]));
        
    full_adder add18(
        .x(x[18]),
        .y(y[18] ^ c_in),
        .c_in(c_out[17]),
        .s(s[18]),
        .c_out(c_out[18]));
        
    full_adder add19(
        .x(x[19]),
        .y(y[19] ^ c_in),
        .c_in(c_out[18]),
        .s(s[19]),
        .c_out(c_out[19]));

    full_adder add20(
        .x(x[20]),
        .y(y[20] ^ c_in),
        .c_in(c_out[19]),
        .s(s[20]),
        .c_out(c_out[20]));

    full_adder add21(
        .x(x[21]),
        .y(y[21] ^ c_in),
        .c_in(c_out[20]),
        .s(s[21]),
        .c_out(c_out[21]));
    
    full_adder add22(
        .x(x[22]),
        .y(y[22] ^ c_in),
        .c_in(c_out[21]),
        .s(s[22]),
        .c_out(c_out[22]));

    full_adder add23(
        .x(x[23]),
        .y(y[23] ^ c_in),
        .c_in(c_out[22]),
        .s(s[23]),
        .c_out(c_out[23]));

    full_adder add24(
        .x(x[24]),
        .y(y[24] ^ c_in),
        .c_in(c_out[23]),
        .s(s[24]),
        .c_out(c_out[24])); 

    full_adder add25(
        .x(x[25]),
        .y(y[25] ^ c_in),
        .c_in(c_out[24]),
        .s(s[25]),
        .c_out(c_out[25]));
        
    full_adder add26(
        .x(x[26]),
        .y(y[26] ^ c_in),
        .c_in(c_out[25]),
        .s(s[26]),
        .c_out(c_out[26]));
        
    full_adder add27(
        .x(x[27]),
        .y(y[27] ^ c_in),
        .c_in(c_out[26]),
        .s(s[27]),
        .c_out(c_out[27]));

    full_adder add28(
        .x(x[28]),
        .y(y[28] ^ c_in),
        .c_in(c_out[27]),
        .s(s[28]),
        .c_out(c_out[28]));

    full_adder add29(
        .x(x[29]),
        .y(y[29] ^ c_in),
        .c_in(c_out[28]),
        .s(s[29]),
        .c_out(c_out[29]));
    
    full_adder add30(
        .x(x[30]),
        .y(y[30] ^ c_in),
        .c_in(c_out[29]),
        .s(s[30]),
        .c_out(c_out[30]));

    full_adder add31(
        .x(x[31]),
        .y(y[31] ^ c_in),
        .c_in(c_out[30]),
        .s(s[31]),
        .c_out(c_out[31]));

    assign v = c_out[31] ^ c_out[30];
        
endmodule
