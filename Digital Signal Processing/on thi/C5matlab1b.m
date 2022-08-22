% bt1 chuong 8
% thiet ke bo loc so dung phuong phap 
% dap ung bat bien trong mien thoi gian
% tu 1 bo loc tuong tu co ham truyen
%              1
% G(s)=---------------
%       (s+5)(s+12)
% ve dap ung tan so cua bo loc tuong tu
% cho T= 0.05s, ve dap ung bo loc so
clear;clc;close all;
G1=zpk([],[-5 -12],1);
b=1;
a=[1 17 60];
[G,W]=freqs(b,a);
subplot(211)
plot(W/pi,abs(G));
xlabel('tan so tuong tu - hz')
ylabel('dap ung tso bien do')
 
T=0.05;
Fs=1/T
b2=0.0164;
a2=[1 -1.3276 0.4274];
[G2,w]=freqz(b2,a2)
subplot(212)
plot(w/pi,abs(G2));
xlabel('tan so so ')
ylabel('dap ung tso bien do')
 
figure;
subplot(211)
impulse(G1,0:0.05:1)
subplot(212)
[h,t]=impz(b2,a2,21);
stem(t*T,h);
