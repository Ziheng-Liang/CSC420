function correlation = applyCorrelation(template, img)
    [x, y] = size(template);
    [M, N] = size(img);
    offSetX = round(x/2);
    offSetY = round(y/2);
    fullCorrelation = normxcorr2(template,img);
    correlation = fullCorrelation(offSetX:offSetX+M-1, ...
    offSetY:offSetY+N-1);
end