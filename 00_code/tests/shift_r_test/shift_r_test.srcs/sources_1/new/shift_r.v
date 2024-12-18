`timescale 1ns / 1ps

module shift_right #(
    parameter shift_num = 8,
    parameter width = 32
)(
    input clk,
    input rstn,
    
    input signed [width-1:0] data_in,
    output reg signed [width-1:0] data_out
);

wire [width-1:0] aux;

localparam data_in_mask = (1 << shift_num) - 1;

assign aux = $signed(data_in) >>> shift_num;

always @(posedge clk or negedge rstn) begin
    if(~rstn)
        data_out = 32'd0;
    
    // Perform arithmetic shift right by 8 bits and round towards zero
    else if (data_in[width-1] && ((data_in & data_in_mask) != 0)) begin
        // If negative and remainder exists, shift and add 1 to round towards zero
        data_out = aux + 1;
    end else begin
        // Direct arithmetic shift for positive or exactly divisible values
        data_out = $signed(data_in) >>> shift_num;
    end
    
end

endmodule

