function [disparity_row_delayed, en1] = Census_Transform_Row(in_rowL, in_rowR, en)
    persistent rowL1 rowL2 rowL3 rowL4 rowL5 rowL6 rowL7 rowL8 rowL9 rowL10 rowL11;
    persistent rowR1 rowR2 rowR3 rowR4 rowR5 rowR6 rowR7 rowR8 rowR9 rowR10 rowR11;
    disparity_row_delayed = uint8(zeros(1, 640));
    en1 = en;
    
    if(en == 1)
        if(isempty(rowL1))
            rowL1 = in_rowL;
            rowR1 = in_rowR;
        elseif(isempty(rowL2))
            rowL2 = in_rowL;
            rowR2 = in_rowR;
        elseif(isempty(rowL3))
            rowL3 = in_rowL;
            rowR3 = in_rowR;
        elseif(isempty(rowL4))
            rowL4 = in_rowL;
            rowR4 = in_rowR;
        elseif(isempty(rowL5))
            rowL5 = in_rowL;
            rowR5 = in_rowR;
        elseif(isempty(rowL6))
            rowL6 = in_rowL;
            rowR6 = in_rowR;
        elseif(isempty(rowL7))
            rowL7 = in_rowL;
            rowR7 = in_rowR;
        elseif(isempty(rowL8))
            rowL8 = in_rowL;
            rowR8 = in_rowR;
        elseif(isempty(rowL9))
            rowL9 = in_rowL;
            rowR9 = in_rowR;
        elseif(isempty(rowL10))
            rowL10 = in_rowL;
            rowR10 = in_rowR;
        else
            rowL11 = in_rowL;
            rowR11 = in_rowR;

            for i = 85:635
                min_hamming_distance = 122;
                disparity = 0;

                % create a census vector left for i
                census_vector_left = zeros(1, 121);
                count = uint8(1);
                for iter = -5:5
                    if(rowL1(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL2(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL3(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL4(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL5(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL6(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL7(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL8(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL9(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL10(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end
                for iter = -5:5
                    if(rowL11(i + iter) >= rowL6(i))
                        census_vector_left(count) = 1;
                    end
                    count = count + 1;
                end

                for k = 0:79
                    hamming_distance = 0;

                    % create a census vector right for i - k
                    census_vector_right = zeros(1, 121);
                    count = uint8(1);
                    for iter = -5:5
                        if(rowR1(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR2(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR3(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR4(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR5(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR6(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR7(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR8(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR9(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR10(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end
                    for iter = -5:5
                        if(rowR11(i - k + iter) >= rowR6(i - k))
                            census_vector_right(count) = 1;
                        end
                        count = count + 1;
                    end

                    for iter2 = 1:121
                        hamming_distance = hamming_distance + xor(census_vector_left(iter2), census_vector_right(iter2));
                    end
                    if(hamming_distance < min_hamming_distance)
                        min_hamming_distance = hamming_distance;
                        disparity = k;
                    end
                end
                disparity_row_delayed(i) = disparity;
            end

            rowL1 = rowL2;
            rowL2 = rowL3;
            rowL3 = rowL4;
            rowL4 = rowL5;
            rowL5 = rowL6;
            rowL6 = rowL7;
            rowL7 = rowL8;
            rowL8 = rowL9;
            rowL9 = rowL10;
            rowL10 = rowL11;

            rowR1 = rowR2;
            rowR2 = rowR3;
            rowR3 = rowR4;
            rowR4 = rowR5;
            rowR5 = rowR6;
            rowR6 = rowR7;
            rowR7 = rowR8;
            rowR8 = rowR9;
            rowR9 = rowR10;
            rowR10 = rowR11;
        end
    end
end
