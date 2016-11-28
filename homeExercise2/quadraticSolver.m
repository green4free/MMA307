function [ x1, x2 ] = quadraticSolver( a, b, c, tolerance)
%The function takes values a, b, c for equations of 
%the form 0 = a*x^2 + b*x + c. And a tolerance level for the special case
%|b|≈ sqrt(b^2 - 4*a*c)
%And it returns the 2 roots of x.
if (abs(abs(b) - sqrt(b^2 - 4*a*c)) < tolerance)
    if (b < 0)
        x1 = (-1*b+sqrt(b^2 - 4*a*c))/(2*a);
        x2 = (-2*c)/(b-sqrt(b^2 - 4*a*c));
    else
        x2 = (-1*b-sqrt(b^2 - 4*a*c))/(2*a);
        x1 = (-2*c)/(b+sqrt(b^2 - 4*a*c));
    end
else
    x1 = (-1*b+sqrt(b^2 - 4*a*c))/(2*a);
    x2 = (-1*b-sqrt(b^2 - 4*a*c))/(2*a);
end

end

