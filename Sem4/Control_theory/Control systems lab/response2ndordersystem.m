clear all;
clc;
zeta = 0.06625;
wn = 10^4;
num =wn*wn;
den =[1 wn^2];
G=tf(num,den)
step(G);
%title('Step Response Of A System');
%[r,p,c]=residue(num,den);
%w = logspace(0)