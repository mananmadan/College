m=1000;
b=50;
u=500;
A=[0 1;0 -b/m];
B=[0;1/m];
C=[0 1];
D=0;

[num,den]=ss2tf(A,B,C,D);
k=600;
ki=400;
num1=[k,ki];
den1=[1 0];
num2=conv(num,num1);
den2=conv(den,den1);
[numc,denc]=cloop(num2,den2,-1);
t=0:0.1:20;
step(10*numc,denc,t)
axis([0 20 0 10])



    