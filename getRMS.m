%{
    Get Root Mean Square
%}

function[RMS]=getRMS(data, length)

    RMS = sqrt(sum(data.^2)/length);

end
