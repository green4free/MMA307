for j = [1:5]
   x(j)=log(abs((cos(1)) - cdd(@cos,10^(-j))));
   y(j)=log(10^(-j));
end

hold on
for k = [1:2]
for j = [1:5]
   x(j)=log(abs((cos(1)) - higerApproximation(k,10^(-j))));
   y(j)=log(10^(-j));
end
plot(y,x)
end