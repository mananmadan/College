## Operational Criteria
- Some Operational Criteria are imposed on the design engineer
  - Safety
  - Environmental Regulations
  - Product Specification
  - Operational Constraints
  - Economics
- The above mentioned criteria make a requirement for control of chemical process

## Basic Architechture of Control System
  <-----|CS|-------|Sensor|
  |                    |
Input--->|Process|--->Output

- Process Inputs : The external influences that can affect the dynamics of our system
- Process Output : The entities that are influenced by these inputs

## Basic Control Structure

- Feedback
  - Measure the output and then control the input variable
- Feedforward
  - Measure the input and directly control it
- ![FFFC](fffc.jpg)

## Process Modelling
- Basically Generating a mathematical model for the process in order to control it!

### State Variables and Equations
- State Variables
  - These are independent quantities that describe the natural state of a given process
- State Equation
  - Then are the equations that describe the change in the states with time

### Modelling of a STR
- Before modelling , you should know certain things
   - State Variables : h,T
   - Output Variables : h,T 
   - Input Variables : Q,F_i ==> manipulated
                       T_i ==> disturbance
  
- Diagram
   - ![diag](diag.jpg)

- We will use 2 laws
  - Balance of Material
  - Balance of Energy

- Balance of Material
  - ![bl_mt](bl_mt.jpg)

- Balance of energy
  - ![bl_en](bl_en.jpg)

- Final Equations
  - ![fn_eq](fn_eq.jpg)

## Input Functions
- When we define a model , we test it on some kind of inputs like
   - Step Input Function
   - Rectangular Pulse Input Function
   - Unit Pulse Input Function
   - Impule Input Function
   - Ramp Input Functions
   - Sinusoidal Input Functions

### Step Input Functions
- ![sp_ip](sp_ip.jpg)
- This use to test how does the model behave in presence of a sudden change in the input
    - Plot of how the step function changes the output of a running plant
    - ![ac_plt](ac_plt.jpg)
- **Deviation Variable**
  - A = f(t) - fss 
  - Basically this variable indicates how far the input is from a given steady state

### Rectangular Input Functions
- Sudden change but system comes back to it's original state
-  ![rtn_ip](rtn_ip.jpg)

### Unit Impluse Function
- ![unit_ip](unit_ip.jpg)

### Impluse Function
- ![imp_in](imp_in.jpg)

### Ramp Input
- ![rmp_in](rmp_in.jpg)

### Sin Input
- ![sin_in](sin_in.jpg)

## First Order System
- Those system that changes wrt to the first order
- ![first_ord](first_ord.jpg)

### Step Input Response
- First order transfer function is
  - **Main Formula**
  - $G_p(s) = Y(s)/X(s) = K_p/(T_p*s + 1)$
- ![stp_rep](stp_rep.jpg)
- Then do partial fractions
- Taking inverse laplace
  - and get the formula in the time format
  - and get the response
- ![inv_lp](inv_lp.jpg)

### Steady State Gain(Kp)
- time t = Tp
- y(t)|t=tp  = AKp(1-e^(-1))
- y(t)|t=tp = 0.632 * y(t)|t->inf
- ![kp](kp.jpg)

### Time Constant(Tp)
- time taken by the process to reach 63.2% of the ultimate value of the response(UVR)
- ![prop](prop.jpg)

### Impulse and Ramp Input Response of a first order system

### Sinosoidal Input Response of a first order system
- Y(s) = (Kp/(Tp*s+1)) * (Aw/(s^2 + w^2))
- ![sin_ip](sin_ip.jpg)
- the e_(-t/tp) factor decays
- if then the term can be written in be sin form
- ![sin_sin](sin_sin.jpg)
- There is a phase lag in it
  - The output magnitude will decrease
  - and there will be a phase lag in the input

- Prop
  - We can find the amplitude ration in this thing
  - Phase difference

### Example of the first order system
- Balancing the hieght of the system to be a particular order
  - ![tnk_fo](tnk_fo.jpg)
  - Now arrange the equation in the form of time equation , by taking the inverse laplace 
  - Compare this to the equation of the first order system and take the values of to form the general transfer function of the system
  - ![tnk_tf](tnk_tf.jpg)

### Purely Capacitive System

## Second Order System
- Any system that we can model with the help of second order system
- Terms 
  - zeta : damping factor
  - tp : Natural Period of oscillations
  - Kp : ss gains

- Transfer function of the second order systems
  - ![tf_se](tf_se.jpg)

## Step Response
- Nature of the step response of the system
  - zeta > 1 ==> overdamped system (exponential)
     - poles are real but unequal
  - zeta == 1 ==> critically damped
     - poles are real and equal
  - zeta < 1 ==> underdampes
     - roots are complex conjugate

- **zeta** means the **Resistance** offered by the system
- if zeta is more the system is more sluggish
- if zeta is less the system is fast

### Inherently Second Order Systems
- ![eg_sec_ord](eg_sec_ord.jpg)


### Properties of the under damped system
- ![underdamped_res](underdamped_res.jpg)

- Overshoot
  - ![overshoot](overshoot.jpg)

- Decay Ratio
  - ![decay_ratio](decay_ratio.jpg)

- MVR (Maximum Value of response)
   - ![mvr](mvr.jpg)

- Period of Oscillation
   - ![poo](poo.jpg)

- Natural Period of Oscilation
  - ![npoo](npoo.jpg)

- Rise Time
  - ![rise](rise.jpg)
  - Variation of rise time with the zeta
  - ![zeta_ris](zeta_ris.jpg)
