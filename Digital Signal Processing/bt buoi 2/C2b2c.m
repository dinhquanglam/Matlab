clc,clear all, close all
na=-1:10
[xa] = unit_sig(na,3)
figure;
subplot(311)
stem(na,xa)
title('tin hieu u(n-3)')

nb=-1:10
[xb] = unit_sig(nb,0)
subplot(312)
stem(nb,xb)
title('tin hieu u(n)')

subplot(313)
[y,n] = sig_add(xa,na,xb,nb)
stem(n,y)
title('tin hieu u(n-3)+u(n)')