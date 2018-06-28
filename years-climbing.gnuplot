set terminal png fontscale 0.4

set title font "arial,24"
set boxwidth 0.5
set style fill solid
set key off
set style data histograms

bin_width = 1;
bin_number(x) = floor(x/bin_width)
rounded(x) = bin_width * ( bin_number(x) + 0.5 )
set yrange [0:40]

set output 'years-climbing-total.png'
set title "Total years climbing, including gym (N = 209)"
plot "years-climbing-total.dat" using (rounded($1)):(1) smooth frequency with boxes

set output 'years-climbing-outdoors.png'
set title "Years climbing outdoors (N = 209)"
plot "years-climbing-outdoors.dat" using (rounded($1)):(1) smooth frequency with boxes

