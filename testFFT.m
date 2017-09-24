%{
x=0:pi/2:10*pi;
y = sin(x);
z = fft(y);

subplot(211);
plot(x,y);

subplot(212);
plot(x,z);
%}
Fs = 1000;            % Sampling frequency
T = 1/Fs;             % Sampling period
L = 1000;             % Length of signal
t = (0:L-1)*T;        % Time vector
S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);
X = S + 2*randn(size(t));
subplot(121);
plot(1000*t(1:50),X(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')
Y = fft(X);
y = abs(Y);
subplot(122);
plot(y);