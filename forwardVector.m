function [ fv ] = forwardVector( i, words, tags, numTags, weights, startTag)
% forward vector assumes g(u,v) = 0 if u,v not in dataset

if i==1
   fv = zeros(1, numTags);
   fv(startTag) = 1;
   %disp(i)
   return;
end


fv = forwardVector(i-1, words, tags, numTags, weights, startTag) * getM(i, words, tags, weights, numTags);

%disp(i)


%fv(5) == bv(2)