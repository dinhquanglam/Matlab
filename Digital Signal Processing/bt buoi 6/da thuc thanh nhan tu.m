clc;clear all; close all;

% VD1: H(z) = 1 + 2z^(-1) + z^(-2) / (1-3z^(-1) + 5z^(-2) + 2*z(-3)

% A = [ 1 -3 5 2];
% 
% root_A = roots(A)
% 
% poly([root_A(1) , root_A(2)])


% VD2: y(n) - 2y(n-1) + 4y(n-2)- 3y(n-3)= x(n) + 5x(n-1) - 4x(n-2) +2x(n-3)
 
%  MS = [1 -2 4 -3]; %mau so
% TS = [ 1 5 -4 2]; %tu so
% 
% root_MS = roots(MS);
% root_TS = roots(TS);
% root_TS = cplxpair(root_TS) % sap xep nghiem phuc len truoc)
% root_MS = cplxpair(root_MS)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% chuyen doi tu cac nghiem sang da thuc
% tu so
% poly([root_TS(1) , root_TS(2)])
%
% % (1 - 0.7554*z(-1) + 0.3475*z(-2))* (1 + 5.7554*z^(-1))

% H(z) = H1(z) * H2(z) noi tiep
%VD
%2 - 3*(z-1) z^(-2)
% heSo = [2 -3 1];
% poly( nghiem1 nghiem2)
% nghiem = roots(heSo)
% heSo = [ 2 2 1];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







