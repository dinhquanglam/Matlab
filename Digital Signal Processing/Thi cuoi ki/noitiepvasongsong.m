%bai4.12
clc, close all , clear all,
 b = [1 -1 -2]
a = [0.401014 1.31687 2.16213 1]

%cau truc noi tiep
% [b0,B,A] = dir2cas(b,a)
%  
%cau truc song song
[r,p,k] = residue(b,a)
    K = []
  P = [ p(2);p(1)]
  R = [ r(2);r(1)]
%      
 [b1,a1] = residue(R,P,K) % K=0 vi 0 + phan so
 
[b2,a2] = residue(r(3),p(3),K)

