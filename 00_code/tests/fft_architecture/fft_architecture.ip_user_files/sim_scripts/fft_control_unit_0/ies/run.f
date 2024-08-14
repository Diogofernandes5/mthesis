-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../fft_architecture.gen/sources_1/ip/fft_control_unit_0/src/control_unit.v" \
  "../../../../fft_architecture.gen/sources_1/ip/fft_control_unit_0/sim/fft_control_unit_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

