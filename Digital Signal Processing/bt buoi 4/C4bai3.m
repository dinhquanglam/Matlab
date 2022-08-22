clc; clear all; close all;
% Bai 3: cho he thong:
%y(n) - 2y(n - 1) + y(n - 2) = x(n) + x(n - 1)
%xac dinh h(n)
%he thong co on dinh ko?
%Xac dinh tin hieu ra khi tin hieu vao x(n)=u(n)
%Xac dinh tin hieu ra khi tin hieu vao x(n) = 2sin(0.01.pi.n),-200 <= n <= 200.

%xac dinh h(n)
a= [1 -2 1]
b= [1 1 0]
nh=-200:200;
h= impz(b,a,nh)
subplot(311)
stem(nh,h)
title('h(n)')

%Xac dinh tin hieu ra khi tin hieu vao x(n)=u(n)
nx =[0:50]
x= xungNhayBac(nx,0);
[y,ny] = sig_conv(x,nx,h,nh)
subplot(312)
stem(ny,y)
title('tin hieu ra khi tin hieu vao x(n)=u(n)')

%Xac dinh tin hieu ra khi tin hieu vao x(n) = 2sin(0.01.pi.n),-200 <= n <= 200.
n1= -200:200
x1 = 2*sin(0.01*pi*n1)
[y1,ny1] = sig_conv(x1,n1,h,nh)
subplot(313);
stem(ny1,y1)
title('tin hieu ra khi tin hieu vao x(n) = 2sin(0.01.pi.n)')


