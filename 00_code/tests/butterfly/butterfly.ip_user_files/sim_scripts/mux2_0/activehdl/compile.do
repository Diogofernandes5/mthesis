vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../butterfly.gen/sources_1/ip/mux2_0/src/mux2.v" \
"../../../../butterfly.gen/sources_1/ip/mux2_0/sim/mux2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

