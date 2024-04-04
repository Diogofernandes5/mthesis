vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../stage1.gen/sources_1/ip/fft_control_unit/src/control_unit.v" \
"../../../../stage1.gen/sources_1/ip/fft_control_unit/sim/fft_control_unit.v" \


vlog -work xil_defaultlib \
"glbl.v"

