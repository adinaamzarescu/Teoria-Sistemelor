A = [1 0 1; 1 0 -1; 0 1 2];         % SCHIMBA A
B = [0 -1; 1 0; 0 1];               % SCHIMBA B
C = [-1 0 1];

Oo = obsv(A, C);
unoo = length(A) - rank(Oo);
if unoo == 0
    disp('observabila');
else
    disp('neobservabila');
end