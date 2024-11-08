vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu -sv \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../data_path.gen/sources_1/ip/fft_control_unit_0_1/src/div_10bit/sources_1/new/divu_int.v" \
"../../../../data_path.gen/sources_1/ip/fft_control_unit_0_1/src/div_10bit/sim/div_10bit.v" \
"../../../../data_path.gen/sources_1/ip/fft_control_unit_0_1/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/src/full_adder.v" \
"../../../../data_path.gen/sources_1/ip/fft_control_unit_0_1/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/src/adder_subtracter32.v" \
"../../../../data_path.gen/sources_1/ip/fft_control_unit_0_1/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/sim/adder_subtracter32bit.v" \
"../../../../data_path.gen/sources_1/ip/fft_control_unit_0_1/src/control_unit.v" \
"../../../../data_path.gen/sources_1/ip/fft_control_unit_0_1/sim/fft_control_unit_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

