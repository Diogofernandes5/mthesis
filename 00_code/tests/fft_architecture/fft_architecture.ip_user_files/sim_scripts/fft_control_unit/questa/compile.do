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
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/src/full_adder.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/src/adder_subtracter32.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/fft_control_unit.srcs/sources_1/ip/adder_subtracter32bit/sim/adder_subtracter32bit.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/fft_control_unit.srcs/sources_1/ip/data_counter_mux2/src/mux2.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/fft_control_unit.srcs/sources_1/ip/data_counter_mux2/sim/data_counter_mux2.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/src/div_10bit/sources_1/new/divu_int.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/src/div_10bit/sim/div_10bit.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/fft_control_unit.srcs/sources_1/ip/bram_bit_reversed_address/src/bit_reversal.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/fft_control_unit.srcs/sources_1/ip/bram_bit_reversed_address/sim/bram_bit_reversed_address.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/src/control_unit.v" \
"../../../../../fft_test/fft_test.tmp/fft_architecture_v1_0_project/fft_architecture_v1_0_project.gen/sources_1/ip/fft_control_unit/sim/fft_control_unit.v" \

vlog -work xil_defaultlib \
"glbl.v"

