function r = mysecant(f,x0,x1, tol, nmax)    
    xn_prev = x0;
    xn = x1;
    n = 0;
    df_x = (feval(f,xn)-feval(f,xn_prev))/(xn - xn_prev);
    dx = feval(f,xn)/df_x;
        
    disp(sprintf('for x0 = %f, x1 = %f', xn_prev, xn));
    while ( (abs(feval(f,xn))>tol)  && (n<nmax))    
        n = n+1;
        temp = xn;
        
        df_x = (feval(f,xn)-feval(f,xn_prev))/(xn - xn_prev);
        dx = feval(f,xn)/df_x;
        
        xn = xn - dx;
        xn_prev = temp;
        disp(sprintf('iteration n = %d, x_%d = %.15f', n, n+1, xn));        
        
    end
    r = xn;
    disp(sprintf('error = %.15f', abs(feval(f,xn))))
    disp(sprintf('dx = %.15f', dx))
    
end

