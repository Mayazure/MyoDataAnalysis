
clc;

density = 3;

%for i=2:4
    for d=0:2
        %extractFeaturesFromDir(strcat('D:\Myo\Organized Data\class\',num2str(i),'\ParsedData_',num2str(density),'\',num2str(d),'\'),d);
        extractFeaturesFromDir(strcat('C:\Users\Mayazure\Desktop\Processing\ParsedData_3\',num2str(d),'\'),d);
    end
%end


%{
extractFeaturesFromFile('test\low.csv',0);
extractFeaturesFromFile('test\high.csv',1);
%}
display('done.');