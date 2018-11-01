#!/usr/bin/gnuplot

set xdata time
set timefmt '%s'
set ylabel 'millio Ft'
plot '~/index-tamogatas.dat.filtered' u ($2):($4/10**6) w lp notitle
pause -1

