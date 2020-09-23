clc
clear all
close all

w1c=0.1*rand(20,1);
w2c=0.1*rand(20,1);
w3c=0.1*rand(20,1);
w4c=0.1*rand(20,1);
wdc=0.1*rand(20,1); % recurrent f/b weights in hidden layer
w5c=0.1*rand(20,1); % o/p weights
whc=0.1*rand(20,1);
woc=0.1*rand;
%%%%%%%%%%%%% Initialization of internal parameters for DRNN identifier %%%%%%%%%%
% for input weights
Q1=rand(20,1); % for ist i/p to identifier i.e r(k)
Q2=rand(20,1); % for 2nd i/p to identifier i.e y(k-1)
Q3=rand(20,1); % for 3rd i/p to identifier i.e r(k-1)
Q4=rand(20,1); % for 4th i/p to identifier i.e y(k)
% for recurrent hidden weights wdc
P=rand(20,1);
A=rand(20,1); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I=ones(20,1); 
ydr(1)=0.01*rand;
ydr(2)=0.01*rand;
change=0.01;
eta=0.04514; %eta=0.02654;
y(1)=rand;
y(2)=rand;
y(3)=rand;
netc1=rand(20,1);
MSE=0;
n=60000;
    for k=3:n-2 % for k=3:40000 

    %%%%%%%%%%%%%%%% external input %%%%%%%%%%%%%%%%%%%%%%
    r(k)=sin(2*pi*k/25)+sin(2*pi*k/10);

    %%%%%%%%%%%%%%%%%%% actual plant %%%%%%%%%%%%%%%%%%%%

    y(k+1)=y(k)*y(k-1)*(y(k)+2.5)/(1+y(k)^2+y(k-1)^2)+r(k);
    %%%%%%%%%%%%%%%%%%%Identifier DRNN %%%%%
    netc1=tansig(r(k)*w1c+y(k-1)*w2c+r(k-1)*w3c+y(k)*w4c+(wdc).*(netc1)-whc); % 20x1 vector
    
        ydr(k+1)=purelin(netc1'*w5c-woc);
  
    ec(k+1)=y(k+1)-ydr(k+1);
    MSE(k+1)=0.5*ec(k+1)^2;
    %%%%%%%%%%%%%%%%%%%%%% updation of controller weights %%%%%%%%%%%%%%%%
    a1=dpurelin(netc1'*w5c-woc,ydr(k))*ec(k+1); %gradient of o/p. its a scalar
    b1=dtansig(r(k)*w1c+y(k-1)*w2c+r(k-1)*w3c+y(k)*w4c+(wdc).*(netc1)-whc,netc1); %derivative of hidden neuron AF, vector
    delw1c=a1*eta.*(w5c).*(b1.*((r(k).*I)+wdc.*Q1));
    delw2c=a1*eta.*(w5c).*(b1.*((y(k-1).*I)+wdc.*Q2));
     delw3c=a1*eta.*(w5c).*(b1.*((r(k-1).*I)+wdc.*Q3));
      delw4c=a1*eta.*(w5c).*(b1.*((y(k).*I)+wdc.*Q4));
    delwdc=a1*eta.*(w5c).*((b1).*(A+wdc.*P));
    delw5c=eta*netc1*a1;
    delwhc=eta*(-1)*a1*b1.*w5c;
    delwoc=eta*(-1)*a1;
    w1c=w1c+delw1c;
    w2c=w2c+delw2c;
      w3c=w3c+delw3c;
        w4c=w4c+delw4c;
     wdc=wdc+delwdc;
    w5c=w5c+delw5c;
    woc=woc+delwoc;
    whc=whc+delwhc;
    Q1=b1.*((r(k).*I)+wdc.*Q1);
    Q2=b1.*((y(k-1).*I)+wdc.*Q2);
     Q3=b1.*((r(k-1).*I)+wdc.*Q3);
      Q4=b1.*((y(k).*I)+wdc.*Q4);
    P=b1.*(A+wdc.*P);
    A=netc1;
    end
 

figure
plot(y,'g')
hold on
plot(ydr,'b')
figure
plot(MSE)


