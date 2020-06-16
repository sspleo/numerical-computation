function R = romberg(f, a, b, n)
    
    %Romberg's Method
    R = zeros(n);
    h = b-a;
    R(1,1) = [feval(f, a)+feval(f,b)] * h / 2;
    for i =1:n-1
        R(i+1, 1) = R(i,1)/2;
        h = h/2;
        k = [1:2^(i-1)];
        R(i+1, 1) = R(i+1, 1) + h*sum(feval(f, a+(2.*k-1).*h));
    end
    
    for j = 2:n
        for i = j:n
            R(i,j) = R(i, j-1) + 1/(4^(j-1)-1)*(R(i,j-1) - R(i-1,j-1));
    end    
end

