function [x] = delta_sig(n,n0)
%%% Return a delta signal at n0 in [n1 n2]; n1<n0<n2
x = [(n-n0)==0];
%display a delta function.
%stem(n,x);