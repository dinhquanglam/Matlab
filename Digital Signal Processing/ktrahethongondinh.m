
% Kiem tra tính on dinh cua h? thong LTI nhân qua có phuong trình sai phân:
%y(n) = x(n) – 0,8x(n-1) – 1,5y(n-1) – 0,9y(n-2)
% HE THONG ON DINH
num = [1 -0.8];
den = [1 1.5 0.9];
N = 100;
h = impz(num,den,N+1);
parsum = 0;
for k = 1:N+1;
parsum = parsum +abs(h(k))
if abs(h(k)) < 10^(-6), break, end
end
% V? ?áp ?ng xung ??n v?
 n = 0:N;
 stem(n,h)
 xlabel('So mau'); ylabel('Biên do');
title('Dap ung xung don vi');
% Giá tr? tuy?t ??i c?a h(k)
disp(abs(h(k)));