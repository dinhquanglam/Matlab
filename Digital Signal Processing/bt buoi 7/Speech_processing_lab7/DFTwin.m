function [X] =DFTwin(x,L,m,N)           %Gu & Wood
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
w=hamming(L);       %create a hamming window
x_win = x(m:m+L-1).*w;           %form a new signal with the product of x and w
X=fft(x_win,N);   %take the fourier transform
%plot(abs(X)) ;
end
%m la diem bat dau, chieu dai = L, 