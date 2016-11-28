function [ fdx ] = higerApproximation( k, h )
fdx = 0;
for i = [0:2 * k]
   if(i ~= k)
       fdx = fdx + (sin(1 - (k - i)*h)*(((-1)^(k+i) *factorial(k)^2)/((k - i)*factorial(i)*factorial(2*k-i) * h)));
   end 
end

end

