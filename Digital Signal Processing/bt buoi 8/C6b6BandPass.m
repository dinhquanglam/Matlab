clc, clear all , close all
w2 = pi/3
w1 = pi/6
wc = (w2-w1)/2
L = 9
alpha = (L-1)/2;
m = [0:1:(L-1)];
n = m - alpha;
w =  rectwin(L) %Cua so hcn
h_ideal = ideal_LP (wc,L)
h_LP = h_ideal.*w'
figure
h_BP = cos((w1 + w2) * n/2).*h_LP;
subplot(211)
stem(n,h_BP)
xlabel('n (s)')
ylabel('H(w)')
grid on
subplot(212)
filter_spect_1 (h_BP)
grid on
