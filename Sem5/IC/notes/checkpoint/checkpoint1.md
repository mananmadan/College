# Topic Covered
- Identification and Modelling of Non-Linear System using NN

## Input - Output - State Representation
- The input output state represenation for the linear system was simple
  - x' = Ax + Bu
  - y = Cx + Du
  - Linear sytems as both x' and y are linearly dependent on the input as well as the control

- Non-Linear systems Representation
  - x' = f(x(t),u(t)
  - y =  g(x(t))
  - Here the f and the g are the non-linear systems

- x = {x1(t),x2(t),x3(t) ....}'
- y = {y1(t),y2(t),y3(t) ....}'
- u = {u1(t),u2(t),..........}'

### How to represent for algorithms?
- It is not possible to represent the system as the continous time system
- Hence the system has to be represented as set of discrete equations for the algorithms
- Thus the system is tranformed to
  - x(k+1) = f(x(k),u(k)
  - y(k) = g(x(k)
  - where u , x , y are discrete time sequences

## Aproaches for modelling

### Model Based Approach
- [CRAM]
- Here we give a specific model and then let the NN learn the parameters of the model
- **Different models are just the combination of how yp(k+1) can be dependent upon previous outputs yp(k) , yp(k-1) .... and previous inputs u**
 - Model1
 - Model2
 - Model3
 - Model4

- In order to use these model's and the NN together
 - We will use Series Parallel and Parallel-Parallel Approaches

### Series Parallel Approach
   - In series parallel output of yp'(estimated value) is dependent upon previous actual outputs of the plant and the input --> u(k)
   - Using these it will calculate a value , compare at from the original value and estimate learn these weights
### Parallel Parallel Approach
   - Whereas in this approach the output of yp'(estimated value) is dependent upon previous estimated values from the model itself and input u
   - The system then compares the value from the real system and then update if there is an error

 - For control we use model2
 - Identification can be done using all the models

### Model Free Approach
- In Model free approach you just have to supply with inputs and outputs and then you will get a model 
- So no problem in that!
