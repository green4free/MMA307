u(1) = 0.5;
for j = [2:16]
   u(j) = exp(1)^(-1 * u(j-1)); 
end
plot(u)