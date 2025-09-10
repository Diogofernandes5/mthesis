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
reg dready;
reg dl_busy;

// DUT outputs
wire cwt_row_done;
wire cwt_row_ready;
wire busy;

wire [31:0] X_re;
wire [31:0] X_im;

localparam N = 256;
localparam J1 = 4;

/************ load input buffers ***************/
reg [31:0] input_buf[0:N-1];

reg [31:0] golden_fft_re_buf[0:N-1];
reg [31:0] golden_fft_im_buf[0:N-1];
reg [31:0] output_fft_re_buf[0:N-1];
reg [31:0] output_fft_im_buf[0:N-1];

reg [31:0] golden_mul_re_buf[0:(N*J1)-1];
reg [31:0] golden_mul_im_buf[0:(N*J1)-1];
reg [31:0] output_mul_re_buf[0:(N*J1)-1];
reg [31:0] output_mul_im_buf[0:(N*J1)-1];

reg [31:0] golden_ifft_re_buf[0:(N*J1)-1];
reg [31:0] golden_ifft_im_buf[0:(N*J1)-1];
reg [31:0] output_ifft_re_buf[0:(N*J1)-1];
reg [31:0] output_ifft_im_buf[0:(N*J1)-1];

integer fp;     // file descriptor
integer j;      // fd write/read index
integer i_in;   // num iterations
integer i_out_fft;  // num iterations
integer i_out_mul;  // num iterations
integer i_out_ifft;  // num iterations
integer counter_j_mul;
integer counter_j_ifft;

integer num_errors;

/**************** FILENAMES ***************/
localparam INPUT_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/cwt/input.txt";

localparam FFT_GOLDEN_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_re.txt";
localparam FFT_GOLDEN_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_im.txt";
localparam FFT_OUTPUT_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/output_re.txt";
localparam FFT_OUTPUT_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/output_im.txt";

localparam MUL_GOLDEN_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_re.txt";
localparam MUL_GOLDEN_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_im.txt";
localparam MUL_OUTPUT_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/output_re.txt";
localparam MUL_OUTPUT_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/output_im.txt";

localparam IFFT_GOLDEN_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_re.txt";
localparam IFFT_GOLDEN_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_im.txt";
localparam IFFT_OUTPUT_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/output_re.txt";
localparam IFFT_OUTPUT_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/output_im.txt";

/******************* tests *************************/
wire [31:0] fft_re;
wire [31:0] fft_im;
wire fft_ready;
wire fft_done;

wire mul_busy;
wire mul_done;
wire mul_ready;
wire [31:0] mul_re;
wire [31:0] mul_im;

wire div_done;

wire [31:0] div_re;
wire [31:0] div_im;

wire ifft_busy;
wire ifft_ready;
wire ifft_done;
wire [31:0] ifft_re;
wire [31:0] ifft_im;


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

wire [$clog2(J1):0] counter_j_mul_tb;
wire [$clog2(J1):0] counter_j_cwt_tb;

/****************** DUT *****************/
cwt #(
    .N(N),
    .J1(J1)) dut(
    .clk(clk),
    .rstn(rstn),
    
    .x_re_i(x_re),
    .x_im_i(x_im),
    .start_i(start),
    .dready_i(dready),
    .dl_busy_i(dl_busy),
    
    .cwt_row_done_o(cwt_row_done),
    .cwt_row_ready_o(cwt_row_ready),
    .busy_o(busy),
    .X_re_o(X_re),
    .X_im_o(X_im),
    
    /********** tests **********/
	.fft_ready(fft_ready),
    .mul_busy(mul_busy),
    .mul_done(mul_done),
    .ifft_busy(ifft_busy),
    
    .fft_re(fft_re),
    .fft_im(fft_im),
    .mul_re(mul_re),
    .mul_im(mul_im),
    .div_re(div_re),
    .div_im(div_im),
    
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
    
    .bram_x0_en(bram_x0_en),
    .bram_x1_en(bram_x1_en),
    
    .twiddle_addr(twiddle_addr),
    
    .counter_j_mul(counter_j_mul_tb),
	.counter_j_cwt(counter_j_cwt_tb)
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
initial i_out_fft <= 0;
initial i_out_mul <= 0;
initial i_out_ifft <= 0;
initial i_out_cwt <= 0;

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
        i_out_fft = 0;

    else if(fft_ready) begin
        output_fft_re_buf[i_out_fft] <= fft_re;
        output_fft_im_buf[i_out_fft] <= fft_im;

        i_out_fft = i_out_fft + 1;
    end
end

always @(negedge clk or negedge rstn or negedge start) begin
    if(!rstn)
        i_out_mul = 0;

    else if(mul_done) begin
        output_mul_re_buf[i_out_mul] <= mul_re;
        output_mul_im_buf[i_out_mul] <= mul_im;

        i_out_mul = i_out_mul + 1;
    end
end

always @(negedge clk or negedge rstn or negedge start) begin
    if(!rstn)
        i_out_ifft = 0;

    else if(ifft_ready) begin
        output_ifft_re_buf[i_out_ifft] <= ifft_re;
        output_ifft_im_buf[i_out_ifft] <= ifft_im;

        i_out_ifft = i_out_ifft + 1;
    end
end

always @(negedge clk or negedge rstn or negedge start) begin
    if(!rstn)
        i_out_cwt = 0;

    else if(cwt_row_done) begin
        output_cwt_re_buf[i_out_cwt] <= X_re;
        output_cwt_im_buf[i_out_cwt] <= X_im;

        i_out_cwt = i_out_cwt + 1;
    end
end

/*************** COMPARE VALUES ****************/

/****************** F-F-T **********************/
always @(posedge fft_ready) begin
    #(`CLK_PERIOD*N + 1);
    
    /******** RE VECTOR -> OUTPUT FILE **********/
    fp = $fopen(FFT_OUTPUT_RE_FN, "w");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", FFT_OUTPUT_RE_FN);
        $stop;
    end
    $display("\n[FFT] Writing fft_re output results to %0s", FFT_OUTPUT_RE_FN);
    for(j = 0; j < N; j = j + 1) begin
        $fwrite(fp, "%0d\n", $signed(output_fft_re_buf[j]));
    end

    $fclose(fp);

    /******** IM VECTOR -> OUTPUT FILE **********/
    fp = $fopen(FFT_OUTPUT_IM_FN, "w");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", FFT_OUTPUT_IM_FN);
        $stop;
    end
    $display("\n[FFT] Writing fft_im output results to %0s", FFT_OUTPUT_IM_FN);
    for(j = 0; j < N; j = j + 1) begin
        $fwrite(fp, "%0d\n", $signed(output_fft_im_buf[j]));
    end

    $fclose(fp);


    /******** OPEN GOLDEN RE **********/    
    fp = $fopen(FFT_GOLDEN_RE_FN, "r");    
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", FFT_GOLDEN_RE_FN);
        $stop;
    end

    /******** COMPARE RE GOLDEN **********/
    $display("[FFT] Comparing FFT RE results with %0s ...", FFT_GOLDEN_RE_FN);
    num_errors = 0;
    for(j = 0; j < N; j = j + 1) begin
        // use input_buf to hold golden vector values
        $fscanf(fp, "%d\n", golden_fft_re_buf[j]);

        if(output_fft_re_buf[j] != golden_fft_re_buf[j]) begin
            $display("[FFT] ERROR at input[%2d]: Output values differ output=%5d, expected %5d", j, $signed(output_fft_re_buf[j]), $signed(golden_fft_re_buf[j]));
            num_errors = num_errors + 1;
        end
    end
    // NUM ERRORS IMAGINARY
    if(num_errors == 0)
        $display("[FFT] RE PASSED\n");
    else
        $display("[FFT] RE FAILED - %3d errors!\n", num_errors);
    
    $fclose(fp);
    

    /******** OPEN GOLDEN IM **********/
    fp = $fopen(FFT_GOLDEN_IM_FN, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", FFT_GOLDEN_IM_FN);
        $stop;
    end
    
    /******** COMPARE IM GOLDEN **********/
    $display("[FFT] Comparing FFT IM results with %0s ...", FFT_GOLDEN_IM_FN);
    num_errors = 0;
    for(j = 0; j < N; j = j + 1) begin
        // use input_buf to hold golden vector values
        $fscanf(fp, "%d\n", golden_fft_im_buf[j]);

        if(output_fft_im_buf[j] != golden_fft_im_buf[j]) begin
            $display("[FFT] ERROR at input[%2d]: Output values differ output=%5d, expected %5d", j, $signed(output_fft_im_buf[j]), $signed(golden_fft_im_buf[j]));
            num_errors = num_errors + 1;
        end
    end
    
    // NUM ERRORS REAL
    if(num_errors == 0)
        $display("[FFT] IM PASSED\n");
    else
        $display("[FFT] IM FAILED - %3d errors!\n", num_errors);
    
    $fclose(fp);

    //$stop;
end

initial counter_j_mul <= 0;

/****************** M-U-L **********************/
always @(posedge mul_done) begin
    counter_j_mul = counter_j_mul + 1;

    if(counter_j_mul == J1) begin
        #(`CLK_PERIOD*N + 1);
    
        /******** RE VECTOR -> OUTPUT FILE **********/
        fp = $fopen(MUL_OUTPUT_RE_FN, "w");
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", MUL_OUTPUT_RE_FN);
            $stop;
        end
        $display("\n[MUL] Writing mul_re output results to %0s", MUL_OUTPUT_RE_FN);
        for(j = 0; j < N*J1; j = j + 1) begin
            $fwrite(fp, "%0d\n", $signed(output_mul_re_buf[j]));
        end

        $fclose(fp);

        /******** IM VECTOR -> OUTPUT FILE **********/
        fp = $fopen(MUL_OUTPUT_IM_FN, "w");
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", MUL_OUTPUT_IM_FN);
            $stop;
        end
        $display("\n[MUL] Writing mul_im output results to %0s", MUL_OUTPUT_IM_FN);
        for(j = 0; j < N*J1; j = j + 1) begin
            $fwrite(fp, "%0d\n", $signed(output_mul_im_buf[j]));
        end

        $fclose(fp);


        /******** OPEN GOLDEN RE **********/    
        fp = $fopen(MUL_GOLDEN_RE_FN, "r");    
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", MUL_GOLDEN_RE_FN);
            $stop;
        end

        /******** COMPARE RE GOLDEN **********/
        $display("[MUL] Comparing MUL RE results with %0s ...", MUL_GOLDEN_RE_FN);
        num_errors = 0;
        for(j = 0; j < N*J1; j = j + 1) begin
            // use input_buf to hold golden vector values
            $fscanf(fp, "%d\n", golden_mul_re_buf[j]);

            if(output_mul_re_buf[j] != golden_mul_re_buf[j]) begin
                $display("[MUL] ERROR at input[%2d]: Output values differ output=%5d, expected %5d", j, $signed(output_mul_re_buf[j]), $signed(golden_mul_re_buf[j]));
                num_errors = num_errors + 1;
            end
        end
        // NUM ERRORS IMAGINARY
        if(num_errors == 0)
            $display("[MUL] RE PASSED\n");
        else
            $display("[MUL] RE FAILED - %3d errors!\n", num_errors);
        
        $fclose(fp);
        

        /******** OPEN GOLDEN IM **********/
        fp = $fopen(MUL_GOLDEN_IM_FN, "r");
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", MUL_GOLDEN_IM_FN);
            $stop;
        end
        
        /******** COMPARE IM GOLDEN **********/
        $display("[MUL] Comparing MUL IM results with %0s ...", MUL_GOLDEN_IM_FN);
        num_errors = 0;
        for(j = 0; j < N*J1; j = j + 1) begin
            // use input_buf to hold golden vector values
            $fscanf(fp, "%d\n", golden_mul_im_buf[j]);

            if(output_mul_im_buf[j] != golden_mul_im_buf[j]) begin
                $display("[MUL] ERROR at input[%2d]: Output values differ output=%5d, expected %5d", j, $signed(output_mul_im_buf[j]), $signed(golden_mul_im_buf[j]));
                num_errors = num_errors + 1;
            end
        end
        
        // NUM ERRORS REAL
        if(num_errors == 0)
            $display("[MUL] IM PASSED\n");
        else
            $display("[MUL] IM FAILED - %3d errors!\n", num_errors);
        
        $fclose(fp);

        // $stop;
    end
end

initial counter_j_ifft <= 0;

/****************** I-F-F-T **********************/
always @(posedge ifft_ready) begin
    counter_j_ifft = counter_j_ifft + 1;

    if(counter_j_ifft == J1) begin
        #(`CLK_PERIOD*N + 1);
    
        /******** RE VECTOR -> OUTPUT FILE **********/
        fp = $fopen(IFFT_OUTPUT_RE_FN, "w");
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", IFFT_OUTPUT_RE_FN);
            $stop;
        end
        $display("\n[IFFT] Writing mul_re output results to %0s", IFFT_OUTPUT_RE_FN);
        for(j = 0; j < N*J1; j = j + 1) begin
            $fwrite(fp, "%0d\n", $signed(output_ifft_re_buf[j]));
        end

        $fclose(fp);

        /******** IM VECTOR -> OUTPUT FILE **********/
        fp = $fopen(IFFT_OUTPUT_IM_FN, "w");
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", IFFT_OUTPUT_IM_FN);
            $stop;
        end
        $display("\n[IFFT] Writing mul_im output results to %0s", IFFT_OUTPUT_IM_FN);
        for(j = 0; j < N*J1; j = j + 1) begin
            $fwrite(fp, "%0d\n", $signed(output_ifft_im_buf[j]));
        end

        $fclose(fp);


        /******** OPEN GOLDEN RE **********/    
        fp = $fopen(IFFT_GOLDEN_RE_FN, "r");    
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", IFFT_GOLDEN_RE_FN);
            $stop;
        end

        /******** COMPARE RE GOLDEN **********/
        $display("[IFFT] Comparing IFFT RE results with %0s ...", IFFT_GOLDEN_RE_FN);
        num_errors = 0;
        for(j = 0; j < N*J1; j = j + 1) begin
            // use input_buf to hold golden vector values
            $fscanf(fp, "%d\n", golden_ifft_re_buf[j]);

            if(output_ifft_re_buf[j] != golden_ifft_re_buf[j]) begin
                $display("[IFFT] ERROR at input[%2d]: Output values differ output=%5d, expected %5d", j, $signed(output_ifft_re_buf[j]), $signed(golden_ifft_re_buf[j]));
                num_errors = num_errors + 1;
            end
        end
        // NUM ERRORS IMAGINARY
        if(num_errors == 0)
            $display("[IFFT] RE PASSED\n");
        else
            $display("[IFFT] RE FAILED - %3d errors!\n", num_errors);
        
        $fclose(fp);
        

        /******** OPEN GOLDEN IM **********/
        fp = $fopen(IFFT_GOLDEN_IM_FN, "r");
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", IFFT_GOLDEN_IM_FN);
            $stop;
        end
        
        /******** COMPARE IM GOLDEN **********/
        $display("[IFFT] Comparing IFFT IM results with %0s ...", IFFT_GOLDEN_IM_FN);
        num_errors = 0;
        for(j = 0; j < N*J1; j = j + 1) begin
            // use input_buf to hold golden vector values
            $fscanf(fp, "%d\n", golden_ifft_im_buf[j]);

            if(output_ifft_im_buf[j] != golden_ifft_im_buf[j]) begin
                $display("[IFFT] ERROR at input[%2d]: Output values differ output=%5d, expected %5d", j, $signed(output_ifft_im_buf[j]), $signed(golden_ifft_im_buf[j]));
                num_errors = num_errors + 1;
            end
        end
        
        // NUM ERRORS REAL
        if(num_errors == 0)
            $display("[IFFT] IM PASSED\n");
        else
            $display("[IFFT] IM FAILED - %3d errors!\n", num_errors);
        
        $fclose(fp);

         $stop;
    end
end

//initial counter_j_cwt <= 0;

///****************** C-W-T **********************/
//always @(posedge cwt_row_done) begin
//    #(`CLK_PERIOD*(N*J1) + 1);

//    /******** RE VECTOR -> OUTPUT FILE **********/
//    fp = $fopen(CWT_OUTPUT_RE_FN, "w");
//    if(fp == 0) begin
//        $display("ERROR: failed to open '%s'", CWT_OUTPUT_RE_FN);
//        $stop;
//    end
//    $display("\n[CWT] Writing cwt_re output results to %0s", CWT_OUTPUT_RE_FN);
//    for(j = 0; j < N*J1; j = j + 1) begin
//        $fwrite(fp, "%0d\n", $signed(output_cwt_re_buf[j]));
//    end

//    $fclose(fp);

//    /******** IM VECTOR -> OUTPUT FILE **********/
//    fp = $fopen(CWT_OUTPUT_IM_FN, "w");
//    if(fp == 0) begin
//        $display("ERROR: failed to open '%s'", CWT_OUTPUT_IM_FN);
//        $stop;
//    end
//    $display("\n[CWT] Writing cwt_im output results to %0s", CWT_OUTPUT_IM_FN);
//    for(j = 0; j < N*J1; j = j + 1) begin
//        $fwrite(fp, "%0d\n", $signed(output_cwt_im_buf[j]));
//    end

//    $fclose(fp);


//    /******** OPEN GOLDEN RE **********/    
//    fp = $fopen(CWT_GOLDEN_RE_FN, "r");    
//    if(fp == 0) begin
//        $display("ERROR: failed to open '%s'", CWT_GOLDEN_RE_FN);
//        $stop;
//    end

//    /******** COMPARE RE GOLDEN **********/
//    $display("[CWT] Comparing CWT RE results with %0s ...", CWT_GOLDEN_RE_FN);
//    num_errors = 0;
//    for(j = 0; j < N*J1; j = j + 1) begin
//        // use input_buf to hold golden vector values
//        $fscanf(fp, "%d\n", golden_cwt_re_buf[j]);

//        if(output_cwt_re_buf[j] != golden_cwt_re_buf[j]) begin
//            $display("[CWT] ERROR at input[%2d]: Output values differ output=%5d, expected %5d", j, $signed(output_cwt_re_buf[j]), $signed(golden_cwt_re_buf[j]));
//            num_errors = num_errors + 1;
//        end
//    end
//    // NUM ERRORS IMAGINARY
//    if(num_errors == 0)
//        $display("[CWT] RE PASSED\n");
//    else
//        $display("[CWT] RE FAILED - %3d errors!\n", num_errors);
    
//    $fclose(fp);
    

//    /******** OPEN GOLDEN IM **********/
//    fp = $fopen(CWT_GOLDEN_IM_FN, "r");
//    if(fp == 0) begin
//        $display("ERROR: failed to open '%s'", CWT_GOLDEN_IM_FN);
//        $stop;
//    end
    
//    /******** COMPARE IM GOLDEN **********/
//    $display("[CWT] Comparing CWT IM results with %0s ...", CWT_GOLDEN_IM_FN);
//    num_errors = 0;
//    for(j = 0; j < N*J1; j = j + 1) begin
//        // use input_buf to hold golden vector values
//        $fscanf(fp, "%d\n", golden_cwt_im_buf[j]);

//        if(output_cwt_im_buf[j] != golden_cwt_im_buf[j]) begin
//            $display("[CWT] ERROR at input[%2d]: Output values differ output=%5d, expected %5d", j, $signed(output_cwt_im_buf[j]), $signed(golden_cwt_im_buf[j]));
//            num_errors = num_errors + 1;
//        end
//    end
    
//    // NUM ERRORS REAL
//    if(num_errors == 0)
//        $display("[CWT] IM PASSED\n");
//    else
//        $display("[CWT] IM FAILED - %3d errors!\n", num_errors);
    
//    $fclose(fp);

//    $stop;
//end

endmodule