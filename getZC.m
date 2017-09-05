%{
    Get Zero Crossing
%}

function[ZC]=getZC(data, length, threshold, flag)

ZC = 0;

if flag == 0
    temp = 0;
    for i=1:length
        if data(i) > threshold || data(i) < -threshold
            if data(i)*temp<0
                ZC = ZC + 1;
            end
            temp = data(i);
        end
        
    end
elseif flag == 1
    for i=1:length-1
        if (data(i)*data(i+1) >= threshold) && (abs(data(i)-data(i+1)) >= threshold)
            ZC = ZC + 1;
        end
    end
end

end
