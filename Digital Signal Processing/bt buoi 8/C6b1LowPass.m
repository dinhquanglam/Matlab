clc, clear all , close all
wc = 2*pi/3
L = 61
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  hann(L) %Cua so hcn
h_ideal = ideal_LP (wc,L) 
h_LP = h_ideal.*w'
figure
stem(n,h_LP)
figure
filter_spect_1 (h_LP)
grid on
[ H W] = freqz(h_LP, 1 , 50)




