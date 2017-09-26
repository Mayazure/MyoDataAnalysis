function[] = labelTool2(dirPath,expNo)

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
rangeLen = length(label);

for j=1:rangeLen
    index = label(j);
    starti = index - 3000 + 1;
    endi = index + 1000;
    
    figure
    dcm_obj = datacursormode(gcf);
    set(dcm_obj,'UpdateFcn',@NewCallback)
    
    for i=3:10
        Y = emgData{i};
        subplot(8,1,i-2);
        plot(X,Y);
        set(gca,'YLim',[-200,200]);
        set(gca,'XLim',[starti,endi]);
        line([label(j)-300,label(j)-300],[-200,200],'color',[1 0 0]);
        line([label(j),label(j)],[-200,200],'color',[1 0 0]);
    end
    
end

end