function [ M ] = getM( i, words, tags, w, numTags )
%getM gets the matrix M
%   Gets a numTags x numTags matrix of weighted feature funtions given a
%   fixed position i.

M = zeros(numTags, numTags);

for ycur = 1:numTags
    for yprev = 1:numTags
        component = w(1) * f1(words, tags, i, ycur, yprev) + w(2) * f2(words, tags, i, ycur, yprev) + w(3) * f3(words, tags, i, ycur, yprev);
        M(ycur,yprev) = exp(component);
    end
end

return;

end

