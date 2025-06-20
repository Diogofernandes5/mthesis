`timescale 1ns/1ps

module bit_reversed_address #(parameter N = 1024) 
(
    input wire [$clog2(N)-1:0] index_i,
    output wire [$clog2(N)-1:0] reversed_o
);

generate
    genvar n; // represents the number of bits of index
    
    for (n = 0; n < $clog2(N); n = n + 1) begin : bit_reversal
        assign reversed_o[n] = index_i[$clog2(N)-n-1];
    end
    
endgenerate

endmodule