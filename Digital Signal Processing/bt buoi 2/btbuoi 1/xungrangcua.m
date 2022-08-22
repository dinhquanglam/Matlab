f = 10000;
n = 0:1/f:1.5;
x = sawtooth(2*pi*50*n);
plot(n,x); axis([0 0.2 -1 1]);