module sensor_cu #(
    parameter N = 1024 )
(
    input wire clk, 
    input wire rstn,
    input wire start_i,
    input wire busy,
    
    output reg start_pulse,
    output wire dready,
    output wire [($clog2(N)-1):0] brom_addr

);

localparam INPUT_CLK = 50000000;
localparam SENSOR_ODR = 3200;

// define states
localparam S_IDLE = 2'b00;
localparam S_SEND = 2'b01;

// state and nextstate registers
reg[1:0] state;
reg[1:0] nstate;

reg clk_sensor;
reg [15:0] clk_counter;

reg new_data;

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
        	if(start_pulse)
        		nstate = S_SEND;	
        end

        S_SEND: begin 
        	if(data_counter == N)
        		nstate = S_IDLE;
        end

    endcase
end

// output logic
always @(*) begin
    case(state)
        S_IDLE: begin
        	brom_addr = 'd0;
        	dready = 0;

        end

        S_SEND: begin
        	brom_addr = data_counter;
        	dready = 1;
        end
    endcase
end

// assign start_pulse = (~busy && (data_counter < 'd3) && new_data);

always @(posedge clk or negedge rstn) begin
    if (~rstn) begin
        start_pulse <= 'd0;
    end
    else if(~start_pulse)
        if (new_data && ~busy)
            start_pulse <= 1;
        else 
            start_pulse <= 0;
    else 
        if(data_counter > 'd3)
            start_pulse <= 0;
        else
            start_pulse <= 1;
end

always @(posedge clk_sensor or negedge rstn) begin
    if(~rstn)
        new_data <= 0;
    else begin
        new_data <= new_data;

        if(state == S_SEND)
            new_data <= 0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (~rstn) begin
        data_counter <= 'd0;
        
    end
    else if (state == S_SEND) begin
        data_counter <= data_counter + 1;
    end
    else if (state == S_IDLE) begin
        data_counter <= 'd0;
    end
end

always @(posedge clk or negedge rstn) begin
    if (~rstn) begin
        clk_sensor <= 'd0;
        clk_counter <= 'd0;
    end
    else begin
        clk_sensor <= clk_sensor;
        clk_counter <= clk_counter + 1;
        
        if(clk_counter == (INPUT_CLK / SENSOR_ODR) * N) begin
            clk_sensor <= ~clk_sensor;
            clk_counter <= 'd0;
        end
    end
end


endmodule