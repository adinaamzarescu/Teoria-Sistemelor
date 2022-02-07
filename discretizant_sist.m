syms s;
syms z;
syms h;
x = 1; %trebuie modificat in functie de problema
y = 1; %in principiu nu se modifica
H = 1/(s+x/y);                    % SCHIMBA FUNCTIA H
f = H * 1/s;
[P, N] = poles(f);
poli = [P'; N'];
[m, n] = size(poli);
rez = sym(zeros(1, n));
for i = 1:n
    p = poli(1,i);
    m = poli(2,i);
    F = (s-p)^m * f * (z/(z-exp(s*h)));
    dif = diff(F, m-1);
    lim = subs(dif,s,p);
    rezz = 1/factorial(m-1) * lim;
    rez(i) = rezz;
end
ans = (z-1)/z * sum(rez);
[n, d] = numden(ans);
n = n * exp(-x*h);
n = simplify(n);
d = d * exp(-x*h);
d = simplify(d);
ans = n / d * y;
pretty(ans);
