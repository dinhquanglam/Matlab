clc, close all, clear all;

syms s;

SIA = [ s , -1 , 0 ; 0 ,s, -1 ; 2,2,s+3];

SIA1 = inv(SIA);

B = [10;0;0];

C = [1 , 0,0];

D = [0];

T = C .* SIA1 .* B + D
