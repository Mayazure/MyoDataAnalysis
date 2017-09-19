path = 'H:\Myo\Data\Processing\';

filename = dir(strcat(path,'*.csv'));
count = length(filename);

for i=1:count
    myoNormalizationFromFile(path,filename(i).name);
    display(strcat(filename(i).name,' done.'));
end

