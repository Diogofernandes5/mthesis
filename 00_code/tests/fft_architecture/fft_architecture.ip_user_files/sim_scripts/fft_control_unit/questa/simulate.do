onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fft_control_unit_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fft_control_unit.udo}

run -all

quit -force
