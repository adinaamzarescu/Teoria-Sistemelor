A = [0 0 1; 0 -1 2; 0 1 0];      %SCHIMBA A
B = [0; 1; 0];                   %SCHIMBA B
C = [2 0 1];                     %SCHIMBA C
syms s;
[n, m] = size(A);
phi_s = inv(s * eye(n) - A);
phi_t = ilaplace(phi_s);
pretty(phi_t);
