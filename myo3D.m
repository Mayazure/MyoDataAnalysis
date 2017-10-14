function [] = myo3D(filename)
fid = fopen(filename);
data = textscan(fid, '%u64 %s %f %f %f','Delimiter',',','HeaderLines',1);
%plot3(data{1},data{3},data{4});
%plot3(data{3},data{4},data{5});
subplot(311);
plot(data{1},data{3});
subplot(312);
plot(data{1},data{4});
subplot(313);
plot(data{1},data{5});
grid on;
grid minor;
display('done');
end