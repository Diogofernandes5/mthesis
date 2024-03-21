vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../butterfly.gen/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
"../../../../butterfly.gen/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../butterfly.gen/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \


vlog -work xil_defaultlib \
"glbl.v"

