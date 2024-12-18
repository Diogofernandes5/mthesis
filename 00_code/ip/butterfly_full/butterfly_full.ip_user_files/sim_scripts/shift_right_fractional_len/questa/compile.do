vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../../tests/fft_test/fft_test.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.tmp/butterfly_full_ip_v1_0_project/butterfly_full_ip_v1_0_project.gen/sources_1/ip/shift_right_fractional_len/src/shift_r.v" \
"../../../../../../tests/fft_test/fft_test.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.tmp/butterfly_full_ip_v1_0_project/butterfly_full_ip_v1_0_project.gen/sources_1/ip/shift_right_fractional_len/sim/shift_right_fractional_len.v" \


vlog -work xil_defaultlib \
"glbl.v"

