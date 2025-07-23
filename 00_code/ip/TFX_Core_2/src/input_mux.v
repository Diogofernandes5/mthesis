module input_mux #(
    parameter DATA_WIDTH = 32
)(
    input wire sel, // 0 = BRAM, 1 = SPI

    input wire [DATA_WIDTH-1:0] brom_data,
    input wire brom_sampling_done,
    input wire brom_dready,
    
    input wire [DATA_WIDTH-1:0] spi_data,
    input wire acc_sampling_done,
    input wire acc_dready,
    
    output wire [DATA_WIDTH-1:0] tfx_input,
    output wire sampling_done,
    output wire dready
);

assign tfx_input = sel ? spi_data : brom_data;

assign sampling_done = sel ? acc_sampling_done : brom_sampling_done;

assign dready = sel ? acc_dready: brom_dready;
    
endmodule