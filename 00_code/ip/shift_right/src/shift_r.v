`timescale 1ns / 1ps

module shift_right #(
    parameter shift_num = 4,
    parameter width = 32
)(
    input [width-1:0] data_in,
    output [width-1:0] data_out
);

assign data_out = ($signed(data_in) >>> shift_num) + data_in[width-1];  // Shift right by s_num bits

endmodule
