%Cho mot bo loc trung b�nh bac 2 m� ta boi phuong tr�nh sai ph�n sau
%y(n)=1/3[x(n)+x(n-1)+x(n-2)];
%H�y ve dac trung tan so bi�n do de x�c dinh d�y l� bo loc loai g� (th�ng thap, th�ng cao, th�ng da?i,..)

clc;clear all;close all;
%y(n)=1/3[x(n)+x(n-1)+x(n-2)];
a = [1];
b = [1/3 1/3 1/3];
n = -100:100;
[H,W] = freqz(b,a,n);
figure;
plot(W,abs(H));
