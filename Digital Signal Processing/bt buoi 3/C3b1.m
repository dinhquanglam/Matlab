%Bai tap 1: Mo phong tin hieu dang sin co tan so f = 1000Hz:
f=1000
n=0:1/(50*f):3/f
x=sin(2*pi*f*n)
subplot(211)
plot(n,x);
title('tin hieu lien tuc')

subplot(212)
stem(n,x)
title('tin hieu roi rac')
