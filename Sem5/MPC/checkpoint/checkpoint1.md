# Topics Covered

- Arithemetic Instructions

## Arithemetic Instructions

- ADD
  - ADD AX,BX ===> Register Addition 
  - AX = AX + BX
  - Various Types Add Can be used
  - Immediate Addn
  - Flags Affected ( By arith and Logical Instructions)
  - **Notes** -> We don't have a direct command to add 2 memory location

- INC
  - INC AX
  - content of AX will be increased by 1
  - eg ( add [NUMB] and [NUMB+1] using INC)
  - MOV AX,[NUMB]
  - INC [NUMB]
  - MOV BX,[NUMB]
  - ADD AX,BX

- ADC
  - Add with carry
  - ADC AX,BX
  - AX = AX + BX + C
  - Here the C flag is used

- SUB - (Subtraction)
  - AX = AX - BX
  - Cam be used in different types
  - source and destination

- DEC
  - The operand gets decremented by 1
  - DEC BX ; BX = BX - 1;

- SBB (Subtraction with borrow)
  - SBB AX,BX ; AX = AX - BX - C

### Multiplication

- MUL
 - For multiplying unsighned numbers

- IMUL
 - For multiplying sighned numbers

**8 bit * 8 bit**
- By default the multiplication of the numbers is 8 bit by 8 bit
- The multiplicand is always stored in AL
- THe result is always stored in AX by default

- So , if I write MUL BL
  - Then AL will be multiplied by BL and the result will be stored in AX

- What about flags?
 - Carry Flag
 - Overflow Flag

### Division

- Dividend is double the width of divisor
- By default the dividend is stored in AX
- Quotient is stored in AL and remainder in AH

- DIV BL; AX/B;
- DIV is for the division of unsigned nos.
- IDIV is for division of sighned nos

## BCD AND ASCII

- (DAA) ==> Decimal Adjust after addition
- (DAS) ==> Decimal Adjust after subtraction

- DAA
 - It always follows ADD or ADC instruction to adjust the result into a BCD number
- DAS
 - It always follows a SUB or SBB instruction to adjust the result into a BCD number

- ASCII?


## Logical Instructions

- List
 -  AND
  - Each bit of source 4 & destination are anded together
 -  OR
 -  XOR
 -  NOT
 -  TEST
 -  NEG


## Shift and Rotate Instructions

- In shift the bits "fall off" the register and in rotate the bits "wrap around" the register
- Logical shift left 
  - SHL or SAL
    - idk the difference!
    - in both a 0 is added the the right most bit
    - and the left most bit is moved to the carry flag CF

- Logical shift right
  - SAR or SHL
    - in both a 0 is added to the left most bit
    - rest all the bits are shifted to the right
    - the right most bit is moved to the carry flag CF

**Note** -> I think in the case of arithmetic operation the sighn bit is always mantianed , but that is not the case in of the logical shift operations I think so

### Rotate Instructions
- 4 operations only
  - ROL -> (Rotate left)
  - RCL -> (Rotate carry left)
  - ROR -> (Rotate right)
  - RCR -> (Rotate carry right)

- Resource to study
  - [rotateandshift](https://www.includehelp.com/embedded-system/shift-and-rotate-instructions-in-8086-microprocessor.aspx)
