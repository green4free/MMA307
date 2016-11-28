function [T,Y]=heun(f,n,a,b,y0)
%Input - f is the function entered as functionhandle
%- a and b are the left and right endpoints
%- y0 is the initial condition y(a)
%- n is the number of steps
%Output - H=[T’Y’] where T is the vector of abscissas and
%Y is the vector of ordinates
h=(b-a)/n;
T=zeros(1,n+1);
Y=zeros(1,n+1);
T=a:h:b;
Y(1)=y0;
for j=1:n
k1=f(T(j),Y(j));
k2=f(T(j+1),Y(j)+h*k1);
Y(j+1)=Y(j)+(h/2)*(k1+k2);
end
end