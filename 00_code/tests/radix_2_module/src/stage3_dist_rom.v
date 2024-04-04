module stage3_dist_rom (
	input clk,
	input [2:0] addr,

	output [27:0] dout);

// can be "block" (infer RAMB-type) or "distributed" (infer using LUTS)
(* rom_style = "distributed" *) reg [27:0] data; 

always @(posedge clk) begin
	case(addr) 
		3'b000: data <= 28'h67108864; 
		3'b001: data <= 28'h61998623;
		3'b010: data <= 28'h47450960;
		3'b011: data <= 28'h25677512;
		3'b100: data <= 28'h4096; 
		3'b101: data <= 28'h242765512;
		3'b110: data <= 28'h220990288;
		3'b111: data <= 28'h206439967;
	endcase
end

assign dout = data;

endmodule