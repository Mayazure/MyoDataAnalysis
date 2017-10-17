path = 'H:\Myo\Data\gesture\test\Parsed\baseline';
number = '1';
suffix = '.csv';
for i=1:8
    myoPlot(strcat(path,num2str(i),suffix),1,false);
end

feas = extractFeaturesFromFile2(strcat(path,number,suffix));
for i=1:8
    display(feas{i});
end