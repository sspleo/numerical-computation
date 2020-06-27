n = 10;
A = rand(n);
L = tril(A) + eye(n);
b = sum(L,2);
xe = ones(n,1);
x = MyLTsolver(L, b);
errorX = max(abs(x-xe))
errorR = max(abs(b-L*x))
