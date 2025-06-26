module sensor_cu #(
    parameter N = 1024 )
(
    input wire clk, 
    input wire rstn,
    // input wire start_i,
    input wire econnected,
    input wire busy,
    
    output reg start_pulse,
    output reg dready,
    output reg [($clog2(N)-1):0] brom_addr

);

localparam INPUT_CLK = 50000000;
localparam SENSOR_ODR = 3200;

// localparam CLK_ODRXN = ((INPUT_CLK / SENSOR_ODR) * N);
localparam CLK_ODRXN = INPUT_CLK / SENSOR_ODR; 

// define states
localparam S_IDLE = 2'b00;
localparam S_SEND = 2'b01;

// state and nextstate registers
reg[1:0] state;
reg[1:0] nstate;

reg [31:0] clk_counter;

wire new_data;
reg new_data_r;

reg [15:0] data_counter;

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
        	if(new_data_r && ~busy)
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
    case(state)
        S_IDLE: begin
        	brom_addr <= data_counter;
        	dready <= 0;
            start_pulse <= 0;
        end

        S_SEND: begin
        	brom_addr <= data_counter;
        	dready <= 1;
            start_pulse <= 1;

            if(data_counter > 'd3)
                start_pulse <= 0;
        end
    endcase
end

always @(posedge clk) 
    new_data_r <= new_data;

// assign start_pulse = (~busy && (data_counter < 'd3) && new_data);

// always @(posedge clk or negedge rstn) begin
//     if (~rstn) begin
//         start_pulse <= 'd0;
//     end
//     else if(~start_pulse)
//         if (new_data && ~busy)
//             start_pulse <= 1;
//         else 
//             start_pulse <= 0;
//     else 
//         if(data_counter > 'd3)
//             start_pulse <= 0;
//         else
//             start_pulse <= 1;
// end

assign new_data = econnected ? (clk_counter == CLK_ODRXN) : 0;

always @(posedge clk or negedge rstn) begin
    if (~rstn) begin
        data_counter <= 'd0;
        
    end
    else if ((state == S_SEND) || new_data_r) begin
        data_counter <= data_counter + 1;
    end
    // else if (state == S_IDLE) 
    else if(data_counter > (N+1))
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


endmodule