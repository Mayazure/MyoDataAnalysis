function[] = rangePlot(filename)

fid = fopen(filename);
data = textscan(fid, '%f %f','Delimiter',',');

len = length(data{1});
data1 = data{1};
YY = zeros(101,1);
XX = zeros(101,1);

for i=1:100
    XX(i)=i;
end

for i=1:len
    YY(data1(i)+1) = YY(data1(i)+1)+1;
end

subplot(211);
plot(XX,YY);


%subplot(212);
%plot(XX,data{2});
end