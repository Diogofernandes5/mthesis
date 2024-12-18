`timescale 1ns / 1ps

module cwt_tb ();

// clock period in nanoseconds
`define CLK_PERIOD 10

/************** IO DECLARATION *************/
// DUT inputs
reg clk;
reg rstn;

reg [31:0] x_re;
reg [31:0] x_im;

reg start;
reg dl_busy;

// DUT outputs
wire cwt_ready;
wire busy;

wire [31:0] X_re;
wire [31:0] X_im;

localparam N = 1024;
localparam J1 = 4;

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
localparam INPUT_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/input.txt";

localparam GOLDEN_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_re.txt";
localparam GOLDEN_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/golden_im.txt";

localparam OUTPUT_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/output_re.txt";
localparam OUTPUT_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/output_im.txt";

localparam FFT_GOLDEN_RE_FM = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_re.txt";
localparam FFT_GOLDEN_IM_FM = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_im.txt";

localparam MUL_GOLDEN_RE_FM = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_re.txt";
localparam MUL_GOLDEN_IM_FM = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_im.txt";

/******************* tests *************************/
wire [31:0] fft_re;
wire [31:0] fft_im;
wire fft_ready;

wire mul_busy;
wire mul_done;
wire [31:0] mul_re;
wire [31:0] mul_im;

wire ifft_busy;
wire ifft_ready;
wire [31:0] ifft_re;
wire [31:0] ifft_im;

wire store_busy;
wire bram_en;
wire bram_we;
wire [$clog2(N*J1)-1:0] bram_addr;

wire [1:0] state;

/**************************/
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

wire [$clog2(N)-1:0] bram_addr_x0;
wire [$clog2(N)-1:0] bram_addr_x1;

wire bram_x0_en;
wire bram_x1_en;

wire [$clog2(N/2)-1:0] twiddle_addr;

/****************** DUT *****************/
cwt #(
    .N(N),
    .J1(J1)) dut(
    .clk(clk),
    .rstn(rstn),
    .x_re_i(x_re),
    .x_im_i(x_im),
    
    .start_i(start),
    .dl_busy_i(dl_busy),
    
    .cwt_done_o(cwt_ready),
    .busy_o(busy),
    .X_re_o(X_re),
    .X_im_o(X_im),
    
    /********** tests **********/
    .fft_ready(fft_ready),
    .mul_busy(mul_busy),
    .mul_done(mul_done),
    .ifft_busy(ifft_busy),
    .ifft_ready(ifft_ready),
    .store_busy(store_busy),
    .fft_re(fft_re),
    .fft_im(fft_im),
    .mul_re(mul_re),
    .mul_im(mul_im),
    .ifft_re(ifft_re),
    .ifft_im(ifft_im),
    .bram_en(bram_en),
    .bram_we(bram_we),
    .bram_addr(bram_addr),
    .state(state),

    /*****************/
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

    .bram_addr_x0(bram_addr_x0),
    .bram_addr_x1(bram_addr_x1),
    .twiddle_addr(twiddle_addr),
    .bram_x0_en(bram_x0_en),
    .bram_x1_en(bram_x1_en)
);

/************** STIMULUS ************/
always #(`CLK_PERIOD/2) clk = ~clk;
 
initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*2) rstn <= 1;
    
    dl_busy = 0;
end

initial begin
    start = 0;

    x_re = 32'd0;
    x_im = 32'd0;

    #(`CLK_PERIOD*15);
    start = 1;
    
    #(`CLK_PERIOD * N);
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
        
        x_re <= input_buf[i_in];
        x_im <= 32'h0;

        i_in = i_in + 1;
    end
end

/************* DUT -> OUTPUT VECTORS ************/
always @(negedge clk or negedge rstn or negedge start) begin
    if(!rstn)
        i_out = 0;

    else if(cwt_ready) begin
        output_re_buf[i_out] <= X_re;
        output_im_buf[i_out] <= X_im;

        i_out = i_out + 1;
    end
end

/*************** COMPARE VALUES ****************/
always @(posedge cwt_ready) begin
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