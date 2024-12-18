vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../../tests/fft_test/fft_test.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/adder_subtracter32bit/src/full_adder.v" \
"../../../../../../tests/fft_test/fft_test.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/adder_subtracter32bit/src/adder_subtracter32.v" \
"../../../../../../tests/fft_test/fft_test.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/adder_subtracter32bit/sim/adder_subtracter32bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

