function [ result ] = simpson( f, a, b, n )
%SIMPSON Summary of this function goes here
%   Detailed explanation goes here
result = 0;
N = (b-a)/n;
for i = a:N:b - N
    j = i + N;
    result = result + (j-i)/6 * (f(i) + 4 * f((i+j)/2) + f(j));
end
end

