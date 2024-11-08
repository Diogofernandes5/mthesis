vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../../tests/fft_architecture/fft_architecture.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/div_10bit/sources_1/new/divu_int.v" \
"../../../../../../tests/fft_architecture/fft_architecture.tmp/control_unit_v2_0_project/control_unit_v2_0_project.gen/sources_1/ip/div_10bit/sim/div_10bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

