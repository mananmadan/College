clc;
clear;
[u1,u2,u3,u4,u5,yd]=cpdata();
x=[u1 u2 u3 u4 u5];
w1=rand(5,20);
w2=rand(20,1);
eta1=-0.0000000001;
eta2=-0.0000000001;

m=input('enter the no. of samples =   ');
ite=input('enter the no. of iterations=  ');
for i=1:ite
for k=1:m
    net1=purelin(x(k,:)*w1+1);
    y(k)=purelin(net1*w2+1);
    e(k)=yd(k)-y(k);
    a=dpurelin(net1*w2+1,y(k))*w2;
    b=dpurelin(x(k,:)*w1+1,net1);
    c=x(k,:)'*(a'.*b);
    delw1=eta1*(e(k)*(-1)*c);
    d=dpurelin(net1*w2+1,y(k))*net1;
    delw2=eta2*e(k)*(-1)*d;
    w1=w1+delw1;
    w2=w2+delw2';
end
se(i)=0.5*e*e';
end
figure
plot(yd,'r');
hold on
plot(y,'b');
figure
plot(se);

