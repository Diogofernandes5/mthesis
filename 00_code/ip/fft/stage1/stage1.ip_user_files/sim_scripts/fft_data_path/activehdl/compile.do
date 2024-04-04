vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../stage1.gen/sources_1/ip/fft_data_path/src/mux2_0/src/mux2.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/src/mux2_0/sim/mux2_0.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/src/butterfly_full_0/src/butterfly_full.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/src/butterfly_full_0/sim/butterfly_full_0.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/src/data_path.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/sim/fft_data_path.v" \

vlog -work xil_defaultlib \
"glbl.v"

