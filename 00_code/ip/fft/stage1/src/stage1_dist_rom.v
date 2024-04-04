module stage1_dist_rom (
	input clk,
	input addr,

	output [27:0] dout);

// can be "block" (infer RAMB-type) or "distributed" (infer using LUTS)
(* rom_style = "distributed" *) reg [27:0] data; 

always @(posedge clk) begin
	case(addr) 
		1'b0: data <= 28'h67108864; 
		1'b1: data <= 28'h4096;
	endcase
end

assign dout = data;

endmodule