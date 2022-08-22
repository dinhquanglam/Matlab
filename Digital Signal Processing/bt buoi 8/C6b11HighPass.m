clc, clear all , close all
wc1 = pi/5
wc = pi - wc1
L = 39
n = [0:1:(L-1)]
w =  rectwin(L) %Cua so hcn
h_ideal = ideal_LP (wc,L)
h_LP = h_ideal.*w'
figure
h_HP = (-1).^n.*h_LP;
subplot(211)
stem(h_HP)
xlabel('n (s)')
ylabel('h(n)')
subplot(212)
filter_spect_1 (h_HP)
grid on



