#!/usr/bin/gnuplot

set term png
set output 'results/results.png'

set timefmt '%s'
set ylabel 'millio Ft'
set xdata time
set format x "%b"
set grid
plot 'results/all-results.dat' u ($2):($4/10**6) w lp notitle

