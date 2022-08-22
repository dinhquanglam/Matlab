function [x n] = xungChuNhat(n0, n1, n2, n3)
    n = n0:n3;
    a = (n1 - n0) >=0;
    b = (n2 - n1) >=0;
    x = a.*b;
end