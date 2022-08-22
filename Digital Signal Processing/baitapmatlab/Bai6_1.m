% Bai 1
% chuong 9 bai 1
% Thiet ke bo loc LPF tan so cat 250 Hz, Fs=1 KHz
% Chieu dai bo loc L=21
% su dung cac cua so chu nhat, tam giac, hanning, hamming

clc, clear all , close all
vc = 250/1000
wc = 2*pi*vc
L = 21
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
h_ideal = ideal_LP (wc,L) 

w =  rectwin(L) %Cua so hcn
h_LP = h_ideal.*w'
figure
subplot(211)
stem(n,h_LP)
title('Dap ung xung cua bo loc su dung cua so HCN')
subplot(212)
filter_spect_1 (h_LP)
grid on

w1 = bartlett(L) % cua so tam giac
h_LP1 = h_ideal.*w1'
figure
subplot(211)
stem(n,h_LP1)
title('Dap ung xung cua bo loc su dung cua so tam giac')
subplot(212)
filter_spect_1 (h_LP1)
grid on

w2 = hann(L) % cua so hanning
h_LP2 = h_ideal.*w2'
figure
subplot(211)
stem(n,h_LP2)
title('Dap ung xung cua bo loc su dung cua so hanning')
subplot(212)
filter_spect_1 (h_LP2)
grid on

w3 = hamming(L) % cua so hamming
h_LP3 = h_ideal.*w3'
figure
subplot(211)
stem(n,h_LP3)
title('Dap ung xung cua bo loc su dung cua so hamming')
subplot(212)
filter_spect_1 (h_LP3)
grid on





