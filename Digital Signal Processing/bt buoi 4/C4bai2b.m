%bai2b: Xac dinh he thong co on dinh ko? ve do thi bieu dien dap ung xung
%trong mien thoi gian
% h(n) = 10u(n) - 5u(n - 5) - 10u(n - 10) + 5u(n - 15)
nh = -20:50
h = 10.*xungNhayBac(nh,0) - 5.*xungNhayBac(nh,5) - 10.*xungNhayBac(nh,10) + 5.*xungNhayBac(nh,15);
stem(nh,h);
%  h(n)=0 Vn>0 => he thong on dinh
