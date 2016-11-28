%g = @(x) x/(-2) + 3/2;
x0 = 0;
iterNr = 40;
stepSize = 0.001;
x = fpi1(g, x0, iterNr,1e-20);
plot(x)
