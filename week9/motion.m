function res = motion(t,y)
    % y = [y(1) = y1(0);
    %      y(2) = y2(0);
    %      y(3) = y1'(0);
    %      y(4) = y2'(0)]
    % variable t is needed for the function 'ode45'
    mu = 0.012277471;
    nu = 1 - mu;
    dE = ((y(1)+mu)^2 + y(2)^2)^0.5;
    dM = ((y(1)-nu)^2 + y(2)^2)^0.5;
    res = [y(3);
        y(4);
        y(1) + 2*y(4) - nu*(y(1)+mu)/(dE^3) - mu*(y(1) - nu)/(dM^3);
        y(2) - 2*y(3) - nu*y(2)/(dE^3) - mu*y(2)/(dM^3)
        ];
end
