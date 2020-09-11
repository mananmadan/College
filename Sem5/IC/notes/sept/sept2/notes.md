## Feedback Networks

- FF network is a static network
- So in order to have dynamic , we need feedback
- Hence we need a feedback
- ![rnn_intro](RNN_intro.jpg)

### Prop.

- Rich Temporal and spatial behaviours
  - because it's time stamp depends upon t,t-1
- stable and unstable cycles
- mainly used for pattern recoginition

### Unfolding in Time

- RNN can look like NN , when they are unfolded in time 

### Types

- FCRNN
- Partially Connected(PCRNN)


### Application 

- Time Series Prediction
- Temporal Pattern recognition 
   - signal classification
   - sound  classification

### Time Delay Network
- ![time_del_netkwork](time_delay_net.jpg)

## Formation of full conncected neural networks
- each neuron is connected to itsel
- ![FCRNN](FCRNN.jpg)

## Comp
- comparision of the NN
- ![comp](comp.jpg)

## Applying Back Propagation
- we roll the network in time to apply back prop
- ![steps](steps.jpg)
- ![rolling](rollingNN.jpg)
- ![BP_RNN](BP_RNN1.jpg)
- ![BP_RNN](BP_RNN2.jpg)
- ![BP_RNN](BP_RNN3.jpg)

## 2 Learning Algo
- Back Prop Through time
- Real Time recurrent learning

## Example
- ![eg](eg.jpg)
- ![sol](sol.jpg)
- ![upd_rule](upd_rule.jpg)

## Difference b/w two methods
- BPTT VS RTRL
- ![diff](diff.jpg)
