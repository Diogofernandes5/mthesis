`timescale 1ns / 1ps

module testbench ();

// clock period in nanoseconds
`define CLK_PERIOD 12

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

// input vectors
localparam INPUT_FILENAME = "../../../../../../../matlab/golden_vectors/input.txt";

localparam GOLDEN_RE_FILENAME = "../../../../../../../matlab/golden_vectors/golden_re.txt";
localparam GOLDEN_IM_FILENAME = "../../../../../../../matlab/golden_vectors/golden_im.txt";

localparam OUTPUT_RE_FILENAME = "../../../../../../../matlab/golden_vectors/output_re.txt";
localparam OUTPUT_IM_FILENAME = "../../../../../../../matlab/golden_vectors/output_im.txt";

localparam FFT_SIZE = 12'd1024;

/* --------------------------------*/

initial begin
    start = 0;

    x0_re = 32'd0;
    x0_im = 32'd0;
    x1_re = 32'd0;
    x1_im = 32'd0;

    #(`CLK_PERIOD*5); // 3 clk cycles
    start = 1;
    
    #(`CLK_PERIOD*(FFT_SIZE/2)); // 3 clk cycles
    start = 0;
end

/* -------------------- load input buffers --------------------- */

reg [31:0] input_buf[0:FFT_SIZE-1];

reg [31:0] golden_re_buf[0:FFT_SIZE-1];
reg [31:0] golden_im_buf[0:FFT_SIZE-1];

reg [31:0] output_re_buf[0:FFT_SIZE-1];
reg [31:0] output_im_buf[0:FFT_SIZE-1];

integer fp; // file descriptor
integer j;  // fd write/read index
integer i_in;  // num iterations
integer i_out;  // num iterations
//reg [0:3] i;
integer num_errors;

/* -------------- open input re values -----------------*/
always @(negedge rstn) begin
    //#(`CLK_PERIOD*2);
    fp = $fopen(INPUT_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", INPUT_FILENAME);
        $stop;
    end
    // load input values
    for(j = 0; j < FFT_SIZE; j = j + 1) begin
        $fscanf(fp, "%d\n", input_buf[j]);
    end
    
    $fclose(fp);
end

/* ---------------- compare input with golden ------------------- */
always @(posedge fft_ready) begin

    #(`CLK_PERIOD*(FFT_SIZE/2 + 1));
    /* --------- output file RE ----------- */
    fp = $fopen(OUTPUT_RE_FILENAME, "w");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", OUTPUT_RE_FILENAME);
        $stop;
    end

    // $display("\nWriting output results to %0s", output_filename);
    for(j = 0; j < FFT_SIZE; j = j + 1) begin
        $fwrite(fp, "%0d\n", output_re_buf[j]);
    end

    $fclose(fp);

    /* --------- output file IM ----------- */
    fp = $fopen(OUTPUT_IM_FILENAME, "w");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", OUTPUT_IM_FILENAME);
        $stop;
    end

    // $display("\nWriting output results to %0s", output_filename);
    for(j = 0; j < FFT_SIZE; j = j + 1) begin
        $fwrite(fp, "%0d\n", output_im_buf[j]);
    end

    $fclose(fp);

    /* --------- golden vectors file RE ----------- */
    // $display("Comparing output results with %0s ...", golden_filename);
    fp = $fopen(GOLDEN_RE_FILENAME, "r");    
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", GOLDEN_RE_FILENAME);
        $stop;
    end

    num_errors = 0;

    for(j = 0; j < FFT_SIZE; j = j + 1) begin
        // use input_buf to hold golden vector values
        $fscanf(fp, "%d\n", golden_re_buf[j]);

        if(output_re_buf[j] != golden_re_buf[j]) begin
//            $display("ERROR at input[%2d]: Output values differ output=%5d, golden=%5d", j, output_re_buf[j], golden_re_buf[j]);
            num_errors = num_errors + 1;
        end
    end

    if(num_errors == 0)
        $display("RE PASSED\n");
    else
        $display("RE FAILED - %3d errors!\n", num_errors);
    
    // $display("Simulation completed with %2d errors!\n", num_errors);
    $fclose(fp);

    /* --------- golden vectors file IM ----------- */
    // $display("Comparing output results with %0s ...", golden_filename);
    fp = $fopen(GOLDEN_IM_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", GOLDEN_IM_FILENAME);
        $stop;
    end

    num_errors = 0;

    for(j = 0; j < FFT_SIZE; j = j + 1) begin
        // use input_buf to hold golden vector values
        $fscanf(fp, "%d\n", golden_im_buf[j]);

        if(output_im_buf[j] != golden_im_buf[j]) begin
//            $display("ERROR at input[%2d]: Output values differ output=%5d, golden=%5d", j, output_im_buf[j], golden_im_buf[j]);
            num_errors = num_errors + 1;
        end
    end

    if(num_errors == 0)
        $display("IM PASSED\n");
    else
        $display("IM FAILED - %3d errors!\n", num_errors);
    
    // $display("Simulation completed with %2d errors!\n", num_errors);
    $fclose(fp);

    $stop;
end

initial i_in <= 0;
initial i_out <= 0;

/* --------- output values from dut to output buffers -------------- */
always @(negedge clk or negedge rstn or negedge start) begin
    if(!rstn)
        i_out = 0;

    else if(fft_ready) begin
        output_re_buf[i_out] <= X0_re;
        output_im_buf[i_out] <= X0_im;
        output_re_buf[i_out+(FFT_SIZE/2)] <= X1_re;
        output_im_buf[i_out+(FFT_SIZE/2)] <= X1_im;

        i_out = i_out + 1;
    end
end

always @(posedge clk or negedge rstn) begin
    if(!rstn)
        i_in = 0;

    else if(start) begin
        #(`CLK_PERIOD*1); // if you give inputs immed/ after the start is asserted,
        // the inputs passed to the dut are not correct 
        x0_re <= input_buf[i_in];
        x0_im <= 32'h0;
        x1_re <= input_buf[i_in+(FFT_SIZE/2)];
        x1_im <= 32'h0;

        i_in = i_in + 1;
    end
end

// ===========================================================================
// dut
// ===========================================================================

fft_architecture dut(
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
    .x1_im_o(X1_im)
    );

endmodule