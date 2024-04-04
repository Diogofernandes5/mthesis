module stage2_dist_rom (
	input clk,
	input [1:0] addr,

	output [27:0] dout);

// can be "block" (infer RAMB-type) or "distributed" (infer using LUTS)
(* rom_style = "distributed" *) reg [27:0] data; 

always @(posedge clk) begin
	case(addr) 
		2'b00: data <= 28'h67108864; 
		2'b01: data <= 28'h47450960;
		2'b10: data <= 28'h4096;
		2'b11: data <= 28'h220990288;
	endcase
end

assign dout = data;

endmodule