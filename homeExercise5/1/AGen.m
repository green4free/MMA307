function [ A ] = AGen( N )
A = zeros(N,N);
for j = [1:N]
    for i = [1:N]
        A(i,j) = i ^ (j - 1.0);
    end
end
end

