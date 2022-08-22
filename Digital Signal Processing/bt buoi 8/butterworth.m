%Program: EXP5_IIR_Butterworth_Lowpass
%A MATLAB program to design IIR Butterworth Lowpass Filter
clc;
clear all; close all;
N = 512; n = 6; %bac 6
%Clear all figures %Clear all variables %Close all figures
%Define the order of the filter
fc = input('Enter the cutoff frequency: ');
fs = input('Enter the sampling frequency: ');
Wc = 2 * fc / fs; %Normalizing the frequencies
[b,a]=butter(n,Wc,'high'); %Calculation of filter coefficient
freqz(b,a,N,fs); %Plotting the filter response
title('Magnitude and Phase response of Butterworth IIR Lowpas filter');

