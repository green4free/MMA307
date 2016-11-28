function fdx = cdd(f, x)
h = 1e-3;
fdx = 4*((f(x-2*h) - f(x+2*h))/(48*h) + (f(x+h) - f(x-h))/(9*h));

end
