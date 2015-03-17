function [ compatibility ] = f3( words, tags, i, ycur, yprev  )
% Looks at whether the previous word is 'in' or 'from'


if i-1 == 0 
    compatibility = 0;
    return;
elseif  strcmp(words(i-1),'in') || strcmp(words(i-1),'from')
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

