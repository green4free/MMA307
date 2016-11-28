format long
delta = 1e-9;
A = [4, 2;  -2, 8];
B = [4; 2];
P = [0; 0];
m = 30;
gseid(A, B, P, delta, m)