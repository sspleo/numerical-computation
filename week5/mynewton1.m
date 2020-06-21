function r = mynewton(f, df, x0, tol, nmax)    
    x = x0;
    n = 0;
    dx = feval(f,x)/feval(df,x);
    
    disp(sprintf('for x0 = %f', x0));
    % as the sample code in the lecture notes
    % ((error check) and (convergence check)) and (max iteration))
    while ( (abs(feval(f,x))>tol) && (abs(dx)>tol) && (n<nmax))    
        n = n+1;
        dx = feval(f,x)/feval(df,x);
        x = x-dx;
        
        disp(sprintf('iteration n = %d, x_%d = %.15f', n, n, x));
    end
    r = x;
    disp(sprintf('error = %.15f', abs(feval(f,x))))
    disp(sprintf('dx = %.15f', dx))
end

