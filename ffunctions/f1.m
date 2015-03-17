function [ compatibility ] = f1( ~, tags, i, ycur, yprev )
%# codegen
% first feature function, really this is already a template, u and v could
% be replaced with anything. This feature functions only works on the tags
% and not the underlying sentence

if i-1 == 0 
    compatibility = 0;
    return;
elseif tags(i-1) == yprev && tags(i) == ycur
    compatibility = 1;
    return;
else
    compatibility = 0;
    return;
end

end

