% bt1 chuong 8
% thiet ke bo loc so dung phuong phap 
% dap ung bat bien trong mien thoi gian
% tu 1 bo loc tuong tu co ham truyen
%              1
% G(s)=---------------
%       (s+5)(s+12)
% ve dap ung tan so cua bo loc tuong tu
% cho T= 0.05s, ve dap ung bo loc so
% Cho T=0.01 s
% Ve dap ung tan so bien do cua bo loc so nay

clc, close all, clear all
b = [ 1]
a = [ 1 17 60]
L = 1024

%bo loc tuong tu
figure(1)
[H W] = freqs(b,a,L)
plot(W, abs(H))
title('dap ung tan so bien do bo loc tuong tu')
xlabel('frequency (Hz)')
ylabel('Amplitute')

% Bo loc so Ts = 0.05s
figure(2)
fs = 1/0.05
[bz,az] = impinvar(b,a,fs)
[Hz Wz] = freqz(bz,az,L,fs)
plot(Wz, abs(Hz))
title('pho bo loc so voi Ts=0.05s')
xlabel('frequency (Hz)')
ylabel('Amplitute')

% Bo loc so Ts = 0.01s
figure(3)
fs1 = 1/0.01
[bz1,az1] = impinvar(b,a,fs1)
[Hz1 Wz1] = freqz(bz1,az1,L,fs1)
plot(Wz1, abs(Hz1))
title('pho bo loc so voi Ts=0.01s')
xlabel('frequency (Hz)')
ylabel('Amplitute')

