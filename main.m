
clc;

density = 3;
%{
for i=2:4
    for d=0:2
        extractFeaturesFromDir(strcat('D:\Myo\Organized Data\class\',num2str(i),'\ParsedData_',num2str(density),'\',num2str(d),'\'),d);
    end
end
%}
extractFeaturesFromFile('low.csv',0);
extractFeaturesFromFile('high.csv',1);
extractFeaturesFromFile('vhigh.csv',2);
display('done.');