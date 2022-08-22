function [A] =Specgm(x,L,overlap,N,fs)    %Gu&Wood
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%X=DFTwin(x,L,m,N);
l=L-overlap;                           %length without overlap
k=round(length(x)/l);
if (length(x)<(l*k+L))                 %modification of k
    k=k-1;
end
 
for i=1:(k-1)                          %take the DFTwin of X
    X=DFTwin(x,L,l*i,N);
    A(:,i)=X(1:N/2);
end
 
%ls=length(x);
%tend=ls/fs;
%dt=tend/l;
%t=[0:dt:tend];
%n=length(x);                           %plot the graph
% figure;
Amax=max(max(20*log10(abs(A))));
imagesc(4000/Amax*20*log10(abs(A)))
%axis xy
%axis([0 tend 0 4000])
colormap(jet)
end