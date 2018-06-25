# sort climbing-freq.csv | uniq -c
set terminal pdf fontscale 0.4
set output 'climbing-type.pdf'

set title font "arial,24"
set boxwidth 0.5
set style fill solid
set key off
set title "Type of outdoor climbing (N=197)"
plot "climbing-type.dat" using 1:3:xtic(2) with boxes