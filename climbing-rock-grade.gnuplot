# sort climbing-freq.csv | uniq -c
set terminal pdf fontscale 0.4
set output 'climbing-rock-grade.pdf'

set title font "arial,24"
set boxwidth 0.5
set style fill solid
set key off
set title "Preferred rock climbing grade (N=185)"
plot "climbing-rock-grade.dat" using 1:3:xtic(2) with boxes