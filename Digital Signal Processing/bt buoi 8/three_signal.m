% Tao tin hieu x dai 3 giay la tong cua 3 tin hieu thanh phan, co cung bien do, lan luot duoc cong
% them vao voi do tre 1 giay. Cu the:
% - Ca 3 tin hieu phai co tan so lay mau la 8192Hz
% - Tin hieu 1 co tan so 220Hz; tu 0 <t <3s
% - Tin hieu 2 co tan so 300Hz; tu 1 <t <3s
% - Tin hieu 3 co tan so 440Hz; tu 2 <t <3s
% Tin hieu tren duoc them nhieu trang Gaussian: noise = randn(size(t)); y = x + noise;
% 1. Ve tin hieu x ban dau va tin hieu y sau khi bi nhieu.
% 2. Thiet ke bo phat IIR dap ung tuy y de loai bo thanh phan 300Hz khoi tin hieu ba am co
% nhieu trang y.
% 3. Ve phan ung thiet ke.
% 4. Loc tin hieu y voi bo chinh am duoc thiet ke.
% 5. So sanh tin hieu va pho truoc va sau khi loc.
clc, close all, clear all
fs = 8192
t = 0:1/fs:3
t1=0:1/fs:3
L= length(t)
f1 = 200
x1=sin(2*pi*f1*t1)
ax(1)= subplot(311)
plot(t,x1)
title('tin hieu x1')

t2 = 1:1/fs:3
x_z2= zeros(L,1)
f2 = 300
x2=sin(2*pi*f2*t2)
x_z2(1*fs:3*fs) = x2
ax(2)= subplot(312)
plot(t,x_z2)
title('tin hieu x2')

t3 = 2:1/fs:3
x_z3= zeros(L,1)
f3 = 440
x3=sin(2*pi*f3*t3)
x_z3(2*fs:3*fs) = x3
ax(3)=subplot(313)
plot(t,x_z3)
title('tin hieu x3')


linkaxes(ax)

figure;
x = x1'+ x_z2+ x_z3;
subplot(211)
plot(t,x)
title('tin hieu x = x1 + x2 + x3')

noise = randn(size(t))
y = x + noise'
subplot(212)
plot(t,y)
title('tin hieu y = x + noise')

figure
n = 6
N = 512
fc = [250 350]
Wc = 2 * fc/fs
[b,a] = butter(n,Wc,'stop')
freqz(b,a,N,fs)
title('butterworth lowpass filter')

figure
z = filter(b,a,y);
subplot(211)
plot(t,y)
title('tin hieu y')
subplot(212)
plot(t,z)
title('tin hieu sau khi duoc loc')

figure
Y=fft(y)
subplot(211)
plot(abs(Y))
title('tin hieu y (mien tan so)')
Z = fft(z)
subplot(212)
plot(abs(Z))
title('tin hieu y sau khi dc loc (mien tan so)')