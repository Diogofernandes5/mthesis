module demux2 (
	d,
	s,
	y0,
	y1
);

	parameter WIDTH = 32;

	input wire [WIDTH - 1:0] d;
	input wire s;
	
	output wire [WIDTH - 1:0] y0;
	output wire [WIDTH - 1:0] y1;
	
	assign {y0,y1} = s ? {{WIDTH{1'b0}}, d} : {d, {WIDTH{1'b0}}};

endmodule
