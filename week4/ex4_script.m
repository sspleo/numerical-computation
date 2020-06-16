n = [ 4, 8, 16, 32, 64, 128];
abs_err = zeros(size(n));
I = exp(0) - exp(-0.8);
for i = 1:length(n)
    abs_err(i) = abs(trapezoid('exp_neg', 0.0, 0.8, n(i)) - I);    
end

loglog(n, abs_err, 'x')
grid on
title('Trapezoidal Error change by n')

% commeent 
% As the n value doubles, the error is reduced to a quarter.