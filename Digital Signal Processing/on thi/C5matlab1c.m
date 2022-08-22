%Bai 3
% bt1 chuong 8
% thiet ke bo loc so dung phuong phap 
% dap ung bat bien trong mien thoi gian
% tu 1 bo loc tuong tu co ham truyen 1/s^2 + sqrt(2)s +1
% ve dap ung tan so cua bo loc tuong tu
% cho T= 0.05s, ve dap ung bo loc so

clear;clc;close all;
G1=tf(1,[1 sqrt(2) 1]);
b=1;
a=[1 sqrt(2) 1];
[G,W]=freqs(b,a);
subplot(211)
plot(W/pi,abs(G));
xlabel('tan so tuong tu - hz')
ylabel('dap ung tso bien do')
 
b2=0.0674553*[1 2 1];
a2=[1 -1.14298 0.412802];
[G2,w]=freqz(b2,a2)
subplot(212)
plot(w/pi,abs(G2));
xlabel('tan so so ')
ylabel('dap ung tso bien do')
 
figure;
subplot(211)
impulse(G1)
subplot(212)
[h,t]=impz(b2,a2);
stem(t,h);

