function [x,nit]=sor(A,b,x0,w,d,tol,nmax)
    % SOR : solve linear system with SOR iteration 
    % Usage: [x,nit]=sor(A,b,x0,omega,d,tol,nmax) 
    % Inputs:
    %       A : an n x n-matrix, 
    %       b : the rhs vector, with length n 
    %       x0 : the start vector for the iteration
    %       tol: error tolerance 
    %       w: relaxation parameter, (1 < w < 2), 
    %       d : band width of A.
    % Outputs:
    %       x : the solution vector
    %       nit: number of iterations
    
    n = length(b);
    x = x0;
    err = norm(A*x-b, 2); %2-norm
    nit = 0;
    while ((err > tol) & (nit < nmax))
        nit = nit+1;
        for i = 1:n
            sum = b(i);
            % we only care i-d <= j <= i+d
            for j = max(i-d, 1) : i-1
                sum = sum - A(i,j) * x(j);              
            end
            for j = i+1 : min(i+d, n)
                sum = sum - A(i,j) * x(j);
            end
            x(i) = (1-w)*x(i) + w/A(i,i)*sum;
        end
        err= norm(A*x-b, 2);        
    end