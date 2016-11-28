g = @(x) 1-x^3;
plot(fpi(g, 0.5, 15))
hold on
g = @(x) (1-x)^(1/3);
plot(fpi(g, 0.5, 15))

g = @(x) (1+2*x^3)/(1+3*x^2);
plot(fpi(g, 0.5, 15))