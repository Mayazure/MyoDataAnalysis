%{
    Get Variance of EMG
%}

function[VAR]=getVariance(data, length)

    VAR = sum(data.^2)/(length-1);

end
