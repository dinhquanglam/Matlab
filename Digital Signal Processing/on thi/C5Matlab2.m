%Thiet ke bo loc trong vi du 5.8 va 5.9 SGK
%Thiet ke bo loc so hoat dong voi tan so lay mau 2 kHz co cac
%thong so dac ta sau day:
%a) Thiet ke dung phuong phap song tuyen tinh dua tren bo loc tuong
%tu thong thap Chebyshev.
%b) Do suy giam nho hon 3 dB cho dai tan tu 790 den 810 Hz.
%c) Do suy giam lon hon 16 dB luc tan so nho hon 780 Hz va lon hon 820 Hz.

clc, close all, clear all;
N = 512;
n = 2;
rp = 3; %Define the Passband peak-to-peak ripple in decibels
fc = [790 810] 
fs = 2000
Wc = 2 * fc / fs; %Normalizing the frequencies
[b,a]=cheby1(n,rp,Wc,'bandpass'); %Calculating filter coefficients
freqz(b,a,N,fs); %Plotting the filter response
title('Magnitude and Phase Response of Chebyshev-Type-1 IIR Lowpass Filter');

figure
[bz,az] = impinvar(b,a,fs)
freqz(bz,az,N,fs)
title('Magnitude and Phase Response of digital filter')