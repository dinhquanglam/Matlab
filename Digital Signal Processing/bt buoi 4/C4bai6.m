%Bai tap 6: Cho he thong LTI nhan qua co y(n)- 4y(n-1)+ 3y(n-2) = x(n) +x(n-1)
% Ve dap ung xung h(n) (so sanh voi ket qua tinh bang tay) 
% Ve so do diem cuc, diem khong,
% He thong co on dinh khong? Neu co, xac dinh dap ung tan so va ve pho bien do cua he thong.
% Ve tin hieu ra neu tin hieu vao la x(n) = 2^n*u(n) 
% Ve tin hieu ra neu tin hieu vao la x(n) = cos(pi*n/3)u(n)
clc,close all, clear all
a = [1 -4 3]
b = [1 1 0]
n = -100:100
L = 120
h = impz(b,a,n)
subplot(311)
stem(n,h)
xlim([85 105])
title('dap ung xung h(n)')

subplot(312)
zplane(b,a)
title('gian do diem cuc,diem khong')

subplot(313)
[H,W]=freqz(b,a,L)
plot(W,abs(H))
title('pho bien do')
xlabel('frequency (Hz)')
ylabel('Amplitute')

figure;
x1= 2.^n.*xungNhayBac(n,0)
[y1,ny1]=sig_conv(x1,n,h,n)
subplot(211)
stem(ny1,y1);
title('dap ung he thong y(n) cua x(n) = 2^n*u(n)')
xlim([190 205])

x2= cos(pi.*n/3).*xungNhayBac(n,0)
[y2,ny2]=sig_conv(x2,n,h,n)
subplot(212)
stem(ny2,y2);
title('dap ung he thong y(n) cua x(n) = cos(pi*n/3)u(n)')
xlim([90 205])

