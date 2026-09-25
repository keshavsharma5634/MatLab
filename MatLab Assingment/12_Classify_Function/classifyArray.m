function [pos_count, neg_count, zero_count, even_count, odd_count] = classifyArray(arr)
    pos_count = 0;
    neg_count = 0;
    zero_count = 0;
    even_count = 0;
    odd_count = 0;

    for i = 1:length(arr)
        val = arr(i);
        if val > 0
            pos_count = pos_count + 1;
        elseif val < 0
            neg_count = neg_count + 1;
        else
            zero_count = zero_count + 1;
        end
        if mod(val, 1) == 0
            if mod(val, 2) == 0
                even_count = even_count + 1;
            else
                odd_count = odd_count + 1;
            end
        end
    end
end
