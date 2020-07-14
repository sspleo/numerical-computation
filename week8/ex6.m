x = [0.0:0.1:1.0];
y = [0.7829, 0.8052, 0.5753, 0.5201, 0.3783, 0.2923, 0.1695, 0.0842, 0.0415, 0.009, 0];

ord = [1,2,4,8];
% initialization polynomial approximation values and least squares errors.
pvs = zeros(length(ord), length(x)); % 4-by-11 zero matrix
lse = zeros(length(ord), 1); % 4-by-1 zero matrix

for i = 1:length(ord)
    pf = polyfit(x, y, i);
    pvs(i,:) = polyval(pf, x);
    lse(i,:) = sum((pvs(i,:)-y).^2);
end


% plot each polynomial
t = [0.0:0.05:1];
pvs_t = zeros(length(ord), length(t));
pcolor = ['r', 'g', 'b', 'm'];
for i = 1:length(ord)
    pf = polyfit(x, y, i);
    pvs_t(i,:) = polyval(pf, t);    
    plot(x, y,'ro', t, pvs_t(i,:), pcolor(i));
    title('Polynomial Regression'), pause
end

% plot all polynomials
plot(x, y, 'ro', ...
    t, pvs_t(1,:), pcolor(1), ...
    t, pvs_t(2,:), pcolor(2), ...
    t, pvs_t(3,:), pcolor(3), ...
    t, pvs_t(4,:), pcolor(4));
title('Regressions')
