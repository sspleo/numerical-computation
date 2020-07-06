d = [-2.011:-0.001:-2.019];
e = ones(8,1);
A = diag(d) + diag(e,1) + diag(e,-1);
b = [-0.994974; 1.57407e-3; -8.96677e-4; -2.71137e-3; -4.07407e-3; -5.11719e-3; -5.92917e-3; -6.57065e-3; -0.507084];
x0 = [0.95:-0.05:0.55]'; %best
%x0 = b./diag(A); %worst
%x0 = ones(size(b)); % okay
[sol, jnit] = jacobi(A, b,x0, 1e-4, 100)

% Jacobi's method works even worse than for any results from 2b
% For a good choice of w, we have the fastest convergence by using SOR.
