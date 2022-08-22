% Program: EXP5_IIR_Chebyshev_Type_1_Lowpass
%A MATLAB program to design IIR Butterworth Lowpass Filter
clc; clear all; close all;
N = 512;
n = 6;

rp = 0.5; %Define the Passband peak-to-peak ripple in decibels
fc = input('Enter the cutoff frequency: '); % thay doi fc 
fs = input('Enter the sampling frequency: ');

Wc = 2 * fc / fs; %Normalizing the frequencies
[b,a]=cheby1(n,rp,Wc,'low'); %Calculating filter coefficients
freqz(b,a,N,fs); %Plotting the filter response
title('Magnitude and Phase Response of Chebyshev-Type-1 IIR Lowpass Filter');
%stop: thong triet
%bandpass: thong dai
