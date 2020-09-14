## AM
- To transmit a message signal , high frequency carier is needed
- In AM --> the magnitude of the carrier wave will vary according the the magnitude of the message signal
- The general expression for the amplitude modulated signal is given by

  - ![eqn](https://latex.codecogs.com/svg.latex?Ac%20%20(%201%20+%20K_a%20m(t))cos(2\pi%20f_c%20t))
  - Here $k_a$ is the amplitude sensitivity
  - if you break it you will get a sum of the carier signal and modulated signal

### Disadvantage
- Bandwith of the amplitude modulated signal = 2 * bandwodth of the message signal
 
### Single Tone and Multi Tone Modulation
- Single Tone Modulation
  - m(t) = $A_m cos(2\pi f_m t)$
  - If we draw the fourier transform from this equation
  - We will only have single frequency
  - Hence it is called single tone

- Multi Tone Modulation
  - m(t) signal here can have multiple frequencies
  - ie from 0 to fm there is a band of frequencies
  - Hence it is called multi tone modulation

- **Note**
  - the frequency transform is take from the modulated signal not the message signal
  - ![sgtn_mltn](sgtn_mltn.jpg)

### Modulation Index
- $u = K_a * A_m$ is the modulation index
- There are 3 cases
   - u<1 Under Modulation
   - u=1 Critical Modulation
   - u>1 Over Modulation
  
### Lower/Upper Side Band
- Coverting the modulated signal into freq domain
- We obtain two main freq's
   - $f_c + f_m $ ==> Upper side band
   - $f_c - f_m $ ==> Lower side band
- ![lsb_usb](lsb_usb.jpg)

### Power distribution in AM signal
- Using the RMS value in the power
- ![power_dis](power_dis.jpg)

### Generation of AM Signal
- Outline of the process
  - First we will sum the m(t) and c(t)
  - And pass it to square law device
  - then pass to BPF
  - and we will get the ans
  - ![gen_Am](gen_Am.jpg)
  - ![fin_Am](fin_Am.jpg)

### Sqaure Law Demodulator
- Sqaure Law Device
- LPF
- Sam(t) --> SLD --> LPF --> m(t)
- We would sqare it again and will get the ans


### Part Left
-> DSB-SC
-> SSB-SC