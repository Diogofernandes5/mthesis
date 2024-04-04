module demux2_tb ();

	reg [31:0] d;
	wire [31:0] y0;
	wire [31:0] y1;
	reg sel;

	demux2 demux(
		.d(d),
		.s(sel),
		.y0(y0),
		.y1(y1)
	);

	initial begin
		d <= 31'hFFF5;

		sel <= 0;

		#(10);
		sel <= 1;
	end

endmodule
