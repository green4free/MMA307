function [ polynomial ] = horner_polynomial_calc( x )
%returns the value of the polynomial 6*x^5 + 5*x^4 + 4*x^3 + 3*x^2 + 2*x
%using the horner method.
polynomial = x*(x*(x*(x*(6*x+5)+4)+3)+2);

end

