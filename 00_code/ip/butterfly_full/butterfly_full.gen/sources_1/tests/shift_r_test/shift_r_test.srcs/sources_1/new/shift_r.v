`timescale 1ns / 1ps

module shift_right #(
    parameter shift_num = 8,
    parameter width = 32
)(
    input signed [width-1:0] data_in,
    output reg signed [width-1:0] data_out
);

wire [width-1:0] aux;

assign aux = $signed(data_in) >>> shift_num;

always @(*) begin
    // Perform arithmetic shift right by 8 bits and round towards zero
    if (data_in[width-1] && ((data_in & 8'b1111_1111) != 0)) begin
        // If negative and remainder exists, shift and add 1 to round towards zero
        data_out = aux + 1;
    end else begin
        // Direct arithmetic shift for positive or exactly divisible values
        data_out = $signed(data_in) >>> 8;
    end
end

endmodule
