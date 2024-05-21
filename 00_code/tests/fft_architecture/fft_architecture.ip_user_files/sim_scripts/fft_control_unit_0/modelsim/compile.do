vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../fft_architecture.gen/sources_1/ip/fft_control_unit_0/src/control_unit.v" \
"../../../../fft_architecture.gen/sources_1/ip/fft_control_unit_0/sim/fft_control_unit_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

