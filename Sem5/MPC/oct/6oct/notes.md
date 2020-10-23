## Types of Interrupts
- Hardware Interrupts
- Software Interrupts
- Exception

## Examples of EXCEPTION
### Div Operation
- Format
  - DIV 05H
  - 05H will be a divisor
     - Now if instead of 05H we use 00H , then we will get **internal error**
     - *This will correspond to a Exception 0*
  - AX will be the divident
  - Quotient will go in AL
  - Remainder will go in AH

### Voilation of segementation
- Causes **internal error**

## Types of Exception
- Fault
  - Exception prior to completing the instruction
- Trap
  - After completion of the instruction execution
- Abort
  - Very Serious nature of problem in processor , which does not fall in a fault or a trap

# Requirement of Assembly Language Programming
- Debug
  - OS is providing Machine Level Programming env directly using it's mem instruction and data
- OS allocates safe memory to the debug environment

## Computer Architecture
- Computer has 8GB RAM
- MPC -> Intel i5 8th Gen
 - DOSBOX 
   - Virtual Environment
   - DOS Env is created in your present operating system
   - The virtual Env will create a memory allocation for the DOS Env and then run it.
## Hand Assembly
- The instruction we write in the debug is the assembly language , then these instruction are executed by debug using the DOSBOX
