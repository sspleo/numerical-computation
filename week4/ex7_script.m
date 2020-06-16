n = [ 1, 3, 9];
approx = zeros(size(n))

for i = 1:length(n),
    approx(i) = trapezoid('f7', 0.0, 1, n(i));    
end

loglog(n, approx, 'x')
grid on
title('Trapezoidal Approximations change by n')


%(b)
% U(0,0) = (f7(0) + f7(1))/2