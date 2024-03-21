onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib rom_stage1_twiddle_im_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {rom_stage1_twiddle_im.udo}

run -all

quit -force
