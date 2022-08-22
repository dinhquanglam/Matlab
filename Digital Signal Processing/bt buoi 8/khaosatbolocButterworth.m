clear;clc;close all;
% tso cat = 1
b1= [1];
a1= [1 1];
b2=[1];
a2=[1 sqrt(2) 1]
b3=[1];
a3=[1 2 2 1];
w=linspace(0,6,512);
H1=freqs(b1,a1,w);
H2=freqs(b2,a2,w);
H3=freqs(b3,a3,w);
 
 
%%%%%%
% n=6
%%%%%%
b1= [1];
a1= [1 0.5176 1];
b2=[1];
a2=[1 sqrt(2) 1]
b3=[1];
a3=[1 1.9319 1];
H11=freqs(b1,a1,w);
H22=freqs(b2,a2,w);
H33=freqs(b3,a3,w);
H4abs=abs(H11).*abs(H22).*abs(H33);
 
plot(w,abs(H1),w,abs(H2),w,abs(H3),w,H4abs);
title('Butterworth')
legend('n=1','n=2','n=3','n=6');
xlabel('\Omega rad/s')
ylabel('|H(\Omega)|')
hold on
plot([0 1 1],[1/sqrt(2) 1/sqrt(2) 0],'-.k')
