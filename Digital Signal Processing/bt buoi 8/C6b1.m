clc, clear all , close all
wc = pi/5
L = 29
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;

w =  rectwin(L) %Cua so hcn
h_ideal = ideal_LP (wc,L) 
h_LP = h_ideal.*w'
figure
stem(n,h_LP)
title('Dap ung xung')
figure
filter_spect_1 (h_LP)
title('Bo loc thong thap theo phuong phap cua so hcn')
grid on
