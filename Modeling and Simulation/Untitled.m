clc;close all; clear all;
a = imread('nhieu.png');
b = lin2rgb(a);
c =imcomplement(b);
d = imreducehaze(c);
e = imcomplement(d);
subplot(2,2,1)
imshow(a);
title('anh goc');
subplot(2,2,2)
imshow(c);
title('anh sau khi chuyen ve am ban');
subplot(2,2,3)
imshow(d);
title('anh sau khi giam diem mo ho');
subplot(2,2,4)
imshow(e);
title('anh sau hoan thien');


 