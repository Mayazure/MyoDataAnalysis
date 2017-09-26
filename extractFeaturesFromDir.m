function[] = extractFeaturesFromDir(path, flag)

filename = dir(strcat(path,'*.csv'));

%{
display(filename);
display(filename(1).name);
fid = fopen(strcat(path,filename(1).name));
    data = textscan(fid, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',');
    display(data(3));
%}

count = length(filename);
outfiles = zeros(1,8);
outPath = 'features_final\';

for i=1:8
    outfiles(i) = fopen(strcat(outPath, num2str(i), '.csv'), 'a');
end

outfile = fopen(strcat(outPath, 'all.csv'), 'a');

for i=1:count
    fid = fopen(strcat(path,filename(i).name));
    data = textscan(fid, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',');
    feaAVG = zeros(1,10);
    for j=3:10
        %[normalizedData,PS] = mapminmax(data{j});
        A = data{j};
        len = length(A);
        %Amin = min(A); Amax = max(A); Amean = mean(A);
        %A = (A-repmat(Amean,len,1))./repmat(Amax-Amin,len,1);
        
        %display(A);
        fea = getFeatures(A,0.1,0,0);
        feaAVG = feaAVG + fea;
        %display(fea);
        %display(PS);
        len = length(fea);
        for n=1:len
            fprintf(outfiles(j-2), '%f,',fea(n));
            fprintf(outfile, '%f,',fea(n));
            %{
            if n ~= len
                fprintf(outfiles(j-2), ',');
            else
                fprintf(outfiles(j-2), '\n');
            end
            %}
        end
        fprintf(outfiles(j-2), '%d\n', flag);
    end
    feaAVG = feaAVG./8;
    for p=1:8
        fprintf(outfile,'%f,',feaAVG(p));
    end
    fprintf(outfile, '%d\n', flag);
    fclose(fid);
end

for i=1:8
    fclose(outfiles(i));
end
fclose(outfile);

end