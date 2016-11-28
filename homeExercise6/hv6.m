f = @(x) exp(1)^(-1*x^2);
for i = [2,4,8]
    simpson(f,1,2,i)
end

f = @(x) sqrt(1 + (3*x^2)^2);

simpson(f,0,1,10)

hold on
grid on
f = @(t,y) -1*t*y;
[t1,y1] = heun(f, 20, 0, 3, 1);
[t2,y2] = heun(f, 40, 0, 3, 1);
plot(t1,y1);
plot(t2,y2);
ezplot(@(t) exp((-1 * t^2)/2));