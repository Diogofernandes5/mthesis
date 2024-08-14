module data_path_tb (
    input wire clk, rstn,
    
    input wire [31:0] x0_re,
    input wire [31:0] x0_im,
    input wire [31:0] x1_re,
    input wire [31:0] x1_im,
    
    input wire start,
    
    output reg fft_ready,
    
    output wire [31:0] X0_re,
    output wire [31:0] X0_im,
    output wire [31:0] X1_re,
    output wire [31:0] X1_im
    );

/* ----------- Variables ------------*/
reg src_sel;
reg bram_we;
reg bf_ce;

reg [8:0] bram_addr;

reg [8:0] twiddle_addr;

// define states
localparam S_IDLE = 3'b000;
localparam S_STORE_INPUTS = 3'b001;
localparam S_CHECK_BF_COUNTER = 3'b010;
localparam S_READ_MEMORY = 3'b011;
localparam S_BF_OPERATION = 3'b100;
localparam S_WRITE_BACK = 3'b101;
localparam S_SEND_RESULTS = 3'b110;

// localparam BRAM_SIZE = 10'd512;

// for tests
localparam BRAM_SIZE = 10'd4;

// state and nextstate registers
reg [2:0] state;
reg [2:0] nstate;

// counters registers
reg [9:0] data_counter;
reg [9:0] bf_counter;
reg [1:0] cycle_counter;

/* ----------- DUT ------------ */
data_path dut(
	.clk(clk),
	.rstn(rstn),
	
	.x0_re_i(x0_re),
	.x0_im_i(x0_im),
	.x1_re_i(x1_re),
	.x1_im_i(x1_im),
	
    .bram_addr_i(bram_addr),
    
    .w(32'h1),
	
    .src_sel_i(src_sel),
	.fft_ready_i(fft_ready),

    .bram_we_i(bram_we),
    .bf_ce_i(bf_ce),

    .x0_re_o(X0_re),
    .x0_im_o(X0_im),
    .x1_re_o(X1_re),
    .x1_im_o(X1_im)
    );

/* ------------- Control Unit ------------- */

// state register
always @(posedge clk or negedge rstn) begin
    if(!rstn)begin
        state <= S_IDLE;
        nstate <= S_IDLE;
    end
    else begin
        state <= nstate;
    end
end

// nextstate logic
always @(*) begin
 case(state)
    S_IDLE: 
        if(start) 
            nstate = S_STORE_INPUTS;

    S_STORE_INPUTS: 
        if(data_counter == BRAM_SIZE-1) // data_counter == N/2 (512)
            nstate = S_CHECK_BF_COUNTER;

    S_CHECK_BF_COUNTER: begin 
        if(bf_counter == BRAM_SIZE) 
            nstate = S_SEND_RESULTS;
        else
            nstate = S_READ_MEMORY;
    end

    S_READ_MEMORY:
        nstate = S_BF_OPERATION;

    S_BF_OPERATION: begin
        if(cycle_counter == 1'd1)
            nstate = S_WRITE_BACK;
    end

    S_WRITE_BACK:
        nstate = S_CHECK_BF_COUNTER;

    S_SEND_RESULTS:
        if(data_counter == BRAM_SIZE-1) // data_counter == N/2 (512)
            nstate = S_IDLE;
 endcase
end

// output logic
always @(*) begin
 case(state)
    S_IDLE: begin
        fft_ready = 1'b0;     
        src_sel = 1'b0;
        data_counter = {10{1'b0}};
        bram_addr = {9{1'b0}};
        twiddle_addr = {9{1'b0}};
    end

    S_STORE_INPUTS: begin
        src_sel = 1'b0;
        bram_addr = data_counter;
        bram_we = 1'b1;
    end

    S_CHECK_BF_COUNTER: begin
        src_sel = 1'b1;
        data_counter = {10{1'b0}}; // reset data_counter 
        //bram_addr = data_counter;   
        bram_addr = bf_counter;   
        bram_we = 1'b0; // disable writing to memmory
    end 
    S_READ_MEMORY: begin
        bram_addr = bf_counter;
        twiddle_addr = bf_counter;
    end
    S_BF_OPERATION: begin
        bf_ce = 1'b1;
    end
    S_WRITE_BACK: begin
        bf_ce = 1'b0;
        bram_we = 1'b1;
        cycle_counter = {2{1'b0}};        
    end

    S_SEND_RESULTS: begin
        bf_counter = {10{1'b0}};  // reset bf_counter
        fft_ready = 1'b1;
        bram_addr = data_counter;
    end

 endcase
end

//--------------------------------------

always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        data_counter = {10{1'b0}};
        bf_counter = {10{1'b0}};
        cycle_counter = {2{1'b0}};
        bram_we = 1'b0;
        bf_ce = 1'b0;
    end
    else if(state == S_STORE_INPUTS || state == S_SEND_RESULTS)  // receiving or sending data
        data_counter = data_counter + 1; // increase data_counter
    
    else if(state == S_WRITE_BACK) 
        bf_counter = bf_counter + 1;    
    
    else if(state == S_BF_OPERATION) 
        cycle_counter = cycle_counter + 1;
    
end

endmodule