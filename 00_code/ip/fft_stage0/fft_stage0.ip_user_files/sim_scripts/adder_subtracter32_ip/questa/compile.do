vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu -sv \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
"../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \

vlog -work xil_defaultlib \
"glbl.v"

