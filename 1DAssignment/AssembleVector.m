f = zeros(n,1);
for i = 1:(n-1)
    GenerateElementVector;
    for j = 1:2
        f(elmat(i,j)) = f_elem(j) + f(elmat(i,j));
    end
end