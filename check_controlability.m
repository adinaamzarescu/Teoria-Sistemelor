A = [1 0 1; 1 0 -1; 0 1 2];         % SCHIMBA A
B = [0 -1; 1 0; 0 1];               % SCHIMBA B
C = [-1 0 1];

Co = ctrb(A,B);
unco = length(A) - rank(Co);
if unco == 0
    disp('controlabila');
else
    disp('necontrolabila');
end
