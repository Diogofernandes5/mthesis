onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib div_10bit_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {div_10bit.udo}

run -all

quit -force
