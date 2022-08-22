clc;
clear all; close all;
N = 512; n = 6;
R = 20;
%Clear all figures %Clear all variables
%Close all figures
%Define the order of the filter %Stopband ripple in decibles
fc = input('Enter the cutoff frequency: ');
fs = input('Enter the sampling frequency: ');
Wc = 2 * fc / fs; %Normalizing the frequencies
[b,a]=cheby2(n,R,Wc,'low');%Calculation of filter coefficients
freqz(b,a,N,fs); %Plotting the filter response
title('Magnitude and Phase Response of Chebyshev-Type-2 IIR Lowpass Filter');
