# Mapping Concept's Taught to the Sallybus in the class

## Concept of state and state space models
### Why?
- To Support Non-Linear Systems
- To have an observability of the internal workings(state) of the model

### How?
- x(t) is the state vector of a system
- 2 equation form the state space model
  - State Equation - d(x(t)) = Ax(t) + Bu(t)
  - Output Equation - y(t) = Cx(t) + Du(t)
- State Model for SISO
- State Model for MIMO
**What is the difference in the SISO and the MIMO Model**

## State Reprsentation of Physical Systems
- Done the speed control and the position control

## State Equation from transfer function and Versa
- Conversion from state space to transfer
 - Take Laplace
 - Simplify equation to get the value Y(s)/U(s)

- Conversion of transfer function to canonical state forms
 - Simple Canonical Forms
 - Second Companion Form
 - Observable Canonical Form
 - Jordan Canonical Form

## Solution to state space equation and the state transition Matrix
### Solution to the linear model
- The linear state space model x_dot(t) = Ax(t)
- Solution of this model is 
- x(t) = e^At(xo)<-- initial state of the sytem
- e^At is called the state transition matrix as it _transfers the state of the system at x(0) and makes it to be x(t)_
### In case of the non-linear model
- The solution of the model will also have a forces solution part due to the presence of the control vector

## Controllability and Observability
### Controllability
- Draw the controllability matrix
C = [A AB A^2B ....]
- Rank of this matrix should be equal to the number of state variables N
### Observability
