x = [-5:0.5:5];
y = 1./(x.^2+1);

a = divdiff(x,y);
t = [-5:0.25:5];
v = polyvalue(a, x, t);


%plot(t, v, 'x', t, 1./(t.^2+1), 'r')
%plot(t, 1./(t.^2+1))
%grid
e = abs(1./(t.^2+1) - v);
plot(t,e)
grid

intv = 0:20;
x_c1 = 5*cos(intv*pi/20);
y_c1 = 1./(x_c1.^2+1);
a_c1 = divdiff(x_c1,y_c1);
t = [-5:0.25:5];
v_c1 = polyvalue(a_c1, x_c1, t);
e_c1 = abs(1./(t.^2+1) - v_c1);


x_c2 = 5*cos((2*intv+1)*pi/42);
y_c2 = 1./(x_c2.^2+1);
a_c2 = divdiff(x_c2, y_c2);
v_c2 = polyvalue(a_c2, x_c2, t);
e_c2 = abs(1./(t.^2+1) - v_c2);

plot(t, v_c1, 'x', t, 1./(t.^2+1), 'r')
grid

plot(t,v_c2, 'x', t, 1./(t.^2+1), 'r')
grid
