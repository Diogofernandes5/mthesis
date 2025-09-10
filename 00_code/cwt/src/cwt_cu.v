module cwt_cu #(
	parameter N = 1024,
	parameter J1 = 64) (
	input wire clk,
	input wire rstn,

	input wire ifft_ready_i,
	input wire dl_busy_i,

	output reg bram_en_o,
	output reg bram_we_o,
	output reg [$clog2(N*J1)-1:0] bram_addr_o,

	output reg busy_o,
	output reg cwt_done_o,
	
	output reg [1:0] state,
	
	/*********************************/
	output reg [$clog2(J1):0] counter_j
	);

// define states
localparam S_IDLE           = 2'b00;
localparam S_RECEIVE_DATA   = 2'b01;
localparam S_CHECK_J        = 2'b10;
localparam S_SEND_RESULTS   = 2'b11;

// state and nextstate registers
//reg[1:0] state;
reg[1:0] nstate;

reg [$clog2(N*J1):0] data_counter;
//reg [$clog2(J1):0] counter_j;
reg [$clog2(J1):0] counter_j_aux;

reg start_sending;

// state register
always @(posedge clk or negedge rstn) begin
	if(~rstn)
		state <= S_IDLE;
	else begin
		state <= nstate;
	end
end

// nextstate logic
always @(*) begin
	case(state)
		S_IDLE:
			if(ifft_ready_i)
				nstate = S_RECEIVE_DATA;
			else
				nstate = S_IDLE;

		S_RECEIVE_DATA:
			if(data_counter == (N-1))
				nstate = S_CHECK_J;
			else 
				nstate = S_RECEIVE_DATA;
		
		S_CHECK_J:
			if((counter_j == J1) && (~dl_busy_i))
                nstate = S_SEND_RESULTS;
			else 
				nstate = S_IDLE;		

		S_SEND_RESULTS: 
			if(data_counter == (N*J1*2))
				nstate = S_IDLE;
			else 
				nstate = S_SEND_RESULTS;
		default:
			nstate = S_IDLE;
	endcase
end

// output logic
always @(*) begin
	case(state)
		S_IDLE: begin
			bram_en_o <= 1'b1;
			bram_we_o <= 1'b0;
			bram_addr_o <= 32'd0;

			start_sending <= 1'b0;
			busy_o <= 1'b0;
		end
			
		S_RECEIVE_DATA: begin
			bram_en_o <= 1'b1;
			bram_we_o <= 1'b1;
			bram_addr_o <= ((counter_j - 1) << $clog2(N)) + data_counter;

			start_sending <= 1'b0;
			busy_o <= 1'b1;
		end
		
		S_CHECK_J: begin
			bram_en_o <= 1'b1;
			bram_we_o <= 1'b0;
			bram_addr_o <= 32'd0;

			start_sending <= 1'b0;
			busy_o <= 1'b1;
		end

		S_SEND_RESULTS: begin
			bram_en_o <= 1'b1;
			bram_we_o <= 1'b0;
			bram_addr_o <= data_counter;

			start_sending <= 1'b1;
			busy_o <= 1'b1;
		end

	endcase
end

always @(negedge clk) begin
    /* start sending and bram address bigger than 0, because of the bram delay */
    if(start_sending && (data_counter > 10'd0))
        cwt_done_o <= 1'b1;
        
    else 
        cwt_done_o <= 1'b0;
end

always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		data_counter <= 32'd0;
		counter_j <= 12'd0;
		counter_j_aux <= 0;
	end
	else begin
		case(state)
			S_IDLE: begin
				data_counter <= 32'd0;
				counter_j <= counter_j_aux;
			end
				
			S_RECEIVE_DATA: begin
				data_counter <= data_counter + 1;
				counter_j <= counter_j_aux;
			end
			
			S_CHECK_J: begin
				data_counter <= 32'd0;
				counter_j <= counter_j_aux;
			end
			
			S_SEND_RESULTS: begin
				data_counter <= data_counter + 1;
				counter_j <= 12'd0;
            end
        endcase
	end
end

always @(posedge ifft_ready_i) begin
    counter_j_aux <= counter_j_aux + 1;
end

endmodule