
function [n1,x1] = sig_shift(x,n,k)
%n = 1:10;
%k = 2;
%x = exp(n);
if k>0
    disp('Positive');
    n1 = n(1):n(end)+k;
    x1 = [zeros(1,k) x];
else
    disp('Negative');
    n1 = n(1)+k:n(end);
    x1 = [x zeros(1,abs(k))]; % abs is for absolute value of (k) because quantity can never be (-ve) negative %
end