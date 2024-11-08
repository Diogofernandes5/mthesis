vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../butterfly_full.gen/sources_1/ip/shift_right_fractional_len/src/shift_r.v" \
"../../../../butterfly_full.gen/sources_1/ip/shift_right_fractional_len/sim/shift_right_fractional_len.v" \


vlog -work xil_defaultlib \
"glbl.v"

