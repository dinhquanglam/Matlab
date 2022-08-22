clc, close all, clear all;
x = [0:1/4:1]
a = [ 0 1/4 1/2 3/4 1]
stem (x,a);
b = conv(a,a);
figure;
y = [0:1/4:2]
stem (y,b);
