vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../fft_architecture.gen/sources_1/ip/fft_control_unit_0/src/control_unit.v" \
"../../../../fft_architecture.gen/sources_1/ip/fft_control_unit_0/sim/fft_control_unit_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

