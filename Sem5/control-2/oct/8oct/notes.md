## The optimal control problem
- Finding an admissable control to follow admissable trajectory that minimize performance measure
- ![statement](statement.jpg)
- Multiple optimal control may exist
- Here we will only find the global minimum of the performance measure for all the trajectories

## Prev Example
- ![ex](ex.jpg)
   - here we have already partially defined the constraints on the input
   - that is we have specified the limits on the acceleration and deceleration.
- inequality constraint
   - ![ineq_constraints](ineq_constraints.jpg)

## Optimal Control Law
- The solution is of the form f(x(t),u)

## Basic Calculas
- Functions
  - very basic!
- Functional
  - function of a function! basically
  - represented by J
  - ![functional](functional.jpg)
  - example of a functional
  - area under the x(t) curve
  - here for different values of x(t) wil be assigned to a real value that is their area

## Check Linearity of function
- Linearity of function
  - Should satisfy principle of homogenity
  - and principle of additivity
  - ![cl](cl.jpg)
  - ![eg_cl](eg_cl.jpg)

## Check linearity for functional
- ![eg_cl](check_func.jpg)
- ![eg_func](egfunc.jpg)

## Closeness of functions
- Is based on the equilidian norm
  - ![norm](norm.jpg)