onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib stage8_BROM_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {stage8_BROM.udo}

run -all

quit -force
