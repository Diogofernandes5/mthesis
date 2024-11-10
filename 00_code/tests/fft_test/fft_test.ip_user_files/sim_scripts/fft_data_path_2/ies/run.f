-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/mux2_twiddle_1/src/mux2.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/mux2_twiddle_1/sim/mux2_twiddle.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/mux2_0/sim/mux2_0.v" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_10 \
  "../../../ipstatic/multiplier/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_6 \
  "../../../ipstatic/multiplier/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_6 \
  "../../../ipstatic/multiplier/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_17 \
  "../../../ipstatic/multiplier/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/multiplier/sim/multiplier.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/shift_right_fractional_len/src/shift_r.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/butterfly_full.srcs/sources_1/ip/shift_right_fractional_len/sim/shift_right_fractional_len.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/src/butterfly_full.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/butterfly_full_ip_0/sim/butterfly_full_ip_0.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/demux2_0/src/demux2.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/demux2_0/sim/demux2_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/bram_results/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/data_path.srcs/sources_1/ip/bram_results/sim/bram_results.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/data_path/src/data_path.v" \
  "../../../../fft_test.gen/sources_1/ip/fft_data_path_2/sim/fft_data_path_2.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

