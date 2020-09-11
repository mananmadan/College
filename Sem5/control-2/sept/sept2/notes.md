## Observer
- So we have to observe the unmeasurable values
- we do not need to observe the state 
- reduced order observer ==> can observe n-1 variables
- minimum order observer ==> can observe n-m variable
- ![observer](observer.jpg)

## Notation
- x~ is the full state observer
 - it is the observed states
- ![full-order state observer](full_order_state_observer.jpg)
- ![pole_placement](pole_placement_observer.jpg)

## Full Order State Observer

- here also we have to observe the Ke matrix
- now when we make y~ = y then only we will get the correct x observer
- to do that we have to get the value fo K_e 
- **So main problem is to estimate K_e** ==> to get the correct estimate
- ![proof](proof.jpg)
- now e here will be zero , when A-K_eC = 0
- to do that we have to place correct eigen values of A-Kec 
- ![observer_requierment](observer_requierments.jpg)

### Dual Problem 
- We treat the system as finding the value of K for dual system
- basicaly in dual we take the transpose of the sytem 
- Ke = K_T ( in the dual proble)
- ![dual_problem1](dual_prb1.jpg)
- ![dual_problem2](dual_prb2.jpg)

## Condition for state observation
- so we desighn the dual and convert controllability into observability
- ![dual_observer](dual_observer.jpg)

## Transformation method for finding Ke
- ![trans_observer](trans_observer.jpg)

## Direct Substitution Method for finding Ke
- ![direct](direct_method.jpg)
