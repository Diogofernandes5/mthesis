onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fft_data_path -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fft_data_path xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {fft_data_path.udo}

run -all

endsim

quit -force
