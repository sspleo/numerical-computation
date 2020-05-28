function [res1, res2] = samartquadroots(a, b, c)
% compute the roots of the quadratic polynomial ax^2 + b + c

% the coefficient of x^2 should not be zero
if a == 0
    disp('Error, a = 0');
    r1 = nan;
    r2 = nan;
    return
end

disc = b^2 - 4*a*c;

res1 = (-b + sqrt(disc))/(2*a);

% if -b +-sqrt(disc) is too small, we will lose significant numbers
if (b + sqrt(disc) > 1e-3 | res1 < 1e-3 )
    res2 = (-b - sqrt(disc))/(2*a);
else
    res2 = c/a/res1;

end
