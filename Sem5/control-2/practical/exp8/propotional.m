j=0.01;
b=0.1;
k=0.01;
r=1;
l=0.5;
a= [-b/j k/j ;-k/l -r/l]
b=[0 ; 1/l];
c=[1 0];
d=0;
[num,den]=ss2tf(a,b,c,d)
num=num(3);
bode(num,den)
[mag,phase,w]= bode(num,den,10)
num =70*num
figure(1)
[numc,denc]=cloop(num,den,-1);
t=0.:0.01:10;
step(numc,denc,t)