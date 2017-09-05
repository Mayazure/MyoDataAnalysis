%{
    Get Willison Amplitude
%}

function[WA]=getWA(data, length, threshold)

WA = 0;

for i=1:length-1
    if abs(data(i)-data(i+1)) >= threshold
        WA = WA + 1;
    end
end

end
