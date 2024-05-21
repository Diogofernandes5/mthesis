vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../fft_architecture.gen/sources_1/ip/fft_control_unit_0/src/control_unit.v" \
"../../../../fft_architecture.gen/sources_1/ip/fft_control_unit_0/sim/fft_control_unit_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

