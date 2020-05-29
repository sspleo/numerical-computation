function [Num_der, Err] = NumDerErr_tan(h)

%% Derivative approximation at x = 1
x = 1.0;

%% Numerical derivative
Num_der = (-3*tan(x)+4*tan(x+h)-tan(x+2*h))/h/2;

%% Real derivative 
Real_der = 1/cos(x).^2;

%% Error 
Err = abs(Num_der-Real_der);

end 