function main ()
    [templates, dimensions] = readInTemplates();
    thermometer = loadThermometer();
    imshow(thermometer);
    drawnow();
    correlationArray = constructCorrelationArray(templates, thermometer);
    [maxCorr, maxIdx, candX, candY] = findPotentialNum(correlationArray, 0.7);
    finalPruning(correlationArray, maxIdx, candX, candY, dimensions);
    
end