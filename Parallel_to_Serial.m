function [pixel, en2] = Parallel_to_Serial(row, en)
    persistent i;
    persistent en1;
    persistent r;
    
    if(isempty(i))
        i = 1;
    end
    if(isempty(en1))
        en1 = uint8(0);
    end
    en2 = en1;
    if(isempty(r))
        r = uint8(zeros(1, 640));
    end
    pixel = uint8(0);
    
    if(en == 1)
        en1 = uint8(1);
        r = row;
    end
    
    if(en1 == 1)
        pixel = r(i);
        i = i + 1;
    end
    
    if(i == 641)
        en1 = uint8(0);
        i = 0;
    end
end
