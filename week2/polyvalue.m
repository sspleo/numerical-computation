function v = polyvalue(a,x,t)
    m = length(x);

    % coefficients of the interpolating polynomial
    c = diag(a);
    
    %compute the Newton's polynomial 
    v = c(m);
    for i = m-1:-1:1
        v = v.*(t - x(i))+ c(i);
    end
end