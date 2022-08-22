close all
clear all
clc


[a, fs]= audioread('start.au');

s= a(3000:5000); %voiced signal

figure(1);
plot(s);
xlabel('time')
title('voiced signal')




xlabel('spectrogram of a signal')

figure
L=320;
overlap=60;
N=512;
X=Specgm(s,L,overlap,N,fs);

figure
L=500;
overlap=80;
N=512;
X=Specgm(s,L,overlap,N,fs);

figure
L=60;
overlap=20;
N=512;
X=Specgm(s,L,overlap,N,fs);


% % e signal:
% figure(2);
% subplot(2,1,1);
% plot(e);
% xlabel('time')
% ylabel('x')
% title('e- signal')
% 
% e_voice= e(2000:5400); %voiced signal
% subplot(2,1,2);
% xlabel('spectrogram of e-signal')
% X=Specgm(e_voice,L,overlap,N);
% 
%  %u  signal:
% figure(3);
% subplot(2,1,1);
% plot(u);
% xlabel('time')
% ylabel('x')
% title('u- signal')
% 
% u_voice= e(1900:5900); %voiced signal
% subplot(2,1,2);
% xlabel('spectrogram of u-signal')
% X=Specgm(u_voice,L,overlap,N);