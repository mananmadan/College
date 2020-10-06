# Transforms
- Transform provide us with an alternative representaion of it's probability distribution function

## Moment Generation Function
- The transform of the PD(X) is also called moment generating function
- Hence it is called $M_x(s)$ of a free parameter s defined by $M_x(s)$ in the form of $E[e^{sx}] , where E is the expectation$ 
- $\sum e^{sx}p_x(x)$ --> discrete
- $\int{e^{sx}p_x(x)}dx$ --> continous
- **M(s) can only be defined if $E[e^{sx}]$ is finite**

### Example
- $p_x(x)$
   - 1/2 x=2
   - 1/6 x=3
   - 1/2 x=5
   - 0 ,otherwise
- $e^{2s}/2$  +$e^{3s}/6$ + $e^{5s}/2$ 

## Other Transforms
- **It is same as other just replace $e^{-st}$ by x to get $e^{-sx}$**
- L(f(t)) = $\int{e^{-st}f(t)}dt$ 
- Z(f(t)) = $\sum_{n=0}^{inf}f(n).z^{-n}$ 
- Moments can be derived from the transform

## Moments
- It can be derived by differentiating wrt to s at s=n 
- If n=0 , 1st moment ie E[x]
- $\frac{dM(s)}{ds} at s=0 $= E(x)$
- $\frac{d^{2}M(s)}{d^{2}s} at s=0$ = E(x^{2})$
- Differentiating this function helps us in getting moments , hence it is called a moment generating function

## Transform of a Poisson RV
- $p_x(k) = \lambda^{k} \frac{e^{-\lambda}}{k!}$
- The corresponding transform is given by
  - $M(s) = \sum e^{sx} \frac{\lambda^{x} * e^-{\lambda}}{x!}$
  - **Simplified**
    - ![simplified](simplified.jpg)
    - $e^{a-\lambda}$ where a is $s*\lambda$
    - $e^{(e^{s}-1)*\lambda}$
    - Now if we do diff of the above function we will get E(x) 
    - Hence we will get the value = $\frac{1}{\lambda}$