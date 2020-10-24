# Incentives of Chemical Process Control

## Requierement of a Plant | Why control is need?

- Safety
- Production Specifics
- Environmental Regulations
- Operational Constraints
- Economics

## Needs that control system is required to satisfy?

- Supressing the influences of external disturbances
   - Basically the processes should adjust to the disturbances
- Ensuring the stability of chemical process
   - some variables after experiencing disturbance , do not stabilise
   - hence to stabilise such variables we need chemical processes
- Optimizing the performance of chemical process
   - optimizing the performance is needed for economic sustainability

# Design Aspects of Control system

## Types of variables

- Input variables
   - Manipulated Variables
   - Disturbances
- Output variables
   - Measured 
   - Unmeasured

## Process of designing a control system

- Define Control objectives
- What variables to measure in order to monitor operational performance?
  - Primary Measurements
     - Variables that we want to control and can be measured
  - Secondary Measurments
     - These are variables that we can measure but cannot control
     - We have to find mathematical mapping b/w them and o/p ofcontrol variables
     - unmeasured output = f(secondary measurement)
  - Measurement of Disturbances
- Select the manipulated variables
- Select the control confifuration
  - Basically initial designing of the control process
  - **Information structure to connect available measurements to manipulated variables**
- What is the best control configuration for the given control situation?
  - Different conf. based on i/p and o/p
     - MIMO / SISO
  - General control configurations
     - Feedback
         - Uses direct measurements of the control variables to adjust manipulated variables
     - Inferential
         - Uses secondary measuremnts to adjust the values of the control variable
     - Feedforward 
         - Uses direct measure of the disturbance to adjust the values of the manipulate variables

- How to use the information to adjust the values of the control variable
  - Control Law 
  - Implemented automatically by the controller

# Hardware for a process control system

- The chemical process
- Sensors
   - Measure the disturbances , control output variables
- Transducers
   - for converting the measurements into controllable form
- Transmission Lines
   - for transmitting the signals from measuring devices to the controller
- The controller
   - recieves information from measuring device and decides what action should be taken
- The final control element
   - the element that executes the control signal calculate by the controller
- Recording elements 
   - the elements that are used to provide a visual demonstration of how a chemical process behaves

## Use of digital computers in process control

- digital direct Control
    - control instructions are already feeded into the computer
    - measurements are send to computer and the computer gives the control instruction
    - which is then sent to the final control element to fulfill
    - operator can also override the computer at any time
- supervisory computer control
    - the computer supervises the DDC loops to optimise the process , as it is better than human in doing so
    - optimisation is the main purpose to decrease the cost
- scheduling computer control
    - this level of computer control is one level above than teh supervisory control , it tells the superviory control to act according to the demand , so when the deman is more , it tells to produce more etc.

