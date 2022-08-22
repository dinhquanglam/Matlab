%6.5.

clc, clear all , close all
w2 = pi/3
w1 = pi/5
wc = (w2-w1)/2
L = 39
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  hann(L) %Cua so hanning
h_ideal = ideal_LP (wc,L)

h_LP = h_ideal.*w'

h_BP = cos((w1 + w2) * n/2).*h_LP;
figure
subplot(211)
stem(n,h_BP)
title('Bandpass')
xlabel('n (s)')
ylabel('h(n)')
subplot(212)
filter_spect_1 (h_BP)
grid on

figure
h_BS = delta_sig_1(n, 0) - h_BP %w' giong nhu delta(n) voi n = [0:1:(L-1)]
subplot(211)
stem(n,h_BS)
title('BandStop')
xlabel('n (s)')
ylabel('h(n)')
subplot(212)
filter_spect_1 (h_BS)
grid on

