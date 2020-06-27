c1 = [0.2:0.2:1]';
c2 = [0.1:0.1:1]';
c3 = [0.05:0.05:1]';


A1 = vander(c1);
A2 = vander(c2);
A3 = vander(c3);

xsol1 = ones(length(c1),1);
xsol2 = ones(length(c2),1);
xsol3 = ones(length(c3),1);



b1 = A1*xsol1;
b2 = A2*xsol2;
b3 = A3*xsol3;

naiv_G1 = naiv_gauss(A1,b1)
naiv_G2 = naiv_gauss(A2,b2)
naiv_G3 = naiv_gauss(A3,b3)

G1 = A1\b1
G2 = A2\b2
G3 = A3\b3

cond(A1)
cond(A2)
cond(A3)
