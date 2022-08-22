clc; close all; clear all;
%bai 1c: ve tin hieu ra
% x(n) = (1/4)^n.[u(n + 1) ? u(n ? 4)], h(n) = u(n) ? u(n ? 5)

nx = -1:50
x = ((1/4).^(-nx)).*(xungNhayBac(nx,-1)-xungNhayBac(nx,4));
nh = -1:50
h = xungNhayBac(nh,0)-xungNhayBac(nh,5);
[y,ny] = sig_conv(x,nx,h,nh);

figure;
subplot(311)
stem(nx,x);
title('tin hieu vao x(n)');
axis([-1 20 0 100])
ylabel('bien do (100)')

subplot(312)
stem(ny,y);
title('dap ung xung h(n)');
axis([-1 20 0 100])
ylabel('bien do (100)')

subplot(313)
stem(nh,h);
title('tin hieu ra y(n)');
axis([-1 20 0 1])
ylabel('bien do (1)')
