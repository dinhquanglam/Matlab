 %bai2:
 clc;close all; clear all;
 
 [x, fs]= audioread('go.au');
 plot(x);
 x_voice=x(1980:5400);
L=396;
N=512;

X_1 =DFTwin(x_voice,L,10,N) ; 
X_2 =DFTwin(x_voice,L,50,N) ; 
X_3 =DFTwin(x_voice,L,100,N) ;
X_4 =DFTwin(x_voice,L,500,N) ;
X_5 =DFTwin(x_voice,L,1000,N) ;


subplot(2,1,1);
plot(x_voice); xlabel('voice segment of original signal');
subplot(2,1,2);
% pho bien do: 
plot(abs(X_1)); hold on;
plot(abs(X_2),'r');
plot(abs(X_3),'g');
plot(abs(X_4),'c');
plot(abs(X_5),'g');
xlabel('DTFT of voice signal with different values of m');