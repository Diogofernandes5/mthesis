vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_17
vlib questa_lib/msim/blk_mem_gen_v8_4_4

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 questa_lib/msim/mult_gen_v12_0_17
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4

vlog -work xpm -64 -incr -mfcu -sv \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/mux2_twiddle_1/src/mux2.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/mux2_twiddle_1/sim/mux2_twiddle.v" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -64 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/multiplier/sim/multiplier.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/mux2_0/sim/mux2_0.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/shift_right_fractional_len/src/shift_r.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/shift_right_fractional_len/sim/shift_right_fractional_len.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/src/butterfly_full.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/sim/butterfly_full_ip_0.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/demux2_0/src/demux2.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/demux2_0/sim/demux2_0.v" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr -mfcu \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/data_path.srcs/sources_1/ip/bram_results/sim/bram_results.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/data_path/src/data_path.v" \
"../../../../../../cwt/cwt.tmp/fft_pipeline_v1_0_project/fft_pipeline_v1_0_project.gen/sources_1/ip/fft_data_path_0/sim/fft_data_path_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

