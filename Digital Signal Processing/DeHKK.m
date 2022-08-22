% a. FIR
% b . dong 8
%  dap ung tan so cua bo loc 32
% cuoi cung
% c. phuong phap thiet ke bo loc: cua so
% d. 27 c=0.6 thi cua so hcn
F1 = 50
F2 = 100
F3 = 450
Fs = 4000
n=1:5120
xn = 2*sin(2*pi*F1*n(1/Fs)) + 2*sin(2*pi*F2*n(1/Fs)) + 2*sin(2*pi*F3*n(1/Fs))
figure(1)
stem(n,xn)
xw = fft(xn)
xw_half = xw(1:n(end)/2)

figure(2)
n_half = 1:n(end)/2
F = n_half*Fs/(n(end))
plot((F,abs(xw_half))
Fpass = 300
Fstop = 400
wp = 2*pi*Fpass/Fs
fp = wp(2*pi)
wstop(2*pi*Fstop/Fs)