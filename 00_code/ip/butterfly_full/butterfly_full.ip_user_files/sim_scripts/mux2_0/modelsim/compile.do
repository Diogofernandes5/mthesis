vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../../tests/fft_test/fft_test.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.tmp/butterfly_full_ip_v1_0_project/butterfly_full_ip_v1_0_project.gen/sources_1/ip/mux2_0/src/mux2.v" \
"../../../../../../tests/fft_test/fft_test.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.tmp/butterfly_full_ip_v1_0_project/butterfly_full_ip_v1_0_project.gen/sources_1/ip/mux2_0/sim/mux2_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

