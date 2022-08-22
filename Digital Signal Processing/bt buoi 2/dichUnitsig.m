[x] = unit_sig(n,1)
subplot(211)
stem(n,x)
xlim([0 10])
title('tin hieu u(n-1)')

k=5;
[n1,x1] = sig_shift(x,n,k)
subplot(212)
stem(n1,x1)
xlim([0 10])
title('dich k=5')
