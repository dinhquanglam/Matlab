clc, clear all, close all;
b = [1 0.25]
a = [1 -0.7 -0.1]
n = -10:10;
%dac trung tan so bien do
[H,W] = freqz(b,a,n)
plot(W,abs(H))
title('pho bien do')
