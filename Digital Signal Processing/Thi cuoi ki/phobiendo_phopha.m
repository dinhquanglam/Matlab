clc, close all, clear all
b = [8 6 1]

a = [18 9 -2 -1]

n=50
figure(1)
freqz(b,a,n)

figure(2)
%dac trung tan so bien do
 [H,W] = freqz(b,a,n)
subplot(211)
stem(W,abs(H))
title('pho bien do')

%dac trung tan so pha
 subplot(212)
 stem(W,unwrap(angle(H))*1/pi)
ylabel('Pi');
 title('pho pha')
