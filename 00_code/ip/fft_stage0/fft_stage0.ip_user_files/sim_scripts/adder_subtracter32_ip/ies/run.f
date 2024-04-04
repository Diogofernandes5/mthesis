-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/src/full_adder.v" \
  "../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/src/adder_subtracter32.v" \
  "../../../../fft_stage0.gen/sources_1/ip/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

