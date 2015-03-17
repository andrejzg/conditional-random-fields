function [ compatibility ] = f2( words, tags, i, ycur, yprev  )
% Is the current word capitalised?


if i-1 == 0 
    compatibility = 0;
    return;
elseif ~cellfun('isempty', regexp(words(i), '[A-Z]', 'once'))
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

