function [ compatibility ] = ff_dis_n4w( words, tags, pos_tags, i, ptag, yprev, ycur, nw, n2w, n3w, n4w )
% Use up to previous 4 words and at least the previous 2 words and the
% current tag

if (i+4) > 0 && (words(i+1) == nw || words(i+2) == n2w || words(i+3) == n3w || words(i+4) == n4w) && tag(i) == ycur
    compatibility = 1;
    return;
elseif (i-3) > 0 && (words(i+1) == nw || words(i+2) == n2w || words(i+3) == n3w) && tag(i) == ycur
    compatibility = 1;
    return;
elseif (i-2) > 0 && (words(i+1) == nw || words(i+2) == n2w) && tag(i) == ycur
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

