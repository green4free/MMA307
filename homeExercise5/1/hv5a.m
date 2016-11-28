format long
for k = [3,7,11]
A = AGen(k);
B = BGen(k);
x = uptrbk(A,B);
display(x);
display(mean(x));
end