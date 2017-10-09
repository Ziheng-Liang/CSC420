function finalPruning(ca, maxIdx, candX, candY, ...
dimensions)
    [M, N] = size(candX);
    for i = 1:M
        templateIndex = maxIdx(candX(i), candY(i));
        thisCorr = ca(:,:, templateIndex);
        if isLocalMaximum(thisCorr, candX(i), candY(i))
            drawAndLabelBox(candY(i), candX(i), templateIndex, dimensions);
            drawnow();
        end
    end
end