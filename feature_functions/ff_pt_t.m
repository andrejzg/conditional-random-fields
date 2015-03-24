function [ compatibility ] = ff_pt_t( words, tags, pos_tags, i, ptag, yprev, ycur, wprev, wcur, wnext )
% Use previous tag and and current tag

if (i-1) > 0 && tag(i-1) == yprev && tag(i) == ycur
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

