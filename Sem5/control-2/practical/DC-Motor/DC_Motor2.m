j = 0.01;
b = 0.1;
k = 0.01;
r = 1;
l = 0.5;
a = [ -b/j k/j;-k/l -r/l];
b = [0;1/l];
c = [1 0];
d = [0];
[num,den]=ss2tf(a,b,c,d);
num = num(3)
kp=100;
numa = kp*num;
dena = den;
[numc,denc]=cloop(numa,dena);
t = 0:0.01:5;
step(numc,denc,t);