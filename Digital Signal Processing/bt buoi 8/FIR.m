clc, close all , clear all
wc = pi/5;
fc = wc/2*pi;
N=29;
n = -((N-1)/2) : ((N-1 /2));
n = n+(n==0)*wc/pi %thay doi gia tri lai N = 15
[h] = sin((pi/5)*n) / (pi*n)
[w] = 1;
d = h.*w %cua so lay gioi han cho h
[g,f] = freqz(d,1,512,44100)

