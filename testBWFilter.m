
filename = 'C:\Users\admin-u5870682\Desktop\emg-20170919132834.csv';

fid = fopen(filename);
data = textscan(fid, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',');

len = length(data{1});
limdown=data{1}(1);
limup=data{1}(len);

XX = zeros(len,1);
for i=1:len
    XX(i)=i;
end

A = data{3};
B = bwFilter(A);

