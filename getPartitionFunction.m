function [ Z ] = getPartitionFunction( words, tags, numTags, w)
%GETPARTITIONFUNCTION gets the the partition function
    % The unormalized probability of all possible tag sequences
        Z = forwardVector(length(words), words, tags, numTags, w, 1);
    
        % The above function call assumes that 1 is the value of the START tag
        Z = Z(numTags);
return;

