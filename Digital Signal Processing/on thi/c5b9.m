clear;clc;close all;
% bo loc tuong tu
% vi du 5-9
% G1(p)=1/p2+1.41p+1
% G(p)
b1=9.8696044e4;a1=[1 444.28829 b1];
Omega=linspace(0,200,256);
G=freqs(b1,a1,Omega);
%% Bo loc roi rac
b2=[0 .2449203];
a2=[1 -1.1580459 .4112407];
Ts=1/500;
omega=Omega*Ts;
H=freqz(b2,a2,omega);
plot(Omega,20*log10(abs(G)/abs(G(1))),omega/Ts,20*log10(abs(H)/abs(H(1))),'r-.');
legend('tuong tu','roi rac');
xlabel('Quy doi tan so goc tuong tu - rad/s');
 
