%Bai 4: Cho he thong y(n) - 0.5y(n - 1) + 0.25y(n - 2) = x(n) + 2x(n - 1) + x(n - 3)
% Xac dinh va ve dap ung xung cua he thong h(n), 0 <= n <= 100.
% He thong co on dinh khong?
% Voi x(n) = [5 + 3 cos(0.2pi*n) + 4 sin(0.6pi*n)]u(n), xac dinh y(n) voi 0 <= n <= 200.
clc,clear all,close all

a = [1 -0.5 0.25 0]
b = [1 2 0 1]
nh = 0:100
h = impz(b,a,nh)
subplot(211)
stem(nh,h)
title('dap ung xung h(n)')
%h(n)->0 n->+oo => he thong on dinh

nx= 0:200
x = (5+3*cos(0.2*pi*nx)+4*sin(0.6*pi*nx)).*xungNhayBac(nx,0)
[y,ny] = sig_conv(x, nx, h, nh)
subplot(212)
stem(ny,y)
xlim([0 200])
title('dap ung he thong y(n) voi tin hieu vao x(n)=...')
