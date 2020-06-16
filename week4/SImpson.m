function S = Simpson(funItg, a, b, n)
    
    %Simpson's rule
    
    h = (b-a)/2/n;
    xodd = [a+h:2*h:b-h];
    xeven = [a+2*h:2*h:b-2*h];
    S = feval(funItg,a) + feval(funItg,b) + 4*sum(feval(funItg, xodd)) + 2*sum(feval(funItg,xeven));
    S = S * h/3;
end

