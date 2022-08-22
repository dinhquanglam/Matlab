clc; close all; clear all;

%% Bai 1
x = [-1 -2 3 4 2 9];
n_x = [-2 -1 0 1 2 3];

h = [1 3 2 1];
n_h = [-2 -1 0 1];

[y n_y] = sig_conv(x, n_x, h, n_h)

figure; 
subplot(311)
stem(n_y,y)
xlim([-4 4])

subplot(312)
stem(n_x, x)
xlim([-4 4])

subplot(313)
stem(n_h,h)
xlim([-4 4])

% legend('y(n)','x(n)','h(n)')

%% Bai 2
% h(n) = 10u(n) ? 5u(n ? 5) ? 10u(n ? 10) + 5u(n ? 15)
n = -10:1:100;
h = 10*xungNhayBac(n, 0) - 5*xungNhayBac(n, 5) - 10*xungNhayBac(n, 10) + 5*xungNhayBac(n,15);
figure;
subplot(511)
stem(n,10*xungNhayBac(n, 0))
title('10*u(n)')
subplot(512)
stem(n,5*xungNhayBac(n, 5))
title('5*u(n-5)')
subplot(513)
stem(n,10*xungNhayBac(n, 10))
title('10*u(n-10)')
subplot(514)
stem(n,5*xungNhayBac(n, 15))
title('5*u(n-15)')
subplot(515)
stem(n,h)
title('h(n)')

%% Bai 3
% y(n) ? 2y(n ? 1) + y(n ? 2) = x(n) + x(n ? 1)
a = [1 -2 1];
b = [1 1  0];
n = -200:200;
h = impz(a,b,n);
figure;
stem(n,h)
 
% tin hieu vao
x = delta_sig(n,0);

[y n_y] = sig_conv(x, n, h, n);
figure;
stem(n_y ,y)

figure('Name','Filter')
y = filter(a,b,delta_sig(n,0));
stem(n ,y)

x = 2*sin(0.01*pi*n);

[y n_y] = sig_conv(x, n, h, n);
figure;
stem(n_y ,y)

%% Bai 5
%H(z)= (z+2)/ (z-0.5).
a = [2 1]; b = [-0.5 1];
n = -200:200;
h = impz(a,b,n);
figure;
stem(n,h)

figure;
zplane(a,b)

[H, W]= freqz(b,a,n);
figure;
plot(W/pi,20*log10(abs(H)))

x = (2*(0.9).^n).*xungNhayBac(n,0);
figure;
stem(n,x)

figure('Name','Filter')
h = impz(a,b,n);
[y n_y] = sig_conv(x, n, h, n);
stem(n_y ,y)

figure('Name','Filter')
h = impz(a,b,n);
y = filter(a,b,x);
stem(n ,y)