% Lay mau 1 tín hieu x(t)=2sin(2pi60t) + 2sin(2pi120t)  su dung tan so lay mau 480 Hz
% Ve tín hieu roi rac thu duoc
% Ve pho biên do cua tín hieu thu duoc

clc;clear all; close all;
Fs = 480;
Ts = 1/Fs;
L = 480;
t = (0:L-1)*Ts;
x = 2.*sin(2*pi*60*t)+2.*sin(2*pi*120*t);
figure;
subplot(211);
stem(Fs*t(1:60),x(1:60));
title('Discrete Signal');

NFFT = 2^nextpow2(L);
f = Fs/2*linspace(0,1,NFFT/2+1);
X = fft(x,NFFT)/L;
subplot(212);
plot(f,2*abs(X(1:NFFT/2+1)));
title('Amplitude Spectrum of x(t)');
xlabel('Frequency(Hz)');
ylabel('|X(f)|');