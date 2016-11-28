x = [4;5;6;7;8];
xi = 0:0.05:10;
f =@(x) sqrt(x);
y = f(x);
c = newtondd(x,y);
exact = sqrt(4.5);
i = 2;
while (i <= 5)
    P(i-1) = HornerMethod2(x(1:i),c(1:i),4.5);
    error(i-1) = abs(exact-P(i-1));
    i = i+1;
end
scatter(x,y,'b');
hold on;
grid on;
b = [4.5,4.5,4.5,4.5];
scatter(b,P,'r')
plot(xi, f(xi));
hold off;
display(P);
display(error);