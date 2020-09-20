# Pole Placement
- It is the process of moving the poles of the system to get a desired output

- How do you move the poles of the system?
  - We apply the control to move the poles of the system
  - In mathematics x' = Ax + Bu
  - where u are the controls
  - Further simplification allows us to write u = -Kx
     - Here x is the input 
     - and k is the state feedback gain

- It can be proven that in order to do pole placement our system has to be completely controllable!

## Methods

1. Desired == Actual

- Given the x' = Ax - Bkx , we have x' = (A-Bk)x
- So , here you can say that the characteristic eqn = |SI - A| , which gives us the roots and poles of the system should be equal for the desired and actual case
   - In the case of actual = |SI - (A-Bk)| == 0
       - This gives us equation 1
   - Now given the poles , we can chose a desired set of eigen values
       - We multiply them like (s - u1)(s-u2) .. to get the desired equations

- We then equate those equations and obtain the value of k matrix by comparing each of the coefficients

2. Determination of k using direct substitution

- This method says k = [k1 k2 k3]
- then |SI - (A-Bk)| == (s - u1)(s-u2) ...
- and compare the coeff to get the k matrix

**Note** In the prev method we do not directly make the poles equal , but instead apply some transformation etc..

3. Ackermann's Formula

- A formula is derived to get the values of the K matrix directly from A and B matrix
- So you just plug in the A , B values and it will give the correct value for K


**Note ==> For finding the correct values of the desired poles , regulator systems are used , see about that in notes**

