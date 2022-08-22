% thiet ke bo loc thong thap co
% dai thong 100 Hz
% dai chuyen tiep 100 Hz - 120 Hz
% dai chan > 120 
% tan so lay mau: 1000 Hz
% tin hieu lap lai sau Fs
% tin hieu lap lai sau w=2pi (f=1)
% tuc la tren mien tso -so
% chi can quan tam toi tso 0 -> 0.5
% tuc la khi thiet ke quan tam toi Fs/2=500 Hz
clc, clear all , close all
vp = 100/1000
vs = 120/1000
vc = (vp+vs)/2
wc = 2*pi*vc
%  dung cua so Hanning
w =  hann(L) %Cua so hanning
C = 3.21
L = C/(vs-vp) 
L = round(L)
if(mod(L,2) == 0)
    L = L-1
end
% L=161
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;

h_ideal = ideal_LP (wc,L) 
h_LP = h_ideal.*w'
figure
subplot(211)
stem(n,h_LP)
title('Dap ung xung cua bo loc')
subplot(212)
filter_spect_1 (h_LP)
xlim([0 0.5])
grid on

