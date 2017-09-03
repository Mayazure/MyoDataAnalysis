function[]=myoPlot(filename,flag,flag2)
fid = fopen(filename);
data = textscan(fid, '%u64 %s %f %f %f %f %f %f %f %f','Delimiter',',');

len = length(data{1});
limdown=data{1}(1);
limup=data{1}(len);

limdown
limup

XX = zeros(len,1);
for i=1:len
    XX(i)=i*5;
end

%XX = data{1};

figure
set(gca,'XLim',[limdown,limup]);
%set(gca,'xtick',limdown:5000:limup);


if flag==1
    for i=2:9
        subplot(8,1,i-1);
        %A = zscore(data{i+1});
        %plot(data{1},data{i+1});
        %plot(data{1},A);
        
        A = data{i+1};
        %A = zscore(A);
        
        Amin = min(A); Amax = max(A);
        A = (A-repmat(Amin,len,1))./repmat(Amax-Amin,len,1);
        
        plot(XX,A);
    end
elseif flag==2
    %        plot(data{1},data{2},data{1},data{3},data{1},data{4},data{1},data{5},data{1},data{6},data{1},data{7},data{1},data{8},data{1},data{9});
    plot(XX,data{3},XX,data{4},XX,data{5},XX,data{6},XX,data{7},XX,data{8},XX,data{9},XX,data{10});
    legend('1','2','3','4','5','6','7','8');
elseif flag==3
    for i=1:8
        plot(XX,data{i+2});
    end
elseif flag ==4
    A = data{3};
        %A = zscore(A);
        
        Amin = min(A); Amax = max(A);
        A = (A-repmat(Amin,len,1))./repmat(Amax-Amin,len,1);
        plot(XX,A);
        
        if flag2
        %line([5834036,5834036],[0.3,0.7],'color',[1 0 0]);
        %line([5842007,5842007],[0.3,0.7],'color',[1 0 0]);
        %line([5834036,5842007],[0.3,0.3],'color',[1 0 0]);
        %line([5834036,5842007],[0.7,0.7],'color',[1 0 0]);
        
        line([6228265,6228265],[0.4,0.6],'color',[1 0 0]);
        line([6231356,6231356],[0.4,0.6],'color',[1 0 0]);
        line([6228265,6231356],[0.4,0.4],'color',[1 0 0]);
        line([6228265,6231356],[0.6,0.6],'color',[1 0 0]);
        
        line([5941334,5941334],[0.15,0.85],'color',[1 0 0]);
        line([5941939,5941939],[0.15,0.85],'color',[1 0 0]);
        line([5941334,5941939],[0.15,0.15],'color',[1 0 0]);
        line([5941334,5941939],[0.85,0.85],'color',[1 0 0]);
        end
        
        
        
end

title(filename);

end