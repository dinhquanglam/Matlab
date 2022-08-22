function [y n] = sig_conv(a, n*a, b, n*b)
a = [1,2,3];
b = [1,-1];
y = conv(a,b); 
n1 = na(1) + nb(1);
n2 = na(end) + nb(end);
n = n1:n2;
end