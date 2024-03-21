vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_10
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_17
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 riviera/mult_gen_v12_0_17
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_utils_v3_0_10 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../radix_2_module.gen/sources_1/ip/butterfly_full_0/src/multiplier/sim/multiplier.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../radix_2_module.gen/sources_1/ip/butterfly_full_0/src/mux2_0/src/mux2.v" \
"../../../../radix_2_module.gen/sources_1/ip/butterfly_full_0/src/mux2_0/sim/mux2_0.v" \
"../../../../radix_2_module.gen/sources_1/ip/butterfly_full_0/src/adder_subtracter32_ip/src/full_adder.v" \
"../../../../radix_2_module.gen/sources_1/ip/butterfly_full_0/src/adder_subtracter32_ip/src/adder_subtracter32.v" \
"../../../../radix_2_module.gen/sources_1/ip/butterfly_full_0/src/adder_subtracter32_ip/sim/adder_subtracter32_ip.v" \
"../../../../radix_2_module.gen/sources_1/ip/butterfly_full_0/src/butterfly_full.v" \
"../../../../radix_2_module.gen/sources_1/ip/butterfly_full_0/sim/butterfly_full_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

