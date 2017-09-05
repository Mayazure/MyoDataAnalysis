%{
    Get Slope Sign Change
%}

function[SSC]=getSSC(data, length, threshold)

SSC = 0;

for i=2:length-1
    if (data(i)-data(i-1))*(data(i)-data(i+1))>threshold
        SSC = SSC + 1;
    end
end

end
