function [x, n]=delta_sig(n, n0)
    x=n-n0==0
    stem(n,x)
end