S_elem = zeros(2,2);
h = abs(x(elmat(i,2)) - x(elmat(i,1)));
for k = 1:2
    for l = 1:2
        S_elem(k,l) = 1/h * D*(-1)^(k-l) + h*lambda*(1+k==l)/6;
    end
end

