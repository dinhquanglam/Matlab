%bai2c:h(n)= 2sin(0.01?n)cos(0.5?n), -200 <= n <= 200
nh = -50:50
h = 2*sin(0.01*pi.*nh).*cos(0.5*pi.*nh);
figure;
subplot(311);
stem(nh,h);
title('Bai 2c')
% h(n) KHONG ->0 n->+oo => he thong KHONG on dinh

%2d: h(n)=(1/2)^n
subplot(312);
nh = -50:50
h =(1/2).^nh;
stem(nh,h);
title('Bai 2d')
% vi h(n) KHONG ->0 n->+oo => he thong KHONG on dinh

%2e: h(n)=3^n
subplot(313)
nh = -50:50
h = 3.^nh;
stem(nh,h);
title('Bai 2e')
%h(n)->0 n->+oo => he thong on dinh










