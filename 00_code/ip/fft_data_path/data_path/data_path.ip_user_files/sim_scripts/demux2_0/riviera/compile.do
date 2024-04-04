vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../data_path.gen/sources_1/ip/demux2_0/src/demux2.v" \
"../../../../data_path.gen/sources_1/ip/demux2_0/sim/demux2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

