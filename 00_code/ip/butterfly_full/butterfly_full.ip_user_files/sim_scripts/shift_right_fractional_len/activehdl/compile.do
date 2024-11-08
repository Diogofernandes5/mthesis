vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../butterfly_full.gen/sources_1/ip/shift_right_fractional_len/src/shift_r.v" \
"../../../../butterfly_full.gen/sources_1/ip/shift_right_fractional_len/sim/shift_right_fractional_len.v" \


vlog -work xil_defaultlib \
"glbl.v"

