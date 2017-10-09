function isMax = isLocalMaximum(thisCorr, x, y)
    [M, N, L] = size(thisCorr);
    currentValue = thisCorr(x, y, 1);
    if x > 1 && currentValue < thisCorr(x-1, y, 1)
        isMax = 0;
        return
    end
    if y > 1 && currentValue < thisCorr(x, y-1, 1)
        isMax = 0;
        return
    end
    if x < M && currentValue < thisCorr(x+1, y, 1)
        isMax = 0;
        return
    end
    if y > N && currentValue < thisCorr(x, y+1, 1)
        isMax = 0;
        return
    end
    if x > 1 && y > 1 && currentValue < thisCorr(x-1, y-1, 1)
        isMax = 0;
        return
    end
    if x > 1 && y < N && currentValue < thisCorr(x-1, y+1, 1)
        isMax = 0;
        return
    end
    if x < M && y > 1 && currentValue < thisCorr(x+1, y-1, 1)
        isMax = 0;
        return
    end
    if x < M && y < N && currentValue < thisCorr(x+1, y+1, 1)
        isMax = 0;
        return
    end
    isMax = 1;
    return
end