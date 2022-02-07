A = [0 0 0; 1 0 -1; 0 1 2];
B = [0 -1; 1 0; 0 1];
C = [0 0 1];

[n, m] = size(B);
g = [1; 1];
F0 = zeros([m n]);
A0 = A + B * F0;
b0 = B * g;

R0 = ctrb(A0,b0);
inv_R0 = inv(R0);
qt = inv_R0(end, :)

