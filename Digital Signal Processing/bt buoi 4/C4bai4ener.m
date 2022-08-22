%Bai 4: Cho he thong y(n) - 0.5y(n - 1) + 0.25y(n - 2) = x(n) + 2x(n - 1) + x(n - 3)
% Xac dinh va ve dap ung xung c?a h? th?ng h(n), 0 <= n <= 100.
% He thong co on dinh khong?
% Voi x(n) = [5 + 3 cos(0.2pi*n) + 4 sin(0.6pi*n)]u(n), xac dinh y(n) voi 0 <= n <= 200.

n=[0:100];
a=[1 -0.5 0.25];
b=[1 2 0 1];
h=impz(a,b,n);
stem(n,h);
[e]=sig_ener(h)

figure;
n1=[0:200];
h1=impz(a,b,n1);
x=(5+3.*cos(0.2.*pi.*n1)+4.*sin(0.6.*n1)).*xungNhayBac(n1,0);
[y,ny]=sig_conv(x,n1,h1,n1);
stem(ny,y);
