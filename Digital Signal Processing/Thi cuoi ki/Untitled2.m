clc, clear all , close all
fs = 5000
n = 1:10
N =n(end)
xn = 2.*sin(2.*pi.*500*n)
figure(1)
plot(n,xn)
