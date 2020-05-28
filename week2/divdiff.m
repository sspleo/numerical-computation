function a = divdiff(x, y)
    % input : x, y: the data set to be interpolated
    % output : a: table for Newton's divided differences.
    
    m = length(x);
    a = zeros(m);
    % intput y values into the first column
    for i = 1:m
        a(i,1) = y(i);
    end
    
    % compute the rest
    for j=2:m
        for i=j:m
            a(i,j) = (a(i,j-1)-a(i-1,j-1))/(x(i)-x(i-j+1));
        end
    end
end