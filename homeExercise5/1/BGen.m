function [ B ] = BGen( N )
B = zeros(N,1);
B(1,1) = N;
for i = [2.0:N]
    B(i,1) = (i ^ N - 1)/(i - 1);
end
end

