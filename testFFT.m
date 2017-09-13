x=0:pi/2:10*pi;
y = sin(x);
z = fft(y);

subplot(211);
plot(x,y);

subplot(212);
plot(x,z);