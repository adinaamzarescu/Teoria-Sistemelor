function [F] = alg_aloc_monovar(A,B,lambda_d)
%ALG_ALOC_MONOVAR Summary of this function goes here
%   Detailed explanation goes here
[n, ~] = size(B);

R0 = ctrb(A,B);
inv_R0 = inv(R0);

q_t = inv_R0(end, :);

hi = eye(n);
for i = 1:n
    hi = hi * (A - lambda_d(i)*eye(n));
end

f_t = -q_t * hi;
F = f_t';
end

