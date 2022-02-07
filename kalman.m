A = [0 0 0; 1 0 -1; 0 1 2];
B = [0 -1; 1 0; 0 1];
C = [0 0 1];
lambda_e = [0 0 0];

[n3, m3] = size(C);
if m3 > 1
    L = alg_aloc_multivar(A', C', lambda_e);
else
    L = alg_aloc_monovar(A', C', lambda_e);
end
L = L';

J = A + L*C
K = -L
H = B;
