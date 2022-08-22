clc; close all; clear all;

%% Thiet ke bo loc chan dai theo yeu cau
% Chan dai voi tan so [pi/5 pi/3] -> w1 = pi/5, w2 = p/3
% Bang phuong phap cua so, cua so su dung la Hamming
% Tinh 40 trong so cua bo loc -> L = 39
w1 = pi/5;
w2 = pi/3;
L = 39;
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w = hamming(L);

%% Thiet ke bo loc thong thap
% Tan so cat wc = (w2 - w1)/2
wc = (w2-w1)/2;
% Bo loc thong thap ly tuong
h_ideal = ideal_LP(wc, L);
% Dap ung xung cua bo loc thong thap thiet ke
h_LP = h_ideal.*w';

figure;
subplot(211)
stem(n,h_LP)
title('Lowpass Filter')
axis tight
grid on
subplot(212)
filter_spect_1(h_LP)

axis tight
grid on
ylim([-100 0])

%% Thiet ke bo loc thong dai

h_BP = cos((w1 + w2) * n/2).*h_LP;
% 
figure;
subplot(211)
stem(n,h_BP)
title('Bandpass Filter')
axis tight
grid on
subplot(212)
filter_spect_1(h_BP)
axis tight
grid on
ylim([-100 0])

%% Thiet ke bo loc chan dai
h_BS = delta_sig_1(n, 0)*0.5 - h_BP;
figure;
subplot(211)
stem(n,h_BS)
title('Bandstop Filter')
axis tight
grid on
subplot(212)
filter_spect_1(h_BS)
axis tight
grid on