vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../radix_2_module.gen/sources_1/ip/demux2_0/src/demux2.v" \
"../../../../radix_2_module.gen/sources_1/ip/demux2_0/sim/demux2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

