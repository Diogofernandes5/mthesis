`ifndef cwt_tb_include_vh_
`define cwt_tb_include_vh_

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

localparam DIV_GOLDEN_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/div/golden_re.txt";
localparam DIV_GOLDEN_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/div/golden_im.txt";
localparam DIV_OUTPUT_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/div/output_re.txt";
localparam DIV_OUTPUT_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/div/output_im.txt";

localparam IFFT_GOLDEN_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_re.txt";
localparam IFFT_GOLDEN_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/golden_im.txt";
localparam IFFT_OUTPUT_RE_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/output_re.txt";
localparam IFFT_OUTPUT_IM_FN = "/home/fernandes/thesis/00_code/matlab/golden_vectors/ifft/output_im.txt";

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

reg [31:0] golden_div_re_buf[0:(N*J1)-1];
reg [31:0] golden_div_im_buf[0:(N*J1)-1];
reg [31:0] output_div_re_buf[0:(N*J1)-1];
reg [31:0] output_div_im_buf[0:(N*J1)-1];

reg [31:0] golden_ifft_re_buf[0:(N*J1)-1];
reg [31:0] golden_ifft_im_buf[0:(N*J1)-1];
reg [31:0] output_ifft_re_buf[0:(N*J1)-1];
reg [31:0] output_ifft_im_buf[0:(N*J1)-1];

integer fp;     // file descriptor
integer j;      // fd write/read index
integer i_in;   // num iterations
integer i_out_fft;  // num iterations
integer i_out_mul;  // num iterations
integer i_out_div;  // num iterations
integer i_out_ifft;  // num iterations

integer counter_j_mul;
integer counter_j_div;
integer counter_j_ifft;

integer num_errors_fft;
integer num_errors_mul;
integer num_errors_div;
integer num_errors_ifft;

initial i_in <= 0;
initial i_out_fft <= 0;
initial i_out_mul <= 0;
initial i_out_div <= 0;
initial i_out_ifft <= 0;


initial counter_j_mul <= 0;
initial counter_j_div <= 0;
initial counter_j_ifft <= 0;


//Configuration address parameters
`endif
