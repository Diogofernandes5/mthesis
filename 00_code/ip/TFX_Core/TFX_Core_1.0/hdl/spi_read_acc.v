localparam ADXL313_DATA_X0 = 8'h32;
localparam ADXL313_DATA_Y0 = 8'h34;
localparam ADXL313_DATA_Z0 = 8'h36;

module spi_read_acc #(
	parameter ACC_RESOLUTION = 13,
	parameter ACC_RANGE = 3, // +/- 4g
	parameter ACC_INT_INV = 0,
	parameter DATA_PTS_NUM = 1,
	parameter AXIS_TO_READ = ADXL313_DATA_X0 // Number of axis to read 1/2/3
	) (
	input wire clk,
	input wire rstn,
	
	input wire dl_busy_i,
	
	input wire intr_i,
	
	//  output wire [ACC_RESOLUTION-1:0] data_o,
	output wire [ACC_RESOLUTION-1:0] data_o,
	output reg data_valid_o,
	
	// SPI Signals
	output wire SPI_clk_o,
	input wire SPI_MISO_i,
	output wire SPI_MOSI_o,
	output wire SPI_CS_o,

	output reg config_done,
	output wire [3:0] rx_count
);

localparam READ_WRITEN_BIT = 7;
localparam MB_READ_WRITE_BIT = 6; 

localparam CONFIG_COMM_NUM = 14;

/*************** ADXL313 registers **************/
localparam ADXL313_DEVID_0      = 8'h00;
localparam ADXL313_SOFT_RESET   = 8'h18;
localparam ADXL313_DATA_FORMAT  = 8'h31;
localparam ADXL313_INT_ENABLE   = 8'h2E;
localparam ADXL313_POWER_CTL    = 8'h2D;
localparam ADXL313_BW_RATE      = 8'h2C;

// DATA_FORMAT bits pos
localparam ADXL313_RANGE_BIT      = 0;
localparam ADXL313_FULL_RES_BIT   = 3;
localparam ADXL313_INT_INVERT_BIT = 5; // high for active low int

// INT_ENABLE bits pos
localparam ADXL313_DATA_READY_BIT = 7;

// POWER_CTL bits pos
localparam ADXL313_MEASURE_BIT = 3;

// BW_RATE bits pos
localparam ADXL313_ODR_BIT = 0;

/*************** ADXL313 reg config **************/
// RANGE
localparam ADXL313_0_5_RANGE  = 2'd0;
localparam ADXL313_1_RANGE    = 2'd1;
localparam ADXL313_2_RANGE    = 2'd2;
localparam ADXL313_4_RANGE    = 2'd3;

// ODR
localparam ADXL313_ODR_3200 = 8'hF;     // IDD = 170uA
localparam ADXL313_ODR_1600 = 8'hE;     // IDD = 115uA
localparam ADXL313_ODR_800  = 8'hD;     // IDD = 170uA

localparam ADXL313_SOFT_RESET_DATA = 8'h52;

/*************** States **************/
localparam S_CONFIG = 3'b000;
localparam S_IDLE   = 3'b001;
localparam S_READ   = 3'b010;
localparam S_STORE  = 3'b011;
localparam S_SEND   = 3'b100;

/***************** Variables ******************/
// SPI variables
reg [3:0] tx_count;
reg tx_dv;
reg [7:0] tx_byte;
wire tx_ready;

wire [3:0] rx_count;
wire rx_dv;
wire [7:0] rx_byte;

// ACC Configuration
reg [7:0] config_cmd [0:CONFIG_COMM_NUM]; // Array to hold 9 commands
reg [3:0] cmd_index;
// reg config_done;

// ACC Data
reg [15:0] acc_data;

// Data BRAM variables
reg bram_en;
reg bram_we;
reg [9:0] bram_addr;
reg [31:0] bram_din;

reg [10:0] data_counter;
reg [2:0] state;
wire [12:0] axis_dt_pnt;
reg int_flag;
reg [1:0] bram_latency_shift;

// ACC Configuration Commands 
always @(negedge rstn) begin
	config_cmd[0] = ADXL313_SOFT_RESET; 
	config_cmd[1] = ADXL313_SOFT_RESET_DATA;
	config_cmd[2] = 8'h1E;
	config_cmd[3] = 8'h00; 
	config_cmd[4] = 8'h1F;
	config_cmd[5] = 8'h00; 
	config_cmd[6] = ADXL313_4_RANGE | (1 << ADXL313_FULL_RES_BIT); 
	config_cmd[7] = ADXL313_DATA_FORMAT; 
	config_cmd[8] = ADXL313_4_RANGE | (1 << ADXL313_FULL_RES_BIT); 
	config_cmd[9] = ADXL313_INT_ENABLE; 
	config_cmd[10] = 1 << ADXL313_DATA_READY_BIT; 
	config_cmd[11] = ADXL313_POWER_CTL; 
	config_cmd[12] = 1 << ADXL313_MEASURE_BIT;
	config_cmd[13] = ADXL313_BW_RATE; 
	config_cmd[14] = ADXL313_ODR_3200;
end

always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		state <= S_CONFIG;
		
		config_done <= 0;
		
		cmd_index <= 4'd0;
		tx_count <= 4'd2;
		tx_byte <= 0;
		
		acc_data <= 16'b0;
		data_counter <= 12'd0;
		
		bram_en <= 0;
		bram_we <= 0;
		bram_addr <= 10'd0;
		bram_din <= 31'd0;
	end
	else begin
		case (state)
			S_CONFIG: begin
				if(cmd_index < (CONFIG_COMM_NUM) || (rx_count != tx_count)) begin
					if(tx_ready) begin
						tx_byte <= config_cmd[cmd_index];
						tx_dv <= 1;
						cmd_index <= cmd_index + 1;
					end
					else begin
						tx_dv <= 0;
					end
				end
				else begin
					state <= S_IDLE;
					config_done <= 1;
				end
			end

			S_IDLE: begin
				tx_byte <= 8'd0;
				tx_dv <= 0;
				tx_count <= 4'd3;
				bram_en <= 1;
				bram_we <= 0;

				//        if(tx_ready) begin
				if(int_flag && tx_ready) begin
					state <= S_READ;

					tx_byte <= (1 << READ_WRITEN_BIT) | (1 << MB_READ_WRITE_BIT) | AXIS_TO_READ;
					tx_dv <= 1;
				end
			end

			S_READ: begin
				tx_dv <= 0;
				//        if (tx_ready) begin  // Signal indicating valid data_o from SPI
				if (rx_dv) begin  // Signal indicating valid data_o from SPI
					// Shift left by 8 bits and concatenate the new byte
					acc_data <= {acc_data[7:0], rx_byte};
				  
					if (~SPI_CS_o && (rx_count != (tx_count-1))) begin // Received tx_count of bytes
						tx_dv <= 1; 
						tx_byte <= 8'd0;
					end 
				end

				if (rx_count == tx_count) begin // Received tx_count of bytes
				   state <= S_STORE;
				end 
			end

			S_STORE: begin
				bram_en <= 1;
				bram_we <= 1;
				bram_addr <= data_counter;
				bram_din <= axis_dt_pnt;
				if(data_counter == (DATA_PTS_NUM-1)) begin
					data_counter <= 11'd0;
					state <= S_SEND;
				end
				else begin
					data_counter <= data_counter + 1;
					state <= S_IDLE;
				end
			end

			S_SEND: begin
				bram_en <= 1;
				bram_we <= 0;
				bram_addr <= data_counter;
				if(~dl_busy_i) begin
					bram_addr <= data_counter;
					data_counter <= data_counter + 1;
				  if(data_counter == (DATA_PTS_NUM-1)) begin
					data_counter <= 11'd0;
					state <= S_IDLE;
				  end
				end
			end
		
		endcase
	end

end

// [x1,x0]
assign axis_dt_pnt = {acc_data[7:0], acc_data[15:8]};

// Interrupt flag generation
always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		int_flag <= 0;
	end
	else if (intr_i)
		int_flag <= 1;
	else if (state == S_READ)
		int_flag <= 0;
end

always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
		bram_latency_shift <= 2'b00; // Reset the shift register
	end else begin
		// Shift in a '1' when a new BRAM read is initiated
		bram_latency_shift <= {bram_latency_shift[0], state == S_SEND && ~dl_busy_i};
	end
end

always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
		data_valid_o <= 0; // Reset data_valid_o
	end else begin
		// Assert data_valid_o when BRAM read is initiated and keep it high for 2 cycles
		if (bram_latency_shift[1]) begin
			data_valid_o <= 1; // Data is now valid (after 2-cycle latency)
		end else if (state != S_SEND || dl_busy_i) begin
			data_valid_o <= 0; // Deassert data_valid_o when not in S_SEND state or busy
		end
	end
end

spi_master_ip spi_master (
	.rstn_i(rstn),          // input wire rstn_i
	.clk_i(clk),            // input wire clk_i
	.TX_count_i(tx_count),  // input wire [3 : 0] TX_count_i
	.TX_byte_i(tx_byte),    // input wire [7 : 0] TX_byte_i
	.TX_DV_i(tx_dv),        // input wire TX_DV_i
	.TX_ready_o(tx_ready),  // output wire TX_ready_o
	.RX_count_o(rx_count),  // output wire [3 : 0] RX_count_o
	.RX_DV_o(rx_dv),        // output wire RX_DV_o
	.RX_byte_o(rx_byte),    // output wire [7 : 0] RX_byte_o
	.SPI_clk_o(SPI_clk_o),    // output wire SPI_clk_o
	.SPI_MISO_i(SPI_MISO_i),  // input wire SPI_MISO_i
	.SPI_MOSI_o(SPI_MOSI_o),  // output wire SPI_MOSI_o
	.SPI_CS_o(SPI_CS_o)       // output wire SPI_CS_o
);

acc_data_bram data_bram (
	.clka(clk),    // input wire clka
	.ena(bram_en),      // input wire ena
	.wea(bram_we),      // input wire [0 : 0] wea
	.addra(bram_addr),  // input wire [9 : 0] addra
	.dina(bram_din),    // input wire [12 : 0] dina
	.douta(data_o)  // output wire [12 : 0] douta
);

endmodule