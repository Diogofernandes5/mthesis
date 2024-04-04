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
"../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
"../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \

vlog -work xil_defaultlib \
"glbl.v"

