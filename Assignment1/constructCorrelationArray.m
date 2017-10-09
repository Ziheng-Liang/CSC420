function correlationArray = constructCorrelationArray(templates, ...
thermometer)
    [M, N] = size(thermometer);
    correlationArray = zeros(M, N, 30);
    for i = 1:30
        correlationArray(:, :, i) = applyCorrelation(templates{i}, ...
            thermometer);
    end
end