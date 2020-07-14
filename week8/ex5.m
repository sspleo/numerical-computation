x = [0.0:0.2:1.0];
y = [1.996, 1.244, 0.810, 0.541, 0.375, 0.259];

% normal equation
m = length(x);
S1 = m; S2 = sum(x); S3 = sum(log(1+x));
S4 = x*(x'); S5 = log(1+x)*(x'); S6 = log(1+x)*(log(1+x)');
C = [S1, S2, S3;
    S2, S4, S5;
    S3, S5, S6];
B = [sum(log(y));
    log(y)*(x');
    log(y)*(log(1+x)')];

% coefficient cal
A = C\B;
a0b = A(1); a1b = A(2); a2b = A(3);
a0 = exp(a0b); a1 = a1b; a2 = -a2b;

% least squares aprroximation 'yhat'
t = [0.0:0.05:1.0];
yhat_t = a0*exp(a1.*t)./(1+t).^a2;
plot(t, yhat_t,'b',x,y,'ro')
title('Quasi-linear method for least squares')

% least squares error 
yhat = a0.*exp(a1.*x)./((1+x).^a2);
lse = sum((y-yhat).^2);

