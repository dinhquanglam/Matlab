clc; close all; clear all;

load('ECGdata.mat');

%% ECG0
t = 0:1/fs0:(length(ECG0)-1)/fs0

figure;
plot(t, ECG0)
xlabel('Time (s)')
ylabel('Normalize Amp.')

%% Freq. domain
N = 1024

ECG_w = fft(ECG0, N);
f = fs0*(1:N)/N;
figure
plot(f,abs(ECG_w))
xlabel('Tan so (Hz)')
xlim([1 125])


Fc = [5 12];
Wc = 2 * Fc / fs0;
[B A] = butter(6, Wc, 'bandpass');

%% Loc tin hieu
ECG_filtered = filter(B, A, ECG0)


figure;
plot(t, ECG_filtered)
xlabel('Time (s)')
ylabel('Normalize Amp.')
title('Tin hieu sau khi loc tren mien thoi gian')

%% Freq. domain
ECG_F_w = fft(ECG_filtered, N);
figure
plot(f,abs(ECG_F_w))
xlabel('Tan so (Hz)')
xlim([1 125])

%% Dao ham
b = [1 2 0 -2 -1].*(1/8)*fs0;  
ECG_D = filtfilt(b,1,ECG_filtered)

%% Binh phuong
ECG_S = ECG_D.^2;

figure
ax(1) = subplot(511)
plot(t, ECG0)
title('Tin hieu goc')
ax(2) = subplot(512)
plot(t, ECG_filtered)
title('Tin hieu sau khi qua bo loc bandpass')
ax(3) = subplot(513)
plot(t, ECG_D)
title('Tin hieu sau khi dao ham')
ax(4) = subplot(514)
plot(t, ECG_S)
title('TIn hieu sau khi binh phuong')

%% Moving average
ECG_M = conv(ECG_S ,ones(1 ,round(0.150*fs0))/round(0.150*fs0));
ax(5) = subplot(515)
plot(t, ECG_M(1:43000))
title('TIn hieu sau khi qua cua so moving')

linkaxes(ax,'x')

[pks locs] = findpeaks(ECG_M, 'MINPEAKDISTANCE', 0.5 * fs0)

figure;
plot(ECG_M) 
hold on;
plot(locs, pks, 'ro')

num_pks = length(pks);
time_pks = (locs(end) - locs(1))/fs0;

HR_est = 60 * (num_pks/time_pks)

