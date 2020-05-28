function v = polyvalue(a,x,t)
%compute the value of an interpolating polynomial
    m = length(x);
    c = diag(a);
    v = c(m);
    for i = m-1:-1:1
        v = v*(t - x(i))+ c(i);
    end
end
