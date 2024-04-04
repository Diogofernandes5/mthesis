vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../stage1.gen/sources_1/ip/fft_control_unit/src/control_unit.v" \
"../../../../stage1.gen/sources_1/ip/fft_control_unit/sim/fft_control_unit.v" \


vlog -work xil_defaultlib \
"glbl.v"

