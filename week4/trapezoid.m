function v = trapezoid(funItg, a, b, n)
    
    %trapezoid rule
    
    h = (b-a)/n;
    x = [a:h:b];
    v = (feval(funItg,a)+feval(funItg, b))/2 + sum(feval(funItg, x(2:n)));
    v = v *h;       
end

