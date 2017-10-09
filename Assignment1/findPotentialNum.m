function [maxCorr, maxIdx, candX, candY] = findPotentialNum( ... 
    correlationArray, T)
    [maxCorr, maxIdx] = max(correlationArray,[],3);
    [candX, candY] = find(maxCorr > T);
end