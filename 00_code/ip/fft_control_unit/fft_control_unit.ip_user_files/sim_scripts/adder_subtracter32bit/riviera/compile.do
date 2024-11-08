vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../../../tests/fft_architecture/fft_architecture.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/adder_subtracter32bit/src/full_adder.v" \
"../../../../../../tests/fft_architecture/fft_architecture.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/adder_subtracter32bit/src/adder_subtracter32.v" \
"../../../../../../tests/fft_architecture/fft_architecture.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/adder_subtracter32bit/sim/adder_subtracter32bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

