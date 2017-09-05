%{
    Get Waveform Length
%}

function[WL]=getWL(data, length)

    WL = 0;
    for i=1:length-1
        WL = WL + abs(data(i+1)-data(i));
    end

end
