function[]=gesturePlot(filename,feas)
fid = fopen(filename);
data = textscan(fid, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',');

len = length(data{1});
limdown=data{1}(1);
limup=data{1}(len);

XX = zeros(len,1);
for i=1:len
    XX(i)=i;
end
figure
for i=2:9
    A = data{i+1};
    %A = bandPassFilter(A,200,50,200);
    for j=1:len
        if abs(A(j))>=100%feas{i-1}{1}
            A(j)=0;
        end
        if abs(A(j))<=50%feas{i-1}{1}
            A(j)=0;
        end
    end
    
    subplot(8,1,i-1);
    plot(XX,A);
    set(gca,'YLim',[-150 150]);
end

display('end');

end