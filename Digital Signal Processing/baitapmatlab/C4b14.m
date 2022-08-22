% bai 4.14
clc, close all , clear all,
b = [ 1 1]
a = [ 1 1/4 -1/8 3/16]
%cau truc noi tiep
%[b0,B,A] = dir2cas(b,a)

%cau truc song song
[r,p,k] = residue(b,a) 

R = [r(2) ; r(3)]
P = [p(2) ; p(3)]
[b,a] = residue(R,P,k)

[b,a] = residue(r(1),p(1),k)