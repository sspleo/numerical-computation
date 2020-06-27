function s = MyLTsolver(L,b)
    % inputs : L -- a lower triangular matrix
    %        : b -- the load vector
    % output : s -- solution for Ls = b
    n = length(b);
    s = zeros(n,1);
    s(1) = b(1)/L(1,1);
    for i=2:n
        sum = b(i);
        for j=1:i-1
            sum = sum-L(i,j)*s(j);
        end
        s(i) = sum/L(i,i);
    end
end


