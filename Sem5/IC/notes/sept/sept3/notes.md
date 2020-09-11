## RTRL
- ![RTRL1](RTRL1.jpg)
- Use Gradient Descent to minimize the w weights as well as self weights g
- Basically minimis Pwt ... Pterms
- ![RTRL2](RTRL2.jpg)
- Now we derive the recursive relation
- ![RTRL3](RTRL3.jpg)
- ![RTRL4](RTRL4.jpg)
- Finally we get w(t+1) and g(t+1)
- ![RTRL_Final](RTRL_final.jpg)

## Assighnment PROB -> RTRL Algo
- We have to apply RTRL to a network

## Kohonen Self-organising MAP (SOM)
- unsupervised learning algorithm
- Motivated by features in brain
### Characteristics
- ![SOM_Characteristics](som_char.jpg)
- ![SOM_characteristics2](som_char2.jpg)

## Steps
- initalize random weights
- competition
 - ![compi](compi.jpg)
 - i(x) is the function to identify the best neuron
 - ![ix](ix.jpg)
 - after this the competition is over and best neuron is selected
- cooperation
 - ![coop](coop.jpg)
 - assighn values using gaussian neighbourhood function
 - ![gsfunction](gsfunction.jpg)
- adaptive process
 - ![adaptive](adaptive.jpg)
