function [ bv ] = backwardVector( i, words, tags, numTags, weights, endTag)
% backward vector assumes g(u,v) = 0 if u,v not in dataset

if i==length(tags)
   bv = zeros(1, numTags);
   bv(endTag) = 1;
   bv = bv';
   return;
end

bv = getM(i+1, words, tags, weights, numTags) * backwardVector(i+1, words, tags, numTags, weights, endTag);