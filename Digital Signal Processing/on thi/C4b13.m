clc, close all, clear all,
a = [1 0 -0.25]
b = [ 1 0 0]
L = 120;
[H W] = freqz(b,a,L)
plot(W, abs(H))
title('pho bien do')
xlabel('frequency (Hz)')
ylabel('Amplitute')