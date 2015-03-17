w = [1 1 1];
lambda = 0.01;
numTest = 10;

%for test=0:numTest
maxiter = 20;

disp(maxiter)

FVs = zeros(length(words)-1, numTags);
BVs = FVs;
BigM = createBigM(28, 5);

for i = 2:length(words)
        FVs(i,:) = log(forwardVector(i-1, words, tags, numTags, w, getTag('START')));
        BVs(i,:) = backwardVector(i, words, tags, numTags, w, getTag('END'));
        BigM{i} = getM(i, words, tags, w, numTags);
end

% Compute 

for iter = 1:maxiter
Z = getPartitionFunction(words, tags, numTags, w);

for j = 1:length(w)
    
    E = 0;
    
    for i = 2:length(words)
        for yprev = 1:numTags
            for ycur = 1:numTags
                temp = FVs(i,yprev) * BigM{i}(ycur,yprev) * BVs(i, ycur);
                if j == 1
                    E = E + (f1(words, tags, i, ycur, yprev) * temp);
                elseif j == 2
                    E = E + (f2(words, tags, i, ycur, yprev) * temp);
                else % j == 3
                    E = E + (f3(words, tags, i, ycur, yprev) * temp);
                end
            end
        end   
    end
     w(j) = w(j) + lambda * (sum(X(:,j)) - (E/Z));
end
end

disp(w)

%end

