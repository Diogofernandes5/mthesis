vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../butterfly.gen/sources_1/ip/mux2_0/src/mux2.v" \
"../../../../butterfly.gen/sources_1/ip/mux2_0/sim/mux2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

