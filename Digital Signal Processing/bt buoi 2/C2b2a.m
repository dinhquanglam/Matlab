%x(n) = u(n - 3)u(5 - n)
na=-10:10
[xa] = unit_sig(na,3)
subplot(311)
stem(na,xa)
title('tin hieu u(n-3)')

nb=-10:10
[xb] = unit_sig(5,nb)
subplot(312)
stem(nb,xb)
title('tin hieu u(5-n)')

[x,n] = sig_mult(xa,na,xb,nb)
subplot(313)
stem(n,x)
title('x(n) = u(n - 3)u(5 - n)')