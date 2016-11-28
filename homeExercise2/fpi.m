function [ x ] = fpi(g, x0, maxIterations)
x(1) = x0;
for j = 1:maxIterations-1
    x(j+1) = g(x(j));
end
end