clc
clear all
%close all
p=20;  % number of radial centers
y(1)=rand;  % initialization
y(2)=rand;
y(3)=rand;
y(4)=rand;

yn(1)=rand*0.01; % initialization
yn(2)=rand*0.01;
yn(3)=rand*0.01;

%n=input('number of samples for training');


%%%%%%%%%%% for identifier %%%%%%%%%
hi=2*rand(p,3)-1;   % radial centres for each hidden node
wh=0.1*rand(20,1);  % weights of hidden layer bias signals
% wo=0.1*rand;
 w1i=rand(p,1);  % output layer weights
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I=ones(p,1);  % Identity matrix for matrix formulation 
rou=2/sqrt(2*p);   % widths, which are fixed during the learning
etai=0.002; % learning rate


MSE=rand;
tic   % for calculating time for program run
n=600;   % total samles
for i=1:550   % total epochs
    for k=3:n

    %%%%%%%%%%%%%%%% external input %%%%%%%%%%%%%%%%%%%%%%
       r(k)=sin(2*pi*k/25);  % input
       
       %%%%%%%%%%%%%%%%% plant %%%%%%%%%%%%
   y(k+1)=(5*y(k)*y(k-1))/(1+y(k)^2+y(k-1)^2+y(k-2)^2)+r(k)+0.8*r(k-1); % actual plant
    
    
   
    %%%%%%%%%%%%%%%%%%%%%% for identifier %%%%%%%%%%%%%%%%%%%
    argi=((y(k)*I-hi(:,1)).^2+(y(k-1)*I-hi(:,2)).^2+(y(k-2)*I-hi(:,3)).^2); % hidden layer Euclidean distance calculation
    phii=exp(-argi./2*rou^2);  % outputs of radial centres of hidden layer
    yn(k+1)=phii'*w1i+r(k)+0.8*r(k-1);  % output of RBFN
    
    
    %%%%%%%%%%%%%%%%%%%%% error %%%%%%%%%%%%%%%%%%%%%%
    ei(k+1)=y(k+1)-yn(k+1);   % error
    
    MSE=MSE+0.5*ei(k+1)^2;  %Mean Sqare error
    %MSE(k)=0.5*ei(k+1)^2;
    
     %%%%%%%%%%%%%%%%%%%%%% updation of identifier centres and weights %%%%%%%%%%%%%%%%
    hi(:,1)=hi(:,1)+etai*ei(k+1).*w1i.*phii.*(y(k)*I-hi(:,1))./rou^2;
    hi(:,2)=hi(:,2)+etai*ei(k+1).*w1i.*phii.*(y(k-1)*I-hi(:,2))./rou^2;
     hi(:,3)=hi(:,3)+etai*ei(k+1).*w1i.*phii.*(y(k-2)*I-hi(:,3))./rou^2;
   
    w1i=w1i+etai*ei(k+1)*phii;
    
    end
    AMSE(i)=sum(MSE)/k;  % Average MSE
    MSE=0;
end
  

     toc

figure
plot(yn,'m:')
hold on
plot(y,'g')
figure
plot(AMSE,'r')


