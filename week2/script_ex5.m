x = [-5:0.5:5];
y = 1./(x.^2+1);

a = divdiff(x,y);
t = [-5:0.005:5];
v = polyvalue(a, x, t);


plot(t, v, 'x', t, 1./(t.^2+1), 'r')
%plot(t, 1./(t.^2+1))
grid
e = abs(1./(t.^2+1) - v);
plot(t,e)
