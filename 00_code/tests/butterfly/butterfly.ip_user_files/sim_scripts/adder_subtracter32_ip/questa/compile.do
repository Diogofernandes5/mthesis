vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../radix_2_module/radix_2_module.tmp/butterfly_full_v1_0_project/butterfly_full_v1_0_project.gen/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
"../../../../../radix_2_module/radix_2_module.tmp/butterfly_full_v1_0_project/butterfly_full_v1_0_project.gen/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../../radix_2_module/radix_2_module.tmp/butterfly_full_v1_0_project/butterfly_full_v1_0_project.gen/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \


vlog -work xil_defaultlib \
"glbl.v"

