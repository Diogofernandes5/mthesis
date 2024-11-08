module test_bit_reversed_index;

localparam N = 32;

reg [$clog2(N)-1:0] index;
wire [$clog2(N)-1:0] reversed;

bit_reversed_address #(N) dut (
    .index_i(index),
    .reversed_o(reversed)
);

initial begin
    $display("Index Reverse");
    for (index = 0; index < N; index = index + 1) begin
        #1;
        //$display("%d     %d", index, reversed);
    end
end

endmodule