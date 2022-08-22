%bai2a: Xac dinh he thong co on dinh ko? ve do thi bieu dien dap ung xung
%trong mien thoi gian
%h(n)= 3delta(n + 2) + 2delta(n) - delta(n - 3) + 5delta(n - 7), 5 <= n <= 10
nh = 5:10
h = 3.*delta_sig(nh, -2) + 2.*delta_sig(nh,0) - delta_sig(nh,3) + 5.*delta_sig(nh, 7)
subplot(211)
stem(nh,h);
title('Bai 2a')
%h(n)->0 n->+oo => he thong on dinh

%bai 2b:
% h(n) = 10u(n) - 5u(n - 5) - 10u(n - 10) + 5u(n - 15)
nb = -20:50
hb = 10.*xungNhayBac(nb,0) - 5.*xungNhayBac(nb,5) - 10.*xungNhayBac(nb,10) + 5.*xungNhayBac(nb,15);
subplot(212)
stem(nb,hb);
title('Bai 2b')
%  h(n)->0 n->+oo => he thong on dinh
