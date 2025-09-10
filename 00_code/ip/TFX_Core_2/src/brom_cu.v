module brom_cu #(
    parameter N = 1024 )
(
    input wire clk, 
    input wire rstn,
    
    input wire econnected_i,
    input wire dl_busy_i,
    
    output reg start_o,
    output reg dready_o,
    output reg [($clog2(N*2)-1):0] brom_addr_o
);

localparam INPUT_CLK = 50000000;
localparam SENSOR_ODR = 3200;

localparam CLK_ODRXN = INPUT_CLK / SENSOR_ODR; 

// define states
localparam S_IDLE = 2'b00;
localparam S_SEND = 2'b01;

// state and nextstate registers
reg [1:0] state;
reg [1:0] nstate;

reg [31:0] clk_counter;

wire new_data;
reg new_data_r;

reg [$clog2(N):0] data_counter;

reg start_sending;

reg toggle_page;

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
        S_IDLE: begin
        	if(new_data_r && ~dl_busy_i)
        		nstate = S_SEND;
            else
                nstate = S_IDLE;
        end

        S_SEND: begin 
        	if(data_counter > N)
        		nstate = S_IDLE;
            else
                nstate = S_SEND;
        end

    endcase
end

// output logic
always @(*) begin
    brom_addr_o <= {0,data_counter} | (toggle_page << $clog2(N));
    
    case(state)
        S_IDLE: begin
            start_sending <= 0;
        end

        S_SEND: begin
            start_sending <= 1;
        end
        
        default: begin
            start_sending <= 0;
        end
    endcase
end

always @(posedge clk) begin
    start_o <= 0;
    /* start sending and bram address bigger than 0, because of the bram delay */
    if(start_sending) begin
        start_o <= 1;
        
        if(data_counter > 'd2) begin
            start_o <= 0;
        end
    end
end

always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		dready_o <= 0;
	end
    else
        if(start_o)
            dready_o <= 1;
        else if(~start_sending)
            dready_o <= 0;      
end

always @(posedge clk) 
    new_data_r <= new_data;

assign new_data = econnected_i ? (clk_counter == CLK_ODRXN) : 0;

always @(posedge clk or negedge rstn) begin
    if (~rstn) begin
        data_counter <= 'd0;
    end
    else if(state == S_SEND) begin
        data_counter <= data_counter + 1;
    end
    // else if (state == S_IDLE) 
    else if(data_counter > N)
        data_counter <= 'd0;
end

always @(posedge clk or negedge rstn) begin
    if (~rstn)
        clk_counter <= 'd0;

    else begin
        clk_counter <= clk_counter + 1;
        
        if(clk_counter == CLK_ODRXN) begin
            clk_counter <= 'd0;
        end
    end
end

always @(posedge clk or negedge rstn) begin
    if(~rstn)
        toggle_page <= 0;
    else if (state == S_SEND && data_counter == N-1)
        toggle_page <= ~toggle_page;
    else
        toggle_page <= toggle_page;
end

endmodule