function [ compatibility ] = ff_nw_t( words, tags, pos_tags, i, ptag, yprev, ycur, word )
% Use next word and current tag

if words(i+1) == word && tag(i) == ycur
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

