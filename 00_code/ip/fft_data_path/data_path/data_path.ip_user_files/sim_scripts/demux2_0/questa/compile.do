vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../data_path.gen/sources_1/ip/demux2_0/src/demux2.v" \
"../../../../data_path.gen/sources_1/ip/demux2_0/sim/demux2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

