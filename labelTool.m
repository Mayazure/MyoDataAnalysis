function[] = labelTool(dirPath,expNo)

emgFilePath = strcat(dirPath,num2str(expNo),'.csv');
rangeFilePath = strcat(dirPath,'InfoData\',num2str(expNo),'.csv');

emgFile = fopen(emgFilePath);
rangeFile = fopen(strcat(rangeFilePath));

emgData = textscan(emgFile, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',','HeaderLines',1);
rangeData = textscan(rangeFile, '%u64 %s %s %s %d %d %d','Delimiter',',');

emgLen = length(emgData{1});
X = zeros(emgLen,1);
for i=1:emgLen
    X(i) = i;
end

label = rangeData{1};
RangeLen = length(label);

figure
set(gca,'XLim',[-200,200]);

for i=3:10
    
    Y = emgData{i};
    
    subplot(9,1,i-2);
    plot(X,Y);
    
    for j=1:RangeLen
        line([label(j),label(j)],[-200,200],'color',[1 0 0]);
    end
    
end

subplot(9,1,9);
plot(X,emgData{3},X,emgData{4},X,emgData{5},X,emgData{6},X,emgData{7},X,emgData{8},X,emgData{9},X,emgData{10});
for j=1:RangeLen
    line([label(j),label(j)],[-200,200],'color',[1 0 0]);
end

end