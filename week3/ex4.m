pts = readPoints('mt_everest.png', 30)
t = pts(1, :);
y = max(pts(2,:))- pts(2,:);
z = cspline(t, y);
x = min(t):10:max(t);
S = cspline_eval(t,y,z,x);

plot(t, y, 'o', x, S, 'b')