function [x n] = delta_sig(n0,n1,n2)
%%% Return a delta signal at n0 in [n1 n2]; n1<n0<n2
n = [n1:n2];
x = [(n-n0)==0];
%display a delta function.
%stem(n,x);
end