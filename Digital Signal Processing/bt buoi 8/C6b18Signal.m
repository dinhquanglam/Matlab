clc, clear all  , close all
Pp = 0.0144
Ps = 0.0032
vp = 4/20
vs = 5/20
vc = (vp+vs)/2
wc = 2*pi*vc
Ap = - 20*log10((1-Pp)/(1+Pp)) % = 0.2502
As = - 20*log10(Ps) % = 49.8970
% Soi bang 6.2 => dung cua so Hamming
C = 3.47
L = C/(vs-vp) % L=69
L = round(L)
if(mod(L,2) == 0)
    L = L-1
end

alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  hamming(L) %Cua so hamming
h_ideal = ideal_LP (wc,L) 
h_LP = h_ideal.*w'
figure(1)
subplot(211)
stem(n,h_LP)
title('Dap ung xung cua bo loc')
grid on
subplot(212)
filter_spect_1 (h_LP)
grid on

fs = 20000
figure(2)
n_x = [0:1/fs:0.05] %lay mau tin hieu
F1 = 4100;
F2 = 8200;
x = 2*sin(2*pi*F1*n_x) + 7*sin(2*pi*F2*n_x);
figure
plot(n_x,x)
 
figure(3)
X = fft(x)
subplot(211)
plot(abs(X))
title('Tin hieu x tren mien tan so')
y = filter(h_LP,1,x)
Y = fft(y)
subplot(212)
plot(abs(Y))
title('Tin hieu sau khi duoc loc tren mien tan so')
