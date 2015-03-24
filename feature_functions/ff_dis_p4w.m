function [ compatibility ] = ff_dis_p4w( words, tags, pos_tags, i, ptag, yprev, ycur, pw, p2w, p3w, p4w )
% Use up to previous 4 words and at least the previous 2 words and the
% current tag

if (i-4) > 0 && (words(i-4) == p4w || words(i-3) == p3w || words(i-2) == p2w || words(i-1) == pw) && tag(i) == ycur
    compatibility = 1;
    return;
elseif (i-3) > 0 && (words(i-3) == p3w || words(i-2) == p2w || words(i-1) == pw) && tag(i) == ycur
    compatibility = 1;
    return;
elseif (i-2) > 0 && (words(i-2) == p2w || words(i-1) == pw) && tag(i) == ycur
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

