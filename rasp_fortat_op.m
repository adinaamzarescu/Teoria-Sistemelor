A = [0 1 0; 9 0 0; 1 0 0];      %SCHIMBA A
B = [0; 1; 0];                  %SCHIMBA B
C = [1 0 -3];                   %SCHIMBA C
syms s;
syms t;
u_t = 0*t + 1;
u_s = laplace(u_t);
% NU TREBUIE NEAPARAT SCRIS phi_s, doar A, B si C
% phi_s = [s/(s^2 - 9) 1/(s^2-9) 0; 9/(s^2-9) s/(s^2-9) 0; 1/(s^2-9) 1/(s*(s^2-9)) 1/s];
[n, m] = size(A);
phi_s = inv(s * eye(n) - A);
T_s = C * phi_s * B;
yf_s = simplify(T_s * u_s);
yf_s;
pretty(yf_s);