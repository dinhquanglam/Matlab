%Program: EXP5_IIR_Butterworth_Lowpass
%A MATLAB program to design IIR Butterworth Lowpass Filter
clc;
clear all; close all;
N = 512; n = 6;
%Clear all figures %Clear all variables %Close all figures
%Define the order of the filter
fc = input('Enter the cutoff frequency: ');
fs = input('Enter the sampling frequency: ');
Wc = 2 * fc / fs; %Normalizing the frequencies
[b,a]=butter(n,Wc,'low'); %Calculation of filter coefficient
freqz(b,a,N,fs); %Plotting the filter response
%title('Magnitude and Phase response of Butterworth IIR Lowpas filter');


% Program: EXP5_IIR_Chebyshev_Type_1_Lowpass
%A MATLAB program to design IIR Butterworth Lowpass Filter
rp = 0.5; %Define the Passband peak-to-peak ripple in decibels
Wc = 2 * fc / fs; %Normalizing the frequencies
hold on;
[b,a]=cheby1(n,rp,Wc,'low'); %Calculating filter coefficients
freqz(b,a,N,fs); %Plotting the filter response
%title('Magnitude and Phase Response of Chebyshev-Type-1 IIR Lowpass Filter');



R = 20;
%Clear all figures %Clear all variables
%Close all figures
%Define the order of the filter %Stopband ripple in decibles
Wc = 2 * fc / fs; %Normalizing the frequencies
hold on;
[b,a]=cheby2(n,R,Wc,'low');%Calculation of filter coefficients
freqz(b,a,N,fs); %Plotting the filter response
%title('Magnitude and Phase Response of Chebyshev-Type-2 IIR Lowpass Filter');

legend('butterworth', 'chebychev1', ' chbyshev 2')



