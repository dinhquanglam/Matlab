%x = sin(2pi*1000t) + 2 cos(2pi*750t) - sin(2pi*400t)
Fs = 1000; % Sampling frequency
T = 1/Fs; % Sample time
L = 1000; % Length of signal ; so mau su dung de ve tin hieu
t = (0:L-1)*T; % Time vector
x = sin(2*pi*1000*t) + 2*cos(2*pi*750*t) - sin(2*pi*400*t);
figure;
%%% Plot signal in time domain:
subplot(2,1,1)
plot(Fs*t(1:50),x(1:50))
title(' Original signal in time domain')
xlabel('time (milliseconds)')

%%% Plot signal in frequency domain when Fsampling = 1000Hz:
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
subplot(2,1,2);
X = fft(x,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
plot(f,2*abs(X(1:NFFT/2+1)))
title('Amplitude Spectrum of original x(t)')
xlabel('Frequency (Hz)')
ylabel('|X(f)|');
