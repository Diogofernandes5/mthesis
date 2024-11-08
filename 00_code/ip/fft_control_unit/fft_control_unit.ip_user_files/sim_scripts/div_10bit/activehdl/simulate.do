onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+div_10bit -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.div_10bit xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {div_10bit.udo}

run -all

endsim

quit -force
