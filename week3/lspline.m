function ls=lspline(t,y,x)
% lspline computes the linear spline
% Inputs:
% t: vector, contains sorted knots(increasing)
% y: vector, contains the interpolating values at knots
% x: vector, contains points where the lspline shoule be
% computed
% Output:
% ls: vector, contains the values of lspline at points x

m=length(x);
ls=zeros(size(x)); % initialize ls

n=length(t);

for i = 1:m,
    pt = x(i);
    ind = 0;
    for j = n-1:-1:1,
        if (pt - t(j)) >= 0
            ind = j;
            break
        end
    end

    if ind==0
        disp('the point is not inside the spline interval')
        return;
    end
    ls(i) = y(ind) + ((y(ind+1)-y(ind))/(t(ind+1) - t(ind))) * (pt - t(ind));
end
