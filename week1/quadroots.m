function [r1, r2] = quadroots(a, b, c)
% compute the roots of the quadratic polynomial ax^2 + b + c

% the coefficient of x^2 should not be zero
if a == 0
    disp('Error, a = 0');
    r1 = nan;
    r2 = nan;
    return
end

disc = b^2 - 4*a*c;

r1 = (-b + sqrt(disc))/(2*a);
r2 = (-b - sqrt(disc))/(2*a);

end
