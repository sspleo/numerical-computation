A4 = [5, 4, -2; -2, 8, -3; 1, 1, -7];
b4 = [2;6;5];
x0 = ones(3,1);


[sol4, nit4] = jacobi(A4,b4,x0, 1e-4, 100)
[sol4_1, nits4_1] = sor(A4, b4, x0, 1, length(b4), 1e-4, 100)



%(If we may use Matlab, we can check if the iterations converge.
% Indeed, Jacobi's method converges with 14 iterations and SOR method converges with 9 iterations.)
