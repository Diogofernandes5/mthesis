vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../butterfly_full_ip_v1_0_project.gen/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
"../../../../butterfly_full_ip_v1_0_project.gen/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../butterfly_full_ip_v1_0_project.gen/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \


vlog -work xil_defaultlib \
"glbl.v"

