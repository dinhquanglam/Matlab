a = [1 -0.5 0.05 0.0052]
b = [1 -0.5 0.0625 0]

n=50

%dac trung tan so bien do
[H,W] = freqz(b,a,n)
subplot(211)
stem(W,abs(H))
title('pho bien do')

%dac trung tan so pha
subplot(212)
stem(W,angle(H)*180/pi)
title('pho pha')
