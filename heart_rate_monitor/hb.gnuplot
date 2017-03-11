set terminal pngcairo size 1024,600
set output 'hb.png'

set xdata time
set timefmt "%Y%m%d-%H%M%S"
plot 'hb.log' using 1:2 with linespoints lw 2
#pause -1

