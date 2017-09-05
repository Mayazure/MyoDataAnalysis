%{
    flag:
    0 = Intergrated EMG
    1 = Mean Absolute Value (MAV)
    2 = Modified Mean Absolute Value 1 (MAV1)
    3 = Modified Mean Absolute Value 2 (MAV2)
%}

function[MAV]=getMAV(data, length, flag)

switch flag
    
    % Intergrated EMG
    case 0
        MAV = sum(abs(data));
        
        % Mean Absolute Value
    case 1
        MAV = sum(abs(data))/length;
        
        % Modified Mean Absolute Value 1
    case 2
        MAV = 0;
        for i=1:length
            if i>= 0.25*length && i<= 0.75*length
                MAV = MAV + abs(data(i));
            else
                MAV = MAV + 0.5*abs(data(i));
            end
        end
        MAV = MAV/length;
        
        % Modified Mean Absolute Value 2
    case 3
        MAV = 0;
        for i=1:length
            if i< 0.25*length
                MAV = MAV + (4*i/length)*abs(data(i));
            elseif i>= 0.25*length && i<= 0.75*length
                MAV = MAV + abs(data(i));
            else
                MAV = MAV + (4*(i-length)/length)*abs(data(i));
            end
        end
        MAV = MAV/length;
    otherwise
        MAV = 0;
end
end