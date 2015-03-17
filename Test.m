% THIS IS HOW WE 'PROFILE' CODE TO SEE HOW IT RUNS AND WHERE IT IS SLOW

% profile on
% forwardVector( 16, words, tags, numTags, w, getTag('START'))
% profile viewer
% p = profile('info');
% profsave(p,'profile_results')


% TESTING g MATRIX COMPUTATIONS

% F = getM(2, words, tags, [1 1 1], numTags);
% for i=3:28
%    disp(i)
%    F = F * getM(i, words, tags, [1 1 1], numTags);
% end
% 
% disp(F)


% THIS IS HOW GET Z - THE PARTITION FUNCTION

%   fv = forwardVector(10, words, tags, numTags, [1 1 1], getTag('START'));
%   bv = backwardVector(10, words, tags, numTags, [1 1 1], getTag('END'));
%    
%   disp(fv)
%   disp(bv)
%   res = fv * bv;
%   disp(res)


% ARE WE DEALING WITH ACTUAL PROBABILITIES? 

% fv = forwardVector(10, words, tags, numTags, [1 1 1], getTag('START'));
% bv = backwardVector(10, words, tags, numTags, [1 1 1], getTag('END'));
% 
% 
% fv(1)*bv(1)/res+fv(2)*bv(2)/res+fv(3)*bv(3)/res+fv(4)*bv(4)/res*fv(5)*bv(5)/res
% fv(1)*bv(1)/res+fv(2)*bv(2)/res+fv(3)*bv(3)/res+fv(4)*bv(4)/res+fv(5)*bv(5)/res


% HERE WE COMPUTE P(Y_{i-1} = u, Y_{i} = v | x, w)

% Z = forwardVector(28, words, tags, numTags, [1 1 1], getTag('START'));
% 
% fv = forwardVector(14, words, tags, numTags, [1 1 1], getTag('START'));
% bv = backwardVector(15, words, tags, numTags, [1 1 1], getTag('END'));
% M = getM(15, words, tags, [1 1 1], numTags);
% 
% res = ...
% ( ...
% fv(getTag('O')) * ...
% M(getTag('LOCATION'), getTag('O')) * ... 
% bv(getTag('LOCATION')) ...
% ) / Z(getTag('END'));
% 
% disp(res)

% Z = Z(getTag('END'));
% res = 0;
% 
% for yprev=1:numTags
%     for ycur=1:numTags
%         res = res + (fv(yprev)*M(ycur,yprev)*bv(ycur));
%     end
% end
% 
% disp(res/Z)
% WE COMPUTER THE EXPECTED VALUE 

% 
% tic()
% find(ismember(words(5),'from'))
% toc()
% 
% tic()
% regexp(words(5), 'from', 'once')
% toc()
% 
% tic()
% strcmp(words(5),'from')
% toc()

tic()
for i = 2:length(words)
forwardVector(i-1, words, tags, numTags, w, getTag('START'));
end
toc()