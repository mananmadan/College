X1 = 0.5;
X2 = 0.4;
W1 = 1;
W2 = 1;
eta = 0.8;
D = 1;
b = 1; %bias

I = W1*X1 + W2*X2 + b;

while (D-I > 0.01 || D-I<-0.01)
    W1 = W1 + eta * (D-I)*X2;
    W2 = W2 + eta * (D-I)*X2;
    b = b + eta * (D-I);
    I = W1 * X1 + W2 * X2 + b;
end

disp(W1)
disp(W2)
disp(b)
