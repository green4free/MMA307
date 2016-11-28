function [ x] = fpi2(g, x0, iterNr, TOL, stepSize)
for j = 0:iterNr
    y = x0 + j * stepSize;
    x = g(y);
    absError = abs(x - y);
    if(absError < TOL)
        break;
    end
end
end

