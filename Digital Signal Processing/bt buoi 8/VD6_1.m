clc, clear all , close all
fc = 250
fs = 1000
vc = fc/fs
L = 21
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  rectwin(L) %Cua so hcn
h_ideal = ideal_LP (2*pi*vc,L) 
h_LP = h_ideal.*w'
figure
stem(n,h_LP)
figure
filter_spect_1_vc (h_LP)
grid on
