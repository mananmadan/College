b = 50;
m = 1000;
A = [0,1;0,-b/m];
B = [0;1/m];
C = [0 1];
D = [0];
[num,den] = ss2tf(A,B,C,D);
num = [num(1),num(2)];
den = [den(1),den(2)];
k = 600
[numc,denc] = cloop(k*num,den,-1);
bode(k*num,den)
figure
t = 0:0.1:100;
step(10*numc,denc,t)
axis([0 20 0 10])
