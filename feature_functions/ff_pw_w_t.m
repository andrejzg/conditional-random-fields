function [ compatibility ] = ff_pw_w_t( words, tags, pos_tags, i, ptag, yprev, ycur, wprev, wcur )
% Use previous word, current word and current tag

if (i-1) > 0 && word(i-1) == wprev && words(i) == wcur && tags(i) == ycur
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

