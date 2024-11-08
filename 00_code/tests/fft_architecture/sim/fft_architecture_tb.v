`timescale 1ns / 1ps

module fft_architecture_tb ();

// clock period in nanoseconds
`define CLK_PERIOD 10

reg clk;
reg rstn;

always #(`CLK_PERIOD/2) clk = ~clk;
 
initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*2) rstn <= 1;
end

/* -------------------- Input Stimulation ---------------- */
/* --------- Declaration ----------*/
// DUT inputs
reg [31:0] x0_re;
reg [31:0] x0_im;
reg [31:0] x1_re;
reg [31:0] x1_im;

reg start;

// DUT outputs
wire fft_ready;

wire [31:0] X0_re;
wire [31:0] X0_im;
wire [31:0] X1_re;
wire [31:0] X1_im;

localparam N = 11'd16;

wire [$clog2(N)-1:0] reversed_address;

/*************************************************/
wire [31:0] x0_re_ram;
wire [31:0] x0_im_ram;
wire [31:0] x1_re_ram;
wire [31:0] x1_im_ram;

wire [31:0] X0_re_bf;
wire [31:0] X0_im_bf;
wire [31:0] X1_re_bf;
wire [31:0] X1_im_bf;

wire [13:0] w_re;
wire [13:0] w_im;

wire bram_x0_en;
wire bram_x1_en;
wire [$clog2(N)-1:0] bram_addr_x0_w;
wire [$clog2(N)-1:0] bram_addr_x1_w;
wire [$clog2(N/2)-1:0] twiddle_addr;
wire [3:0] state;

/*************************************************/

/*********************** DUT ********************/
fft_architecture #(N) dut(
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(x0_re),
    .x0_im_i(x0_im),
    .x1_re_i(x1_re),
    .x1_im_i(x1_im),
    .start_i(start),
    
    .fft_ready_o(fft_ready),
    .x0_re_o(X0_re),
    .x0_im_o(X0_im),
    .x1_re_o(X1_re),
    .x1_im_o(X1_im),
    
    .x0_re_ram(x0_re_ram),
    .x0_im_ram(x0_im_ram),
    .x1_re_ram(x1_re_ram),
    .x1_im_ram(x1_im_ram),
    
    .X0_re_bf(X0_re_bf),
    .X0_im_bf(X0_im_bf),
    .X1_re_bf(X1_re_bf),
    .X1_im_bf(X1_im_bf),
    
    .w_re(w_re),
    .w_im(w_im),
    
    .bram_addr_x0(bram_addr_x0_w),
    .bram_addr_x1(bram_addr_x1_w),
    .twiddle_addr(twiddle_addr),
    .bram_x0_en(bram_x0_en),
    .bram_x1_en(bram_x1_en),
    .state(state)
);

/*************************************/
initial begin
    start = 0;

    x0_re = 32'd0;
    x0_im = 32'd0;
    x1_re = 32'd0;
    x1_im = 32'd0;

    #(`CLK_PERIOD*15); // 3 clk cycles
    start = 1;
    
    #(`CLK_PERIOD * N); // 3 clk cycles
    start = 0;
end

always @(*) begin
    if(fft_ready) begin
        wait(~fft_ready);
        $stop;
    end
end 

/* -------------------- load input buffers --------------------- */

reg [31:0] input_buf[0:N-1];

integer fp; // file descriptor
integer j;  // fd write/read index
integer i_in;  // num iterations

localparam INPUT_FILENAME = "../../../../../../matlab/golden_vectors/input.txt";

/* -------------- open input re values -----------------*/
always @(negedge rstn) begin
    //#(`CLK_PERIOD*2);
    fp = $fopen(INPUT_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", INPUT_FILENAME);
        $stop;
    end
    // load input values
    for(j = 0; j < N; j = j + 1) begin
        $fscanf(fp, "%d\n", input_buf[j]);
    end
    
    $fclose(fp);
end

initial i_in <= 0;

always @(posedge clk or negedge rstn) begin
    if(!rstn)
        i_in = 0;

    else if(start) begin
//        #(`CLK_PERIOD*1); // if you give inputs immed/ after the start is asserted,
        // the inputs passed to the dut are not correct 
        
        x0_re <= input_buf[reversed_address];
        x0_im <= 32'h0;

        i_in = i_in + 1;
    end
end


bit_reversed_address_0 bit_reversal (
  .index_i(i_in),        // input wire [9 : 0] index_i
  .reversed_o(reversed_address)  // output wire [9 : 0] reversed_o
);

endmodule