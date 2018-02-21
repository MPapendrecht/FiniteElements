S = zeros(n,n);
for i = 1:(n-1)
    GenerateElementMatrix
    for j = 1:2
        for k = 1:2
            S(elmat(i,j),elmat(i,k)) = S_elem(j,k) + S(elmat(i,j),elmat(i,k));
        end
    end
end