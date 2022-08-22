clc, clear all , close all
wc = pi/5
L = 29
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w = bartlett(L) % cua so tam giac
h_ideal = ideal_LP (wc,L)
h = h_ideal.*w'
subplot(211)
stem(n,h)
title('Dap ung xung')
subplot(212)
filter_spect_1 (h)
title('Bo loc thong thap theo phuong phap cua so tam giac')
grid on

figure
w1 = hann(L)
h1 = h_ideal.*w1'
subplot(211)
stem(n,h1)
title('Dap ung xung')
subplot(212)
filter_spect_1 (h1)
title('Bo loc thong thap theo phuong phap cua so hanning')
grid on
