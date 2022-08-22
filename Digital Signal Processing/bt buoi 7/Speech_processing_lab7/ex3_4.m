close all,clear,clc
[x,fs]=audioread('vowels.mat');
% load vowels.mat
tend=l/fs; %the ending time of the whole signal
dt=tend/l; %delta t
t=[0:dt:tend];
figure(1);
plot(t(1:l),x)
xlabel('time')
ylabel('x')
title('original signal')
L=320;
overlap=60;
N=512;
X=Specgm(s,L,overlap,N,fs);
L=320;
overlap=60;
N=512;

X=Specgm(s,L,overlap,N,fs);
L=60;
overlap=20;
N=512;
X=Specgm(s,L,overlap,N,fs);
