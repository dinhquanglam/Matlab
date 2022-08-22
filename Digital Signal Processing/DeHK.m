fs = 500
T =1/Fs
L =1000
t = [0:L-1]*T
x = 0.7*sin(2*pi*50*t)+sin(2*pi*120*t)
subplot(211)
plot(t,x)
N =512
Fc = 100
Wc = 2*Fc/Fs
[B A] = butter(6,Wc,'low')
y = filter(B,A,x)
subplot(212)
plot(y)

figure
subplot(211)
X=fft(x)
plot(abs(X))
subplot(212)
Y=fft(y)
plot(abs(Y))