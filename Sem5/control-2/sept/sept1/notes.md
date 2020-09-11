## Notes

## Determination of the k using direct substitution method
- ![Direct substitution method](direct_subs.jpg)

## Determination of K Using the Ackermann's Formula
- ![akerman method](ackermann.jpg)

### Deriving ackerman's formula 
- We will prove this using the caley hamilton theorem
  - every matrix A satisfies it's own characteristic equation
  - First doing for the case of n = 3
  - ![deriving_ackermann](derive_ackermann.jpg)

- We make A~ for the dersired response
- and A will not satisfy the eqn.
- so phi(A~) = 0 , else phi(A)!=0
- ![derive_ackermann2](derive_ackermann2.jpg)
- making both the equation equal for desired and actual
- ![derive_ackermann3](derive_ackermann3.jpg)

- obtaining K ( state feedback gain matrix)
- ![obtain_k](obtain_k.jpg)

## Regulator System
- reference input is constant
- control system is time varying like (state feedback system)
- ![regulator_system](regulator_system.jpg)

### Doing Problem
- We have the state variable equation
- Desired Loop poles is given
- ![problem](problem.jpg)
- First we check controllability using AB in the state equation
- ![problem2](problem2.jpg)
- solving using first method
 - ![first_method](first_method.jpg)
 - obtained K
- solving using second method
 - ![second_method](second_method.jpg)
 - so we put k1, k2 ,k3
 - then put it equal to the desired quation
 - then form eqation in k1,k2,k3 and find the K matrix
 - ![final_ans](final_ans.jpg)
- Third method
  - find char eqn
  - put A in that , and obtain phi(A)
  - ![phi_A](phi_a.jpg)

## Homework
- ![homework](homework.jpg)
