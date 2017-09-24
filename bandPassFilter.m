function[y] = bandPassFilter(A,fs,low,high)
Wn = [low,high];
low=low*2/fs;
[b,a]=butter(4,low,'high');
y = filter(b,a,A);
end