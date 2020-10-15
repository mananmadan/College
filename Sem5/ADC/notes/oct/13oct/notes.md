## Instantaneous Sampling 
- We can multiply to 1/H(f) to remove the distortion

## Natural Sampling
- It is easier to convert to digts
- Hence it is better for digital communication

## Different types of Pulse Modulation
- In PAM all of the Infomation is gettig embedded on magnitude axis
 - PAM (Flat top sampling)
- In all of the below Information is getting embedded in time axis
 - PWM (Pulse Width Modulatio)
 - PPM
 - PDM
 - PTM 

## Generation and Demodulation
- Study ourselves

## Analog to digital converter
- Paramters Revise
  - Quantatization
    - Finite number of steps
  - Resolution
    - Min Reading a device can measure
    - Lowest value a system can recoginise or differenciate
    - The no of bits that can be accomated into the system called its resolution
  - Precision
  - Accuracy
  - Settling Time


## PCM
- Analog --> [LPF] --> [S/H] --> PAM -->[Quatizer*]-->[Encoder]-->[PCM Data] -->[Transmitter]|Electrical Symbol| --> Channel --> [Repeater]--> [Decoder]-->[LPF]-->Analog output

- Quantizer has a number of levels M
   - For a n bit quantizer , number of levels is $2^n$

- So ultimately your voice is getting converted in many n bit words
- And then transmitted using the transmitter
- Electrical signal means a sqare wave of 5V(for 1) and 0V(for 0)
- Electrical signal can also means a square wave of +5V(for 1) and -5V(for 0)
- Since the signal strength gets attenuated , hence we can use a repeater to get the values
