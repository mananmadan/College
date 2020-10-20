b = 50;
m = 1000;
A = [0,1;0,-b/m];
B = [0;1/m];
C = [0 1];
D = [0];
[num,den] = ss2tf(A,B,C,D)
disp(num)
disp(den)