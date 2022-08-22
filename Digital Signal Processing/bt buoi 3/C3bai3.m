%Cho mot he thong LTI c� phuong tr�nh sai ph�n m� ta nhu sau
%3y(n)-y(n-1)-y(n-2)=x(n)
% Ve d�p ung xung h(n) cua he thong tr�n
% Ve dac trung tan so bi�n do v� dac trung pha cua bo loc m� ta boi phuong tr�nh sai ph�n n�i tr�n
% Ve gian do diem cuc diem kh�ng cua he thong
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ve dap ung xung h(n)
clc, clear all, close all;
b = [1]
a = [3 -1 -1]
n = -50:50;
h=impz(b,a,n);
figure(1);
stem(n,h);
title('dap ung xung')

%dac trung tan so bien do
[H,W] = freqz(b,a,n)
figure(2);
subplot(311)
plot(W,abs(H))
title('pho bien do')

%dac trung tan so pha
subplot(312)
plot(W,angle(H))
title('pho pha')

%gian do diem cuc khong
subplot(313)
zplane(b,a)
title('gian do diem cuc,diem khong')
