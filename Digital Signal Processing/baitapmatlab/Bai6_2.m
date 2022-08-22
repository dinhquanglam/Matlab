% Thiet ke bo loc thong thap 
% tan so dai thong 1500Hz, 
% Tan so dai triet 2000Hz,
% gon song dai thong 0.01, 
% gon song dai triet 0.1, 
% tan so lay mau 8000Hz:
clc, clear all , close all
Pp = 0.01
Ps = 0.1
vp = 1500/8000
vs = 2000/8000
vc = (vp+vs)/2
wc = 2*pi*vc
Ap = - 20*log((1-Pp)/(1+Pp)) % = 0.4
As = - 20*log(Ps/1+Pp) % = 46.0516
% Soi bang 6.2 => dung cua so Hamming
C = 3.47
L = C/(vs-vp) % L=55
L = round(L)
if(mod(L,2) == 0)
    L = L-1
end
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  hamming(L) %Cua so hamming

h_ideal = ideal_LP (wc,L) 
h_LP = h_ideal.*w'
figure
subplot(211)
stem(n,h_LP)
title('Dap ung xung cua bo loc')
subplot(212)
filter_spect_1 (h_LP)
grid on


