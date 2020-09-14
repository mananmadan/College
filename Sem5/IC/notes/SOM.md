## SOM
- Basically used for highly non-linear clustering

### Process
- [link](https://www.youtube.com/watch?v=9ZhwKv_bUx8&ab_channel=btechtutorial)
1. Randomly Initialise Cluster Centres
2. Calculate square of the eucliden distance for each of the cluster with input neuron (input data)
3. The centre which has the min distance is called the winning neuron
4. For all units j within a specific neighbourhood of J and for all i , calculate new weights
 - wij(new) = wij(old) + alpha(Xi-wij(old))
4. Update the learning rate
5. alpha(tee) = 0.5alpha(t)
