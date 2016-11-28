function [ p ] = HornerMethod2( xi, c, x )
l = length(xi);
p = c(l);
for i = l-1:-1:1
    p = c(i) + (x-xi(i))*p;
end