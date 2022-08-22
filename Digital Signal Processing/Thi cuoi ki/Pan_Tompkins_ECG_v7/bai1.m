clc ; close all ; clear all;
load('ECGdata.mat');
%%ECG0
t = 0:1/fs0:(length(ECG0)-1)/fs0
figure(1)
subplot(211)
plot(t,ECG0)
xlabel('Time (s)')
ylabel('normalize amp')
title('Tin hieu tren mien thoi gian')

subplot(212)
N=1024
Y = fft(ECG0,N) %1024 so diem lay fft
f = fs0*(1:N)/N
plot(f,abs(Y))
ylim([0 3000])
title('Tin hieu tren mien tan so')

figure(2)
rp = 0.01; 
fc = [ 5 12]
n = 6
Wc = 2 * fc / fs0; 
[b,a]=cheby1(n,rp,Wc,'bandpass'); 
freqz(b,a,N,fs0); 
title('Magnitude and Phase Response of Chebyshev-Type-1 IIR Lowpass Filter');

figure (3)
subplot(211)
x=filter(b,a,ECG0);
plot(t,ECG0)
title('tin hieu sau khi loc tren mien thoi gian')
subplot(212)
X = fft(x,N)
plot(f,abs(X))
title('tin hieu sau khi loc tren mien tan so')





