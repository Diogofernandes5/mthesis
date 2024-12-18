vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../../../tests/fft_test/fft_test.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/div_10bit/sources_1/new/divu_int.v" \
"../../../../../../tests/fft_test/fft_test.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/div_10bit/sim/div_10bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

