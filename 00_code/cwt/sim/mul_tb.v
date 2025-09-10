`timescale 1ns / 1ps

`define CLK_PERIOD 10   // nanoseconds

module mul_tb();

localparam N = 1024;
localparam J1 = 4;

reg clk;
reg rstn;

reg fft_ready;
reg dl_busy;

reg [31:0] x_re;
reg [31:0] x_im;

wire bram_en;
wire bram_we;
wire [$clog2(N)-1:0] bram_addr;

wire [$clog2(N*J1)-1:0] daughter_addr;

wire mul_done;

wire [31:0] X_re;
wire [31:0] X_im;

wire src_sel;

/************ load input buffers ***************/
reg [31:0] input_re_buf[0:N-1];
reg [31:0] input_im_buf[0:N-1];

reg [31:0] golden_re_buf[0:(N*J1)-1];
reg [31:0] golden_im_buf[0:(N*J1)-1];

reg [31:0] output_re_buf[0:(N*J1)-1];
reg [31:0] output_im_buf[0:(N*J1)-1];

integer fp;     // file descriptor
integer j;      // fd write/read index
integer i_in;   // num iterations
integer i_out;  // num iterations
integer j_counter; // counts the number of multiplications done

reg last_mult; // last multiplication done flag

integer num_errors;

/**************** FILENAMES ***************/
localparam INPUT_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/input_re.txt";
localparam INPUT_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/input_im.txt";

localparam GOLDEN_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_re.txt";
localparam GOLDEN_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/golden_im.txt";

localparam OUTPUT_RE_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/output_re.txt";
localparam OUTPUT_IM_FILENAME = "/home/fernandes/thesis/00_code/matlab/golden_vectors/mul/output_im.txt";

/************* TESTS ***************/
wire [$clog2(N)-1:0] data_counter;
wire [$clog2(N)-1:0] counter_n;
wire [$clog2(J1)-1:0] counter_j;

wire [1:0] cycle_counter;

wire [2:0] state;

wire [31:0] x_re_bram;
wire [31:0] x_im_bram;
wire [31:0] x_re_m;
wire [31:0] x_im_m;

wire [31:0] brom_daughter;
 
/***********************************/

always #(`CLK_PERIOD/2) clk = ~clk;

initial begin
    clk <= 1;
    rstn <= 0;
        
    #(`CLK_PERIOD*10) rstn <= 1;
end

mul_ip #(
    .N(N),
    .J1(J1)) dut (
    .clk(clk),
    .rstn(rstn),

    .fft_ready_i(fft_ready),
    .dl_busy_i(dl_busy),
    
    .src_sel(src_sel),

    .x_re_i(x_re),
    .x_im_i(x_im),
    .mul_done_o(mul_done),

    .bram_en(bram_en),
    .bram_we(bram_we),
    .bram_addr(bram_addr),
    .daughter_addr(daughter_addr),

    .X_re_o(X_re),
    .X_im_o(X_im),
    
    /*************************/
    .state(state),
    .data_counter(data_counter),
    .counter_n(counter_n),
    .counter_j(counter_j),
    .cycle_counter(cycle_counter),
    .x_re_bram(x_re_bram),
    .x_im_bram(x_im_bram),
    .x_re_m(x_re_m),
    .x_im_m(x_im_m),
    .brom_daughter(brom_daughter)
);

/************ STIMULUS ***********/
initial begin
    fft_ready = 0;
    dl_busy = 0;
    #(`CLK_PERIOD*15);
    fft_ready = 1;

    #(`CLK_PERIOD*N);
    fft_ready = 0;
    
//    #(`CLK_PERIOD*700000);
//    dl_busy = 0;

end

initial begin
    x_re = 0;
    x_im = 0;
    
    j_counter = 0;
end

// always @(posedge clk) begin
//     if(fft_ready) begin
//         x_re = (x_re + 1) & 32'd15;
//         x_im = (x_im + 2) & 32'd31;
//     end
// end

initial i_in <= 0;
initial i_out <= 0;

/************** INPUT FILE *************/
always @(negedge rstn) begin
    //#(`CLK_PERIOD*2);
    fp = $fopen(INPUT_RE_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", INPUT_RE_FILENAME);
        $stop;
    end
    // load input values
    for(j = 0; j < N; j = j + 1) begin
        $fscanf(fp, "%d\n", input_re_buf[j]);
    end
    
    $fclose(fp);

    fp = $fopen(INPUT_IM_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", INPUT_IM_FILENAME);
        $stop;
    end
    // load input values
    for(j = 0; j < N; j = j + 1) begin
        $fscanf(fp, "%d\n", input_im_buf[j]);
    end
    
    $fclose(fp);
end

/************** INPUT VECTORS -> DUT *************/
always @(posedge clk or negedge rstn) begin
    if(!rstn)
        i_in = 0;

    else if(fft_ready) begin
//        #(`CLK_PERIOD*1); // if you give inputs immed/ after the start is asserted,
        // the inputs passed to the dut are not correct 
        
        x_re <= input_re_buf[i_in];
        x_im <= input_im_buf[i_in];

        i_in = i_in + 1;
    end
end

/************* DUT -> OUTPUT VECTORS ************/
always @(negedge clk or negedge rstn or negedge fft_ready) begin
    if(!rstn)
        i_out = 0;

    else if(mul_done) begin
        output_re_buf[i_out] <= X_re;
        output_im_buf[i_out] <= X_im;

        i_out = i_out + 1;
    end
end

always @(posedge mul_done) begin
    j_counter = j_counter + 1;
    
    if(j_counter == J1)
        last_mult <= 1;
end


/*************** COMPARE VALUES ****************/
always @(posedge last_mult) begin
    /******** OPEN GOLDEN RE **********/    
    fp = $fopen(GOLDEN_RE_FILENAME, "r");    
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", GOLDEN_RE_FILENAME);
        $stop;
    end
    
    for(j = 0; j < (N*J1); j = j + 1) 
        $fscanf(fp, "%d\n", golden_re_buf[j]);
    
    $fclose(fp);
    
    /******** OPEN GOLDEN IM **********/
    fp = $fopen(GOLDEN_IM_FILENAME, "r");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", GOLDEN_IM_FILENAME);
        $stop;
    end
    
    for(j = 0; j < (N*J1); j = j + 1) 
        $fscanf(fp, "%d\n", golden_im_buf[j]);
    
    $fclose(fp);
    
    #(`CLK_PERIOD*N + 1);
    
    /******** RE VECTOR -> OUTPUT FILE **********/
    fp = $fopen(OUTPUT_RE_FILENAME, "w");
    if(fp == 0) begin
        $display("ERROR: failed to open '%s'", OUTPUT_RE_FILENAME);
        $stop;
    end
    $display("\nWriting re output results to %0s", OUTPUT_RE_FILENAME);
    for(j = 0; j < (N*J1); j = j + 1) begin
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
    for(j = 0; j < (N*J1); j = j + 1) begin
        $fwrite(fp, "%0d\n", $signed(output_im_buf[j]));
    end

    $fclose(fp);

    /******** COMPARE RE GOLDEN **********/
    $display("Comparing output results with %0s ...", GOLDEN_RE_FILENAME);
    num_errors = 0;
    for(j = 0; j < (N*J1); j = j + 1) begin
        if(output_re_buf[j] != golden_re_buf[j]) begin
            $display("ERROR at input[%2d]: Output values differ output=%5d, golden=%5d", j, $signed(output_re_buf[j]), $signed(golden_re_buf[j]));
            num_errors = num_errors + 1;
        end
    end
    // NUM ERRORS RE
    if(num_errors == 0)
        $display("RE PASSED\n");
    else
        $display("RE FAILED - %3d errors!\n", num_errors);
    
    /******** COMPARE IM GOLDEN **********/
    $display("Comparing output results with %0s ...", GOLDEN_IM_FILENAME);
    num_errors = 0;
    for(j = 0; j < (N*J1); j = j + 1) begin
        if(output_im_buf[j] != golden_im_buf[j]) begin
            $display("ERROR at input[%2d]: Output values differ output=%5d, golden=%5d", j, $signed(output_im_buf[j]), $signed(golden_im_buf[j]));
            num_errors = num_errors + 1;
        end
    end
    
    // NUM ERRORS IM
    if(num_errors == 0)
        $display("IM PASSED\n");
    else
        $display("IM FAILED - %3d errors!\n", num_errors);

    $stop;
end

endmodule