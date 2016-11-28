function fdx = cdd(f, x0)
step = 1e-4;
fdx = (f(x0 + step) - f(x0 - step)) / (2 * step);
end
