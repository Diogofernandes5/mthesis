vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../butterfly_full.gen/sources_1/ip/shift_right_fractional_len/src/shift_r.v" \
"../../../../butterfly_full.gen/sources_1/ip/shift_right_fractional_len/sim/shift_right_fractional_len.v" \


vlog -work xil_defaultlib \
"glbl.v"

