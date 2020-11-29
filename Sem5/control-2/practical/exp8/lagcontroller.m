j=0.01;
b=0.1;
k=0.01;
r=1;
l=0.5;
a= [-b/j k/j ;-k/l -r/l];
b=[0 ; 1/l];
c=[1 0];
d=0;
[num,den]= ss2tf(a,b,c,d);
num=50*num(3);
z=1;
p=0.01;
numa=[1 z];
dena=[1 p];
numb=conv(num,numa)
denb=conv(den,dena)
bode(numb,denb)
figure
[numc,denc]=cloop(numb,denb,-1);
t=0.:0.01:10;
step(numc,denc,t)