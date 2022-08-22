[x] = unit_sig(n,1)
subplot(211)
stem(n,x)
xlim([0 20])
title('tin hieu u(n-1)')

k=5
[x_new n_new] = sig_scale(x,n,k)
subplot(212)
stem(n_new,x_new)
xlim([0 20])
title('co gian k=10')
