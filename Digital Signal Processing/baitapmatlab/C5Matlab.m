%Chuong5 bai 1 MATLAB
clc, clear all,close all;
b = [1]
a = [ 1 17 60]
%dap ung tan so cua bo loc tuong tu
L = 120
[H,W] = freqz(b,a,L)
stem( W, abs(H))
title(' Dap ung an so bien do')
xlabel('frequency (Hz)')
ylabel('Amplitute')

