%Cho mot bo loc trung bình bac 2 mô ta boi phuong trình sai phân sau
%y(n)=1/3[x(n)+x(n-1)+x(n-2)];
%Hãy ve dac trung tan so biên do de xác dinh dây là bo loc loai gì (thông thap, thông cao, thông da?i,..)

clc;clear all;close all;
%y(n)=1/3[x(n)+x(n-1)+x(n-2)];
a = [1];
b = [1/3 1/3 1/3];
n = -100:100;
[H,W] = freqz(b,a,n);
figure;
plot(W,abs(H));
