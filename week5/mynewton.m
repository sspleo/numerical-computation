function r = mynewton(f, df, x0, tol, nmax)    
    x = x0;
    n = 0;
    dx = feval(f,x)/feval(df,x);
    
    disp(sprintf('for x0 = %f', x0));
    while ( (abs(feval(f,x))>tol) && (n<nmax))    
        n = n+1;
        dx = feval(f,x)/feval(df,x);
        x = x-dx;
        
        disp(sprintf('iteration n = %d, x_%d = %.15f', n, n, x));
    end
    r = x;
    disp(sprintf('error = %.15f', abs(feval(f,x))))
    disp(sprintf('dx = %.15f', dx))
end

