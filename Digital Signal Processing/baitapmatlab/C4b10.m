clc,close all, clear all
a = [3/2 1 0]
b = [0 -1 1]
n = -100:100
L = 120
[H,W]=freqz(b,a,L)
stem(W,abs(H))
title('pho bien do')
xlabel('frequency (Hz)')
ylabel('Amplitute')
