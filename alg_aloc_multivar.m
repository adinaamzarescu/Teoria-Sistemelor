function [F] = alg_aloc_multivar(A, B, lambda_d)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[n, m] = size(B);
while true
    disp("x")
    g = rand([m 1]);
%     g = g + 1;
    F0 = rand([m n]);
    A0 = A + B * F0;
    b0 = B * g;
    if rank(ctrb(A0, b0)) == n
        break;
    end
end

R0 = ctrb(A0, b0);
inv_R0 = inv(R0);
q_t = inv_R0(end, :);

hi = eye(n);
for i = 1:n
    hi = hi * (A0 - lambda_d(i)* eye(n));
end

f_t = -q_t * hi;

F = F0 + g * f_t;
end

