%Ve tin hieu ra: x(n) = {1, 2, 3, 4, 5}; h(n) = {6, 7, 8, 9}
x =   [1 2 3 4 5]
nx = [-2 -1 0 1 2 ]

h =  [6 7 8 9]
nh= [0 1 2 3]

[y,ny]=sig_conv(x,nx,h,nh);
figure;
subplot(311)
stem(nx,x);
title('tin hieu vao x(n)')
xlim([-2 5])

subplot(312)
stem(nh,h)
title('he thong h(n)')
xlim([-2 5])

subplot(313)
stem(ny,y);
title('tin hieu ra y(n)');
xlim([-2 5])
