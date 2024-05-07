vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../../radix_2_module/radix_2_module.tmp/butterfly_full_v1_0_project/butterfly_full_v1_0_project.gen/sources_1/ip/mux2_0/src/mux2.v" \
"../../../../../radix_2_module/radix_2_module.tmp/butterfly_full_v1_0_project/butterfly_full_v1_0_project.gen/sources_1/ip/mux2_0/sim/mux2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

