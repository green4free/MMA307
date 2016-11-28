function [ c ] = newtondd( x,y )
p = length(x) -1;
D=zeros(p,p);
d1 = @(i) (y(i+1)-y(i))./(x(i+1)-x(i));
for i = 1:p
    D(i,1) = d1(i);
end
for i = 2:p
    for j = 1:(p+1-i)
        D(j,i) = (D(j+1,i-1)-D(j,i-1))./(x(j+i)-x(j));
    end
end
c=[y(1),D(1,:)]';

end

