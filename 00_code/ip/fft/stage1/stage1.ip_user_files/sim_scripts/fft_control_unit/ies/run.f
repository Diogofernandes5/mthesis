-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../stage1.gen/sources_1/ip/fft_control_unit/src/control_unit.v" \
  "../../../../stage1.gen/sources_1/ip/fft_control_unit/sim/fft_control_unit.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

