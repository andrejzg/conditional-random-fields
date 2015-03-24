function [ compatibility ] = ff_post_t( words, tags, pos_tags, i, ptag, yprev, ycur, word )
% Use current tag and current pos tag as features

if pos_tags(i) == ptag && tags(i) == ycur
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

