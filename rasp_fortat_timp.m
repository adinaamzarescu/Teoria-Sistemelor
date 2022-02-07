syms s;
yf_op = 1 / (s*(s+1)*(s+3));  % SCHIMBA FUNCTIA
yf_t = ilaplace(yf_op);
pretty(yf_t)