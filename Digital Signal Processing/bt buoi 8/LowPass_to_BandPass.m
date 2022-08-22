clc; close all; clear all;

ws1 = 0.3*pi; v1 = ws1 / (2*pi);
wp1 = 0.4*pi; v2 = wp1 / (2*pi);
wp2 = 0.6*pi; v3 = wp2 / (2*pi);
ws2 = 0.7*pi; v4 = ws2 / (2*pi);

Rp = 0.2;%dB
As = 50; %dB -> Hamming win
%% Khoi tao tham so bo loc thong thap
v0 = (v2 + v3)/2;
vp = v3 - v0;
vs = v4 - v0;

vc = (v3 + v4)/2 - v0;

L = ceil(3.47/(vs - vp));

wc = vc * (2*pi);

h_ideal = ideal_LP(wc, L);

w = hamming(L);

w = w';
h_LF = h_ideal.*w;

figure;
subplot(211)
plot(h_LF)
axis tight
grid on
subplot(212)
filter_spect_1(h_LF)
axis tight
grid on


n = [0:1:L-1];

wc1 = (wp1 + ws1)/2;
wc2 = (wp2 + ws2)/2;
 
h_BP = cos((wc1 + wc2) * n/2).*h_LF;
% 
figure;
subplot(211)
plot(h_BP)
axis tight
grid on
subplot(212)
filter_spect_1(h_BP)
axis tight











