vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../stage1.gen/sources_1/ip/fft_control_unit/src/control_unit.v" \
"../../../../stage1.gen/sources_1/ip/fft_control_unit/sim/fft_control_unit.v" \


vlog -work xil_defaultlib \
"glbl.v"

