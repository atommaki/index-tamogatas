#!/usr/bin/gnuplot

set xdata time
set timefmt '%s'
set ylabel 'millio Ft'
set term png
set output 'results/results.png'
plot 'results/all-results.dat' u ($2):($4/10**6) w lp notitle

