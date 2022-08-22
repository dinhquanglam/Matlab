Fs = 5000 %Hz
n = 1:5120
N  = n(end)
xn=2*sin(2*pi*500*n*(1/Fs))+1*sin(2*pi*1000*n*(1/Fs))
figure(1)
stem(n,xn) %cau a
xw=1/N*fft(xn)
xw_half = xw(1:N/2)
figure(2)
n_half=1:N/2
F=n_half*Fs/N
plot(F,2*abs(xw_half))
[B A] = butter(5, 2*1000/Fs, 'low') %cau b
w = 0:0.01*pi:pi
Hw = freqz(B,A,w)
%co tan so chuan hoa roi chuyen ra tan so that
figure(3)
plot(w*Fs/2/pi,abs(Hw))
yn = filter(B,A,xn)
yw = 1/N*fft(yn)
yw_half=yw(1:N/2)
figure(5)
plot(F,2*abs(yw_half))

 

