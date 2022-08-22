clc ; close all; clear all;
%bai1
% a = (65-15)/49;
% b = 15:a:65

%bai2
% a = 0:2:38

%bai3
% a = randn(10)
% b = eye(10)
% c = a.*b
% d= a-c

%bai4
% a = randn(10)
% b = eye(10)
% c = a.*b
% d = a-c
% e = d+b

%bai5
% i = randn(3)
% [x] = max(i)
% disp('Gia tri lon nhat cua ma tran la:')
% [y] = max(x)
% 
% [a] = min(i)
% disp('Gia tri nho nhat cua ma tran la:')
% [b] = min(a)

%bai6
% n = round(rand *10+1) %% lam tron so tu 0 den 10
% a = rand(1,n) %%vecto a random 1 hang, n cot
% b = rand %% vecto b random 1 hang, 1 cot
% value = a;
% for i=1:n
%     if value(1,i) < b
%         value (1,i) = 0;
%     else
%         value (1,i) = 1;
%     end
%     c = value(1,i)
% end

%bai 7 
% x =-10:10
% y = x.^2
% plot(y)

%bai 8
% x = -2:2
% y = sin(0.2*pi*x);
% plot(y);

%bai 9
% x = -10:10;
% y = exp(x)
% plot(y);