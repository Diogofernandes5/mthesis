vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../radix_2_module.gen/sources_1/ip/demux2_0/src/demux2.v" \
"../../../../radix_2_module.gen/sources_1/ip/demux2_0/sim/demux2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

