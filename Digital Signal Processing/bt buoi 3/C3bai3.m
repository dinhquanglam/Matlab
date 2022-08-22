%Cho mot he thong LTI có phuong trình sai phân mô ta nhu sau
%3y(n)-y(n-1)-y(n-2)=x(n)
% Ve dáp ung xung h(n) cua he thong trên
% Ve dac trung tan so biên do và dac trung pha cua bo loc mô ta boi phuong trình sai phân nói trên
% Ve gian do diem cuc diem không cua he thong
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
