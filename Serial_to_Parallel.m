function [row, en] = Serial_to_Parallel(pixel)
    persistent i;
    persistent r;
    if(isempty(i))
        i = 1;
    end
    if(isempty(r))
        r = uint8(zeros(1, 640));
    end
    row = uint8(zeros(1, 640));
    en = uint8(0);
    
    r(i) = pixel;
    i = i + 1;
    
    if(i == 641)
        row = r;
        en = uint8(1);
        i = 0;
    end
end
