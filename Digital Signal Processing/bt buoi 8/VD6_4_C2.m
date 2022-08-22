%vi du 6.4 cach 1:
clc, clear all , close all
vc = 0.15
wc0 = 2*pi*vc
wc = pi - wc0
L = 35
n = [0:1:(L-1)]
w =  rectwin(L) %Cua so hcn
h_ideal = ideal_LP (wc,L)
h_LP = h_ideal.*w'
filter_spect_1_vc (h_LP)
title('Lowpass filter')

figure
h_HP = (-1).^n.*h_LP;
subplot(211)
stem(h_HP)
xlabel('n (s)')
ylabel('h(n)')
title('Highpass filter')
subplot(212)
filter_spect_1_vc (h_HP)
grid on

