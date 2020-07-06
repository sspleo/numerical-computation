d = [-2.011:-0.001:-2.019];
e = ones(8,1);
A = diag(d) + diag(e,1) + diag(e,-1);
b = [-0.994974; 1.57407e-3; -8.96677e-4; -2.71137e-3; -4.07407e-3; -5.11719e-3; -5.92917e-3; -6.57065e-3; -0.507084];
x0 = [0.95:-0.05:0.55]';

w = [1.0:0.05:1.9];
nits = zeros(size(w));
for i = 1:length(w)
    %fprintf('for w = %g', w(i))
    [sol, nits(i)] = sor(A,b,x0,w(i),1,1e-4,100);
end    

plot(w,nits), grid;
xlabel('w');
ylabel('Number of iterations');
title(sprintf('SOR, tol = 1e-4'));


[m, I] = min(nits);
fprintf('for w = %g, we have the fastest converence of nit %g', w(I), nits(I))

