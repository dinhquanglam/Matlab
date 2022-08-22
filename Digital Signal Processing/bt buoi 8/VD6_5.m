clc; close all; clear all;

%% Thiet ke bo loc thong dai theo yeu cau
% thong dai voi tan so [4Khz 8Khz] 
% dai triet F < 2Khz, F > 10kHZ
% Fs = 25kHZ
% Bang phuong phap cua so, cua so su dung la Hamming
% Tinh 40 trong so cua bo loc -> L = 39
v1 = 2/25;
v2 = 4/25 ;
v3 = 8/25;
v4 = 10/25
% suy ra
v0 = (v2+v3)/2;
vp = v3 - v0
vs = v4 - v0
vc = (v3+v4)/2 -v0;
%doi chieu bang 6.2 => hamming
C = 3.47
L = 45 
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w = hamming(L);

%% Thiet ke bo loc thong thap
% Bo loc thong thap ly tuong
h_ideal = ideal_LP(vc, L);
% Dap ung xung cua bo loc thong thap thiet ke
h_LP = h_ideal.*w';

figure;
subplot(211)
stem(n,h_LP)
title('Lowpass Filter')
axis tight
grid on
subplot(212)
filter_spect_1_vc(h_LP)

axis tight
grid on
ylim([-100 0])

%% Thiet ke bo loc thong dai

h_BP = cos((v2 + v3) * n/2).*h_LP;
% 
figure;
subplot(211)
stem(n,h_BP)
title('Bandpass Filter')
axis tight
grid on
subplot(212)
filter_spect_1_vc(h_BP)
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
filter_spect_1_vc(h_BS)
axis tight
grid on