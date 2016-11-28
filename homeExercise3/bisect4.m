function [est,err,yc] = bisect4(f,a,b,TOL)
% Compute the root of equation f(x) = 0 using the
% bisection method
% Inputs:
%        f - function handle, example f=@(x) x^3+x-1
%        a, b - initial guesses that bracket the root
%        TOL - user-specified tolerance
%  Outputs:
%        est - root of f(x) = 0
%        err - error estimate for est
%        yc - f(c)
ya = f(a);
yb = f(b);
if sign(ya)*sign(yb) >= 0 % terminate the function
error('Bad initial guesses!')
end
maxIter = 1+round((log(b-a)-log(TOL))/log(2));
% see Mathews page 56, eqn. 15
k = 1; % iteration counter
while  ((b-a)/2>TOL) && (k<maxIter)
err(k) = abs(b-a);
est(k) = (a+b)/2;
yc(k) = f(est(k));
if yc(k)==0 % c is solution, done!
break;
end
if sign(yb) * sign(yc(k))>0
b = est(k);
yb = yc(k);
else
a = est(k);
ya = yc(k);
end
k = k+1;
if (b-a)/2 < TOL % error is small enough, done!
break;
end
end
