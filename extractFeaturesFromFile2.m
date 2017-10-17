function[feas] = extractFeaturesFromFile2(filename)

fid = fopen(filename);
data = textscan(fid, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',');
len = length(data{1});
feas=cell(8,1);
for j=3:10
    mav = getMAV(data{j},len,1);
    zc = getZC(data{j},len,0,0);
    wl = getWL(data{j},len);
    fea = {mav zc wl};
    feas{j-2}=fea;
end
fclose(fid);

end