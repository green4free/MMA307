function main
k = {@fdd, @bdd, @cdd};
for j = [0.1, 0.05, 0.025]
    display(j);
    for l = [1:3]
        display(func2str(k{l}));
        display(k{l}(2, j));
        [a,r] = error(k{l}, 2, j);
        display(a);
        display(r);
    end
end
end


function y = f(x)
y = 2 * exp(1)^(2.5 * x + 1);
end

function prime = fprime(x)
prime = 5 * exp(1)^(2.5 * x + 1);
end

function [absError, relError] = error(func, x, step)
X = fprime(x);
absError = abs(X - func(x, step));
relError = absError / X;
end

function prim = fdd(x, step)
prim = (f(x + step) - f(x)) / step;
end

function prim = bdd(x, step)
prim = (f(x) - f(x - step)) / step;
end

function prim = cdd(x, step)
prim = (f(x + step) - f(x - step)) / (2 * step);
end
