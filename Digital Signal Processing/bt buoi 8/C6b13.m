clc, clear all , close all
wc = pi/8
L = 128
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  rectwin(L) %Cua so hcn
h_ideal = ideal_LP (wc,L) 
h_LP = h_ideal.*w'
figure
stem(n,h_LP)
figure
filter_spect_1 (h_LP)
grid on

figure
h2 = 2*cos(3/8*pi*n) .* h_LP
stem(n,h2)
figure
filter_spect_1 (h2)