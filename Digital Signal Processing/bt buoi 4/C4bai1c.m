%ve tin hieu ra 
%x(n) = (0.8^n).u(n),  h(n) = (?0.9^n).u(n)
clc;clear all, close all;
nx = [0:50];
x = ((0.8).^nx).*xungNhayBac(nx,0);
nh = [0:50];
h = ((-0.9).^nh).*xungNhayBac(nh,0);
[y,ny] = sig_conv(x,nx,h,nh);

figure;
subplot(311)
stem(nx,x)
xlim([0 50])
ylim([-1 1])

subplot(312)
stem(nh,h)
xlim([0 50])

subplot(313)
stem(ny,y)
xlim([0 50])

