clear all;
clc;
zeta = 0.06625;
wn = 10^4;
num =[10^8];
den =[1 2*zeta*wn wn^2];
G=tf(num,den)
step(G,0:0.000005:0.007);
title('Step Response Of A System');
[r,p,c]=residue(num,den);
w = logspace(0,4,500);
