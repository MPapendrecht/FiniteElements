xc = [x(elmat(i,1)), x(elmat(i,2))];
h = abs(xc(1) - xc(2));

f_elem = h/2 * func(xc);
