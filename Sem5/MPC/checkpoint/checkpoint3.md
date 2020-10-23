# Imp Things to Note in Instruction Set

## Data Transfer instructions

- Adress given in [] is always Offset , called Effective Adress
- By default MOV operated on Data Segement
- BX and BP are the base registers that hold offset adress for DS and SS
- SI and DI are the index registers

- **In MOV,XCHNG command both source and des. cannot be Memory Location**
  - Like MOV SS,DS
  - In XCHNG , both can be registers like XCHG CX,BX but not mem locations!

- PUSH Source -> Source has to be of **16 bit** and Stack Pointer will dec by 2
- POP Des -> Destination has to be of **16 bit** and Stack Pointer will inc by 2

- XLATB
  - It does AL <- DS:[BX + AL]

- LAHF
  - Load AH with lower byte of flag

- SAHF
  - Store conents of AH into lower byte of flag

- LEA register,source
  - Loads offset adress of source into register

- LDS register,source
  - Loads offset adress of source into register and DS

- LES register,source
  - Loads offset adress of source into register and ES

- **Segement Overriding**
  - Overiding the base segement with some other segement
  - MOV CL,[5000H] ; CL <- DS:[5000H]
  - MOV CL,CS:[5000H] ; CL <- CS:[5000H]


## Arithemetic Instructions

- ADD/ADC | SUB/SUBB destination,source   
  - **Destination comes before than source in the instruction**
  - Destination <- Destination + Source
  - Destination <- Destination - Source

- INC/DEC destionation
  - Destination <- Destination + 1
  - **Carry flag is not affected in both the cases**

- MUL source (unsigned) | IMUL source (signed)
  - If source is 8bit , is multiplied with AL And result is stored in AX(AH-higher,AL-lower)
  - If the source is 16bit , it is multiplied with AX and the result is stored in DX-AX(DX-higher byte, AX-lower byte)

- DIV source(unsigned 8/16-bit register – divisor)  | IDIV (signed)
   - If the divisor is 8-bit then the dividend is in AX register. After division, the quotient is in AL and the Remainder in AH. If the divisor is 16-bit then the dividend is in DX-AX registers. After division, the quotient is in AX and the Remainder in DX.
   - All flags are undefined after DIV instruction
   - If **divisor is 0 , then Type 0 interrupt error is given**

- NEG destionation
   - Form 2's compilement of the destination and stores at destination
   - All condition flags are updated

## Decimal and Ascii Adjust Instruction
- [Link](https://www.youtube.com/watch?v=Af1MGGqrP2o&ab_channel=Lastmomenttuition)


