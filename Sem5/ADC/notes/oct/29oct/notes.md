## Random Noise
- It is due to random quantisaation error
- If the input level is not sufficiently large , then SNR (signal to noise
ration) will deteriorate
  - produce white hissing sound

## Granular Noise
- If the input level is reduced further to a relatively small value wrt design
level. The error values are not equally likely from sample to sample.
- Randome input signal variations is smaller then the step size
  - harsh sound
### Reduction
- This can be reduced by implementing mu-law or A-law of quantization
- Non Linear Quantization (where input is more , we will have higher step size)

## Hunting Noise
- If input level is almost const - the sample values can oscillate b/w small
quantization levels , at the reciever side , we will infer it as sinusoidal
wave , but really it is constant
