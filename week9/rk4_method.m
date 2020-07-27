function [t,x] = rk4_method(f,Tspan,x0,N)
    % solve a system of ODE with RK4 
    % f : right hand side of the equation 
    % Tspan : [t0,tfinal]
    % x0 : initial condition
    % N : # of time steps

    t0 = Tspan(1);
    s = length(x0);
    tfinal = Tspan(2);
    h = (tfinal-t0)/N;
    x = zeros(s,N+1);
    x(:,1) = x0;
    t = [t0:h:tfinal];
    for n = 1:N
        k1 = feval(f,t(n),x(:,n));
        k2 = feval(f,t(n)+0.5*h,x(:,n)+0.5*h*k1);
        k3 = feval(f,t(n)+0.5*h,x(:,n)+0.5*h*k2);
        k4 = feval(f,t(n)+h,x(:,n)+h*k3);
        x(:,n+1) = x(:,n) + h/6*(k1+2*(k2+k3)+k4);
    end 
endㅈ