function [ x ] = fpi1(g, x0, maxIterations, tolerance)
x(1) = x0;
for j = 1:maxIterations-1
    x(j+1) = g(x(j));
    AbsoluteError = abs(x(j+1) - x(j));
    if (AbsoluteError < tolerance)
        break;
    end
end
end