-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../../../../tests/fft_architecture/fft_architecture.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/bram_results/sim/bram_results.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

