`timescale 1ns / 1ps

module testbench ();

// clock period in nanoseconds
`define CLK_PERIOD 10

/************** IO DECLARATION *************/
// DUT inputs
reg clk;
reg rstn;

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

/************ load input buffers ***************/
reg [31:0] input_buf[0:N-1];

reg [31:0] golden_re_buf[0:N-1];
reg [31:0] golden_im_buf[0:N-1];

reg [31:0] output_re_buf[0:N-1];
reg [31:0] output_im_buf[0:N-1];

integer fp;     // file descriptor
integer j;      // fd write/read index
integer i_in;   // num iterations
integer i_out;  // num iterations

integer num_errors;

/**************** FILENAMES ***************/
localparam INPUT_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/input.txt";

localparam GOLDEN_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/golden_re.txt";
localparam GOLDEN_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/golden_im.txt";

localparam OUTPUT_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/output_re.txt";
localparam OUTPUT_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/output_im.txt";

/******************** TESTS *********************/
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

/****************** DUT *****************/
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

bit_reversed_address_0 bit_reversal (
  .index_i(i_in),        // input wire [9 : 0] index_i
  .reversed_o(reversed_address)  // output wire [9 : 0] reversed_o
);

/************** STIMULUS ************/
always #(`CLK_PERIOD/2) clk = ~clk;
 
initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*2) rstn <= 1;
end

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

initial i_in <= 0;
initial i_out <= 0;

/************** INPUT FILE *************/
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

/************** INPUT VECTORS -> DUT *************/
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

/************* DUT -> OUTPUT VECTORS ************/
always @(negedge clk or negedge rstn or negedge start) begin
    if(!rstn)
        i_out = 0;

    else if(fft_ready) begin
        output_re_buf[i_out] <= X0_re;
        output_im_buf[i_out] <= X0_im;

        i_out = i_out + 1;
    end
end

/*************** COMPARE VALUES ****************/
always @(posedge fft_ready) begin
    #(`CLK_PERIOD*N + 1);
    
    /******** RE VECTOR -> OUTPUT FILE **********/
    fp = $fopen(OUTPUT_RE_FILENAME, "w");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", OUTPUT_RE_FILENAME);
        $stop;
    end
    $display("\nWriting re output results to %0s", OUTPUT_RE_FILENAME);
    for(j = 0; j < N; j = j + 1) begin
        $fwrite(fp, "%0d\n", $signed(output_re_buf[j]));
    end

    $fclose(fp);

    /******** IM VECTOR -> OUTPUT FILE **********/
    fp = $fopen(OUTPUT_IM_FILENAME, "w");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", OUTPUT_IM_FILENAME);
        $stop;
    end
    $display("\nWriting im output results to %0s", OUTPUT_IM_FILENAME);
    for(j = 0; j < N; j = j + 1) begin
        $fwrite(fp, "%0d\n", $signed(output_im_buf[j]));
    end

    $fclose(fp);


    /******** OPEN GOLDEN RE **********/    
    fp = $fopen(GOLDEN_RE_FILENAME, "r");    
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", GOLDEN_RE_FILENAME);
        $stop;
    end

    /******** COMPARE RE GOLDEN **********/
    $display("Comparing output results with %0s ...", GOLDEN_RE_FILENAME);
    num_errors = 0;
    for(j = 0; j < N; j = j + 1) begin
        // use input_buf to hold golden vector values
        $fscanf(fp, "%d\n", golden_re_buf[j]);

        if(output_re_buf[j] != golden_re_buf[j]) begin
            $display("ERROR at input[%2d]: Output values differ output=%5d, golden=%5d", j, $signed(output_re_buf[j]), $signed(golden_re_buf[j]));
            num_errors = num_errors + 1;
        end
    end
    // NUM ERRORS IMAGINARY
    if(num_errors == 0)
        $display("RE PASSED\n");
    else
        $display("RE FAILED - %3d errors!\n", num_errors);
    
    $fclose(fp);
    

    /******** OPEN GOLDEN IM **********/
    fp = $fopen(GOLDEN_IM_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", GOLDEN_IM_FILENAME);
        $stop;
    end
    
    /******** COMPARE IM GOLDEN **********/
    $display("Comparing output results with %0s ...", GOLDEN_IM_FILENAME);
    num_errors = 0;
    for(j = 0; j < N; j = j + 1) begin
        // use input_buf to hold golden vector values
        $fscanf(fp, "%d\n", golden_im_buf[j]);

        if(output_im_buf[j] != golden_im_buf[j]) begin
            $display("ERROR at input[%2d]: Output values differ output=%5d, golden=%5d", j, $signed(output_im_buf[j]), $signed(golden_im_buf[j]));
            num_errors = num_errors + 1;
        end
    end
    
    // NUM ERRORS REAL
    if(num_errors == 0)
        $display("IM PASSED\n");
    else
        $display("IM FAILED - %3d errors!\n", num_errors);
    
    $fclose(fp);

    $stop;
end

endmodule