function [ compatibility ] = ff_w_nw_t( words, tags, pos_tags, i, ptag, yprev, ycur, wprev, wcur, wnext )
% Use current word, next word, and current tag

if word(i) == wcur && words(i+1) == wnext && tags(i) == ycur
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

