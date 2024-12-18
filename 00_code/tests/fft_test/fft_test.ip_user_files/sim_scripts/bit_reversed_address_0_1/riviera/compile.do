vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../fft_test.gen/sources_1/ip/bit_reversed_address_0_1/src/bit_reversal.v" \
"../../../../fft_test.gen/sources_1/ip/bit_reversed_address_0_1/sim/bit_reversed_address_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

