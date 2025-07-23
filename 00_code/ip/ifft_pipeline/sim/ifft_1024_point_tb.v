`timescale 1ns / 1ps

module ifft_1024_point_tb ();

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
wire ifft_ready;
wire ifft_done;
wire busy_o;

wire [31:0] X_re;
wire [31:0] X_im;

localparam N = 11'd256;
localparam J1 = 11'd1;

localparam N_J1 = N;

/************ load input buffers ***************/
reg [31:0] input_re_buf[0:(N_J1)-1];
reg [31:0] input_im_buf[0:(N_J1)-1];

reg [31:0] golden_re_buf[0:(N_J1)-1];
reg [31:0] golden_im_buf[0:(N_J1)-1];

reg [31:0] output_re_buf[0:(N_J1)-1];
reg [31:0] output_im_buf[0:(N_J1)-1];

integer fp;     // file descriptor
integer j;      // fd write/read index
integer i_in;   // num iterations
integer i_out;  // num iterations
integer counter_j;

integer num_errors;

/**************** FILENAMES ***************/
localparam INPUT_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_re.txt";
localparam INPUT_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/fft/golden_im.txt";

localparam GOLDEN_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_re.txt";
localparam GOLDEN_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_im.txt";

localparam OUTPUT_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/output_re.txt";
localparam OUTPUT_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/output_im.txt";

/****************** DUT *****************/
ifft_1024_point #(N) dut(
    .clk(clk),
    .rstn(rstn),
    .x0_re_i(x_re),
    .x0_im_i(x_im),
    
    .start_i(start),
    .dready_i(dready),
    .dl_busy_i(dl_busy),
    
    .ifft_ready_o(ifft_ready),
    .ifft_done_o(ifft_done),  
    .busy_o(busy_o),
    .x0_re_o(X_re),
    .x0_im_o(X_im)
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
    dready = 0;

    x_re = 32'd0;
    x_im = 32'd0;

    #(`CLK_PERIOD*15); // 3 clk cycles
    start = 1;
    
    #(`CLK_PERIOD*15); // 3 clk cycles
    dready = 1;
    
    #(`CLK_PERIOD*30); // 3 clk cycles
    dready = 0;
    start = 0;
    
    #(`CLK_PERIOD*15); // 3 clk cycles
    dready = 1;
    
    wait(i_in == N);
    dready = 0;
    
    x_re <= 0;
    x_im <= 0;
    
    dl_busy = 0;
end

initial i_in <= 0;
initial i_out <= 0;
initial counter_j <= 0;

/************** INPUT FILE *************/
always @(negedge rstn) begin
    //#(`CLK_PERIOD*2);
    fp = $fopen(INPUT_RE_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", INPUT_RE_FILENAME);
        $stop;
    end
   
    // load input values
    for(j = 0; j < N_J1; j = j + 1) begin
        $fscanf(fp, "%d\n", input_re_buf[j]);
    end
    
    $fclose(fp);

    fp = $fopen(INPUT_IM_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", INPUT_IM_FILENAME);
        $stop;
    end
    
    // load input values
    for(j = 0; j < N_J1; j = j + 1) begin
        $fscanf(fp, "%d\n", input_im_buf[j]);
    end
    
    $fclose(fp);
end

/************** INPUT VECTORS -> DUT *************/
always @(posedge clk or negedge rstn) begin
    if(!rstn)
        i_in = 0;

    else if(dready) begin
//        #(`CLK_PERIOD*1); // if you give inputs immed/ after the start is asserted,
        // the inputs passed to the dut are not correct 
        
        x_re <= input_re_buf[i_in];
        x_im <= input_im_buf[i_in];

        i_in = i_in + 1;
    end
    else if(busy_o) begin
        x_re <= 'd0;
        x_im <= 'd0;
    end
end

/************* DUT -> OUTPUT VECTORS ************/
always @(negedge clk or negedge rstn or negedge start) begin
    if(!rstn)
        i_out = 0;

    else if(ifft_ready) begin
        output_re_buf[i_out] <= X_re;
        output_im_buf[i_out] <= X_im;

        i_out = i_out + 1;
    end
end

/*************** COMPARE VALUES ****************/
always @(posedge ifft_done) begin
    counter_j = counter_j + 1;
    
    if(counter_j == J1) begin
        wait(~ifft_ready);
        
        /******** RE VECTOR -> OUTPUT FILE **********/
        fp = $fopen(OUTPUT_RE_FILENAME, "w");
        if(fp == 0) begin
            $display("ERROR: failed to open '%s'", OUTPUT_RE_FILENAME);
            $stop;
        end
        $display("\nWriting re output results to %0s", OUTPUT_RE_FILENAME);
        for(j = 0; j < N_J1; j = j + 1) begin
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
        for(j = 0; j < N_J1; j = j + 1) begin
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
        for(j = 0; j < N_J1; j = j + 1) begin
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
        for(j = 0; j < N_J1; j = j + 1) begin
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
    
        $finish;
    end
end

endmodule