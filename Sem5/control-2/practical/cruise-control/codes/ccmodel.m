'Name : Manan'
'Roll No ; 2018UIC3087'
m = 1000;
b = 50;
u = 500;
A = [0 1;0 -b/m];
B = [0;1/m];
C = [0 1];
D =  [0];
step(A,B*u,C,D)
[num,den] = ss2tf(A, B, C, D);
kp = 800;
ki = 40;
num1 = [kp,ki];
den1 = [1 0];
num2 = conv(num,num1)
den2 = conv(den,den1)
[numc,denc] = cloop(num2,den2,-1);
t = 0:0.1:20;
step(10*numc,denc,t)
axis([0 20 0 10])