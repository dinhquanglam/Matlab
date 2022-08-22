clc, close all, clear all
[x, fs]= audioread('rawecg.wav');
%% Bandstop FIR
vp = 40/fs
vs = 60/fs
vc = (vp+vs)/2
wc = 2*pi*vc
wp = 2*pi*vp
ws = 2*pi*vs
%% Chon loai cua so Hamming
C = 3.47;
L = C/(vs-vp); 
L = round(L);
if(mod(L,2) == 0)
    L = L-1;
end

%% Thiet ke bo loc thong thap
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  hamming(L); %Cua so hamming
h_ideal = ideal_LP (wc,L); 
h_LP = h_ideal.*w';

%% Thiet ke bo loc thong dai
h_BP = cos((wp + ws) * n/2).*h_LP;
%% Thiet ke bo loc thong triet dai
figure(1)
h_BS = delta_sig_1(n, 0) - h_BP
subplot(211)
stem(n,h_BS)
title('BandStop')
xlabel('n (s)')
ylabel('h(n)')
subplot(212)
filter_spect_1 (h_BS)
grid on

 
 %% hien thi:
figure(2) 
subplot(211)
plot(x);
title('Tin hieu x tren mien thoi gian')
xlabel('Time(s)')
ylabel('Amptitude')
L=320;
N=512;
F = (1:512) * fs / N;
X = fft(x, 512);
subplot(212)
plot(F, abs(X))
title('Tin hieu x tren mien tan so')
xlabel('Frequecy (Hz)')
ylabel('|X(w)|')
%% Ap dung bo loc vao tin hieu x
y = filter(h_LP,1,x);
%%
figure 
Y = fft(y, 1024);
subplot(212)
plot(F, abs(Y))
xlim([0 F(end)/2])
ylim([0 4000])
title('Tin hieu sau khi duoc loc tren mien tan so')
xlabel('Frequecy (Hz)')
ylabel('|Y(w)|')

