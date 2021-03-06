function [x] = newton(f,x0,tol1,tol2,iterNr)
% The function newton.m solves a nonlinear
% equation f(x) = 0 using the Newton-Raphson method
% Inputs:
%      f - function handle, e.g. f = @(x) exp(-x)
%      x0 - initial guess
%      tol1 - tolerance for x(k)
%      tol2 - tolerance for the function values y
%      iterNr - maximum number of iterations
% Output:
%      x - sequence of root estimates
x(1)=x0;
for k=2:iterNr
x(k)=x(k-1)-f(x(k-1))/cdd(f,x(k-1));
err=abs(x(k)-x(k-1));
y=f(x(k));
if (err<tol1)||(abs(y)<tol2)
break;
end
end
end
