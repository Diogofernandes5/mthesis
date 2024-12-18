-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../../../../tests/fft_test/fft_test.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/mux2_twiddle/src/mux2.v" \
  "../../../../../../../tests/fft_test/fft_test.tmp/fft_data_path_v1_0_project/fft_data_path_v1_0_project.gen/sources_1/ip/mux2_twiddle/sim/mux2_twiddle.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

