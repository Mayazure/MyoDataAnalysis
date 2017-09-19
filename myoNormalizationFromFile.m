function [] = myoNormalizationFromFile(filePath,filename)

originalFile = fopen(strcat(filePath,filename));
outFile = fopen(strcat(filePath, 'n_',filename), 'a');

data = textscan(originalFile, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',','HeaderLines',1);

timestamp = data{1};
label = data{2};

len = length(label);

emgData = data{3};

for i=2:8
    emgData=[emgData,data{i+2}];
end

base = ones(len,8);

Amin = min(emgData); Amax = max(emgData); Amean = mean(emgData);
emgData = (emgData-Amean.*base)./(Amax-Amin);

%display(emgData);
%normalizedData = {timestamp,label,emgData};


for i=1:len
     fprintf(outFile, '%d', timestamp(i));
     fprintf(outFile, ',%s', label{i});
     for j=1:8
         fprintf(outFile, ',%f', emgData(i,j));
     end
     fprintf(outFile, '\n');
end

fclose(originalFile);
fclose(outFile);

display('Done.');
end