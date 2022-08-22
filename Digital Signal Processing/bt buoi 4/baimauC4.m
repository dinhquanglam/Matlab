clc; close all; clear all;

% %% Bai 1
% % Khoi tao tin hieu
% x = [-1 -2 3 4 2 9];
% n_x = [-2 -1 0 1 2 3];
% 
% h = [1 3 2 1];
% n_h = [-2 -1 0 1];
% 
% [y,n_y] = sig_conv(x, n_x, h, n_h);
% 
% figure;
% subplot(311)
% stem(n_x, x)
% xlim([-2 3])
% 
% subplot(312)
% stem(n_h, h)
% xlim([-2 3])
% 
% subplot(313)
% stem(n_y, y)
% xlim([-2 3])
% 
% %% Bai 2
% %h(n) = 10u(n) ? 5u(n ? 5) ? 10u(n ? 10) + 5u(n ? 15)
% 
% n = -200:200;
% h = 10*xungNhayBac(n, 0) - 5*xungNhayBac(n, 5) - 10*xungNhayBac(n, 10) + 5*xungNhayBac(n, 15);
% figure
% stem(n,h)
% title('Dap Ung Xung')

%% Bai 3
% y(n) - 2y(n - 1) + y(n - 2) = x(n) + x(n - 1)
% a = [1 -2 1];
% b = [1 1 0];
% 
% n = -200:200;
% 
% h = impz(b,a, n);
% 
% figure;
% stem(n,h);

%% Bai 5
% H(z)= (z+2)/ (z-0.5).
a = [1 -0.5]; %phan mau
b = [1 2]; %phan tu
n = -100:100;
h = impz(b,a, n);

figure;
subplot(211)
stem(n,h)
subplot(212)
zplane(b,a) 

[H, W]= freqz(b,a,n);
figure
plot(W/pi,20*log10(abs(H)));

% Xac dinh dau ra
%x(n) = 2*(0.9).^n * u(n)

x = (2 * (0.9).^n) .* xungNhayBac(n,0);
figure;
subplot(311)
stem(n, x);
title('Input')
subplot(312);
stem(n,h)
title('Impluse Respone')

[y n_y] = sig_conv(x,n,h,n)
subplot(313);
stem(n_y,y)

y_filtered = filter(b, a, x)
figure;
stem(y_filtered)