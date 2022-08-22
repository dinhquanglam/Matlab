clc, clear all  , close all

%% Thong so bo loc
vp = 4/20
vs = 5/20
vc = (vp+vs)/2
wc = 2*pi*vc

%% Chon loai cua so, tinh chieu dai cua so
% Soi bang 6.2 => dung cua so Hamming
C = 3.47;
L = C/(vs-vp); % L=69
L = round(L);
if(mod(L,2) == 0)
    L = L-1;
end

%% Thiet ke bo loc thong thap
% Bang phuong phap cua so
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  hamming(L); %Cua so hamming
h_ideal = ideal_LP (wc,L); 
h_LP = h_ideal.*w';
% Hien thi dap ung xung va dap ung tan so cua bo loc
figure(1)
subplot(211)
stem(n,h_LP)
title('Dap ung xung cua bo loc')
grid on
subplot(212)
filter_spect_1(h_LP)
grid on

%% Tan so lay mau:
fs = 20000;
%% Khoi tao tin hieu
n_x = 0:1/fs:0.05; %lay mau tin hieu
F1 = 4100;
F2 = 8200;
x = 2*sin(2*pi*F1*n_x) + 7*sin(2*pi*F2*n_x);

%% Ap dung bo loc vao tin hieu x
y = filter(h_LP,1,x);

%% Hien thi tin hieu tren mien thoi gian
figure
ax(1) = subplot(211)
plot(n_x,x)
xlabel('Time (s)')
ylabel('Bien do')
ax(2) = subplot(212)
plot(n_x,y)
xlabel('Time (s)')
ylabel('Bien do')
linkaxes( ax , 'x')

%% Hien thi tin hieu tren mien tan so
figure
N = 1024;
F = (1:1024) * fs / N;
figure(3)
X = fft(x, 1024);
subplot(211)
plot(F, abs(X))
xlim([0 F(end)/2])
title('Tin hieu x tren mien tan so')
xlabel('Frequecy (Hz)')
ylabel('|X(w)|')

Y = fft(y, 1024);
subplot(212)
plot(F, abs(Y))
xlim([0 F(end)/2])
ylim([0 4000])
title('Tin hieu sau khi duoc loc tren mien tan so')
xlabel('Frequecy (Hz)')
ylabel('|Y(w)|')

