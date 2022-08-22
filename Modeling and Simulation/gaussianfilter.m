clc;close all; clear all;
a = imread('nhieu.png');
figure(1)
subplot(1,2,1)
imshow(a);
title('anh goc');
c = imnoise(a,'salt & pepper',0.02);
b =  imgaussfilt(c);
subplot(1,2,2)
imshow(b);
title('anh sau khi loc');
