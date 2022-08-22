%x(n) = 3u(n - 1)
na=-10:10
[xa] = unit_sig(na,1)
subplot(211)
stem(na,xa)
title('tin hieu u(n-1)')

[x]=3.*[xa]
subplot(212)
stem(na,x)
title('tin hieu 3u(n-1)')
