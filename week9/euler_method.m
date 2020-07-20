function [t,xout] = euler_method(f, Tspan, x0, N)    
    % f : right hand side to the equation
    % Tspan : [t0, tfinal]
    % x0 : initial condition
    % N : # of time steps
    t0 = Tspan(1); tfinal = Tspan(2);
    h = (tfinal - t0)/N; t = [t0:h:tfinal];
    l = length(x0); xout = zeros(l, N+1); xout(:,1) = x0;
    for n = 1:N
        xout(:,n+1) = xout(:,n) + h * feval(f,t(n), xout(:,n));
    end
end

