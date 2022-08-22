%H�y m� ph?ng qu� tr�nh l?y m?u 1 t�n hi?u t??ng t? c� t?n s? 1kHz, v?i t?c ?? l?y m?u 10000 m?u/gi�y 
%(th?a m�n ??nh l� Shannon-Nyquist) v� v?i t?c ?? l?y m?u 1500 m?u/gi�y (kh�ng th?a m�n ??nh l� Shannon-Nyquist) .
f0=1000;
fs1=10000;
fs2=1500;
n=0:1:50;
x=cos(2*pi*f0*n/fs1);
x1=cos(2*pi*f0*n/fs2);
figure;

subplot(3,1,1);
plot(n,x);
title('tin hieu')

subplot(3,1,2);
stem(n,x,'r');
title('lay mau fs>2fm')

subplot(3,1,3);
plot(n,x1);
xlim([0,50]);
ylim([-1,1]);
title('lay mau fs<2fm');


