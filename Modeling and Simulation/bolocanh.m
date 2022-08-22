clc,close all; clear all;
a = imread('nhieu.tif');
figure(1)
imshow(a);
b = imnoise(a,'gaussian',0.02);
figure(2);
imshow(b);
c = medfilt1(b);
figure(3);
imshow(c);
