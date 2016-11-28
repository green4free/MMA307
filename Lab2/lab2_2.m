format long
clear
clc
f = @(x) 12 - 26*x + 20* x^2 - 7 * x^3 - 12 * exp(1)^(x-2) + 14*x*exp(1)^(x-2);
for k = [0.8,1.9]
x = newton(f,k,1e-14,1e-14,100)
fprintf('LEN %d\n', length(x));
for n = 2:length(x)-1
    a(n) = abs(x(n+1) - x(n)) / abs(x(n) - x(n-1));
    b(n) = abs(x(n+1) - x(n)) / abs(x(n) - x(n-1))^2;
    c(n) = abs(x(n) - x(n-1));
   fprintf('Relative error %f\n',a(n));
   fprintf('Relative error^2 %f\n',b(n));
   fprintf('Absolute error %f\n\n', c(n));
end
end