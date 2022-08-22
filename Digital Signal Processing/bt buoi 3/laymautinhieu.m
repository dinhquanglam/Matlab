%Hãy mô ph?ng quá trình l?y m?u 1 tín hi?u t??ng t? có t?n s? 1kHz, v?i t?c ?? l?y m?u 10000 m?u/giây 
%(th?a mãn ??nh lý Shannon-Nyquist) và v?i t?c ?? l?y m?u 1500 m?u/giây (không th?a mãn ??nh lý Shannon-Nyquist) .
f0=1000;%Freqyency of sin 
fs1=10000;%Sampling Frequency Fs>2Fm 
fs2=1500;%Sampling Frequency Fs
n=0:1:50;
 x=cos(2*pi*f0*n/fs1);
x1=cos(2*pi*f0*n/fs2); 
figure (1) 
subplot(2,1,1) 
plot(n,x) 
subplot(2,1,2)
 hold on 
plot(n,x)
 stem(n,x,'r') 
plot(n,x1,'g') 
legend('Original function','Sampling With Fs>2Fm','Sampling With Fs<2Fm')
