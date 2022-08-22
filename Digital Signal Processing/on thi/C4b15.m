a = [-0.25 0 1]
b = [1 0 -0.25]
n=120
%dac trung tan so bien do
[H,W] = freqz(b,a,n)
subplot(211)
stem(W,abs(H))
title('pho bien do')

%dac trung tan so pha
subplot(212)
stem(W,angle(H))
title('pho pha')
