## Assembler Directives

- Statement that directs the assembler to do special tasks
- No M/C language code is produced for these statements

1. DB -> Store 1 byte of memory for a byte type variable
  - SUM DB 0 
2. DW -> Store 2 byte of memory for a word type variable
3. DD -> Store 4 byte of memory for a double type variable
4. DQ -> Define a quad word type variable (8 bytes)
5. DT -> Define a 10 bytes to the variable
6. DUP() 
FLAG101
7. SEGMENT -> Indicate beginning of a segment
8. ENDS -> Indicate end of a segment
9. ASSUME -> Associates a logical statement with a processor segment
 - Assume CS:Code -> Makes the segment "Code" the actual Code segment
10. PROC -> Indicate beginning of a proc
11. ENDP -> Indicate end of a proc
12. END -> End of the program
13. EQU -> Defines a constant
- AREA EQU 25H -> Constant name AREA with a value 25H
14. Start -> Label to indicate start of the program
15. Model Directives
  - .MODEL SMALL  -> Data in one 64kb segment , Code fits in one 64kb segment
  - .MODEL MEDIUM -> Data in one 64kb , code may be greater than 64kb
  - .MODEL LARGE -> data > 64kb , code > 64kb
