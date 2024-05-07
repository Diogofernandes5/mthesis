vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_10
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_17
vlib riviera/blk_mem_gen_v8_4_4

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 riviera/mult_gen_v12_0_17
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4

vlog -work xpm  -sv2k12 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/mux2_0/src/mux2.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/mux2_0/sim/mux2_0.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/multiplier/sim/multiplier.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/src/butterfly_full.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/sim/butterfly_full_ip_0.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/demux2_0/src/demux2.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/demux2_0/sim/demux2_0.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/data_path.srcs/sources_1/ip/bram_results/sim/bram_results.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/data_path/src/data_path.v" \
"../../../../stage1.gen/sources_1/ip/fft_data_path/sim/fft_data_path.v" \

vlog -work xil_defaultlib \
"glbl.v"

