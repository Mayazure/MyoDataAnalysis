function [filteredWave] = bwFilter(originalWave)

Fs = 200;

figure(1);
Wc=2*50/Fs;                                          %��ֹƵ�� 50Hz
[b,a]=butter(4,Wc);
filteredWave=filter(b,a,originalWave);

subplot(2,1,1);                                        %Mix_Signal_1 ԭʼ�ź�
plot(originalWave);
%axis([0,1000,-4,4]);
title('Original ');

subplot(2,1,2);                                        %Mix_Signal_1 ��ͨ�˲��˲����ź�
plot(filteredWave);
%axis([0,1000,-4,4]);
title('Filtered');
end