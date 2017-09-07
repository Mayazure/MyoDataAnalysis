function[] = extractFeaturesFromFile(filename, flag)

outfiles = zeros(1,8);
outPath = 'features_test\';

for i=1:8
    outfiles(i) = fopen(strcat(outPath, num2str(i), '.csv'), 'a');
end

    fid = fopen(filename);
    data = textscan(fid, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',');
    for j=3:10
        fea = getFeatures(data{j},0,0,0);
        %display(fea);
        len = length(fea);
        for n=1:len
            fprintf(outfiles(j-2), '%f,',fea(n));
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
    fclose(fid);

for i=1:8
    fclose(outfiles(i));
end

end