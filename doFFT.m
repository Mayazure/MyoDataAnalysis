function[f,P1] = doFFT(AM,fs)
L = length(AM);
Y = fft(AM);
%y = abs(y);
P2 = abs(Y/L);
P1 = P2(1:ceil(L/2)+1);
P1(2:end-1) = 2*P1(2:end-1);
f = fs*(0:(L/2))/L;
P1=P1';
end