%bai4.12
clc, close all , clear all,
b = [ 1 -1/5]
a = [ 1 -1/4 5/24 1/12]

%cau truc noi tiep
%[b0,B,A] = dir2cas(b,a)


%cau truc song song
[r,p,k] = residue(b,a)
P = [ p(1);p(2)]
R = [ r(1);r(2)]

[b,a] = residue(R,P,k)

[b,a] = residue(r(3),p(3),k)





