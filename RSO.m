% REALIZARE STANDARD OBSERVABILA
% MERGE DOAR PT H, DACA SE DA T(O MATRICE DE H-URI) NU MAI MERGE
syms s;
% H = (2s + 1) / (s^3 + 5*s^2 - 1);
b = [0 0 2 1];      % SCHIMBA COEF. NUMARATORULUI
a = [1 5 0 -1];     % SCHIMBA COEF. NUMITORULUI
[A, B, C, D] = tf2ss(b, a);
sys = ss(A,B,C,D);
csys = canon(sys, 'companion');
A = flipud(fliplr(sys.A'))
B = flip(sys.C')
C = flip(sys.B')