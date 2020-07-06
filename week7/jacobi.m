function [x, nit] =jacobi(A,b,x0, tol,nmax)
    
    L = tril(A,-1);
    U = triu(A,1);
    D = diag(diag(A));
    
    x = x0;
    err = norm(A*x-b, 2);    
    nit = 0;
    while ((err > tol) & (nit < nmax))
        nit = nit +1;
        x = inv(D) * (b - (L+U)*x);        
        err = norm(A*x-b, 2);
    end