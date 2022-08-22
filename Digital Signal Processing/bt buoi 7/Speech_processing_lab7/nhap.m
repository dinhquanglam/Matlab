clc, close all, clear all;
[x,fs]= audioread('go.au');
plot(x);
sound(x);
x_voiced = x(1800:5400)
L = 379;
N = 512;

X_1 = DFTwin(x_voiced,L,10,N);
X_2 = DFTwin(x_voiced,L,100,N);
X_3 = DFTwin(x_voiced,L,1000,N);

subplot(211)
plot(x_voiced);

%pho bien do
subplot(212)
plot(abs(X_1)) 
hold on;
plot(abs(X_2),'r');
plot(abs(X_3),'black');


