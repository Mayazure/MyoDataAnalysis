%{
fid1 = fopen('emg-1493522667data.csv');
data1 = textscan(fid1, '%u64 %d %d %d %d %d %d %d %d','Delimiter',',');

fid2 = fopen('emg-1493524087data.csv');
data2 = textscan(fid2, '%u64 %d %d %d %d %d %d %d %d','Delimiter',',');

figure
set(gca,'XLim',[2667735832,3125082647]);
% plot(data1{1},data1{2},data1{1},data1{3},data1{1},data1{4},data1{1},data1{5},data1{1},data1{6},data1{1},data1{7},data1{1},data1{8},data1{1},data1{9});
% legend('1','2','3','4','5','6','7','8');
for i=1:8
    subplot(8,1,i);
    plot(data1{1},data1{i+1});
end



figure;
set(gca,'XLim',[4087723661,4582448859]);
% plot(data2{1},data2{2},data2{1},data2{3},data2{1},data2{4},data2{1},data2{5},data2{1},data2{6},data2{1},data2{7},data2{1},data2{8},data2{1},data2{9});
% legend('1','2','3','4','5','6','7','8');
for i=1:8
    subplot(8,1,i);
    plot(data2{1},data2{i+1});
end
plot(data2{1},data2{5});
%}
%{
myoPlot('emg-1493522667data.csv',1);
myoPlot('emg-1493524087data.csv',1);
myoPlot('D:\Projects\Myo\Myo\Myo Data Capture Windows\emg-1488540963.csv',1);
myoPlot('D:\Projects\Myo\Myo\Myo Data Capture Windows\emg-1489792145.csv',1);
%}
% myoPlot('C:\\Users\\Mayazure\\Desktop\\20170706\\Data processing\\test1.txt',1)
%myoPlot('30-30.txt',1);
%myoPlot('81-100.txt',1);

%{
for i=0:22
    filename = strcat(num2str(i),'.csv');
    myoPlot(filename,1);
end
%}

%{
for i=0:11
    filename = strcat(num2str(i),'.csv');
    myoPlot(filename,1);
end
%}
%myoPlot('parsed_emg-20170725155545.csv',1);

%myoPlot('Motorway-full.csv',4,true);
myoPlot('test_baseline.csv',4,false);
%myoPlot('event2.txt',4,false);