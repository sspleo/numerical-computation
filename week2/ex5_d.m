h = 0.1 * 2.^(0:-1:-25);
app = (4*tan(1.0+h)-3*tan(1.0)-tan(1.0+2*h))./(2*h);
err = app - 1./cos(1.0)^2;

loglog(h, abs(err))
grid
xlabel('h')
ylabel('error')
