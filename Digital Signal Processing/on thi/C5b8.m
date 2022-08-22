clear;clc;close all;
% bo loc tuong tu
% G(p)=1/(p+5)(p+12)
% G(p)=1/p2 +17p+60
b1=[1];a1=[1 17 60];
Omega=linspace(0,10,256); %rad/s
G=freqs(b1,a1,Omega);
subplot(131);
%plot(Omega,abs(G));
plot(Omega,20*log10(abs(G)));
xlabel('\Omega rad/s');ylabel('|G(\Omega)|');grid on;
%% Bo loc roi rac
b2=[0 .00164];
a2=[1 -1.327 .4274];
Ts=.05;
omega=Omega*Ts;
H=freqz(b2,a2,omega);
subplot(132);
plot(omega,20*log10(abs(H)));
xlabel('\omega rad');ylabel('|H(\omega)|');
grid on;
subplot(133);
plot(Omega,20*log10(abs(G)/abs(G(1))),omega/Ts,20*log10(abs(H)/abs(H(1))),'r-.');
legend('tuong tu','roi rac');
xlabel('Quy doi tan so goc tuong tu - rad/s');
 

