onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+shift_right_fractional_len -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.shift_right_fractional_len xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {shift_right_fractional_len.udo}

run -all

endsim

quit -force
