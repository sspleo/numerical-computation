% (b)
format short e
R1 = romberg('sin', 0.0, pi, 6);
R2 = romberg('sqrt', 0.0, 1, 6);

err1 = abs(diag(R1) - 2)
err2 = abs(diag(R2) - 2/3)

% (c)
% Romberg's method is based on the fact that the function has a bounded n-th
% derivative to use the Euler MacLaurin's formular. However, sqrt(x) does
% not have a bounded derivative at x = 0.

% (d)
quad('sin', 0.0, pi, 1e-9)
quadl('sin', 0.0, pi, 1e-9)
quad('sqrt', 0.0, 1, 1e-9)
quadl('sqrt', 0.0, 1, 1e-9)
