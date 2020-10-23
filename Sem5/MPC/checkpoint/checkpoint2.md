## Pin Diagram and Max-Min Mode
- CLK
 - External clock will be attached here for helping the MPC

- RESET
 - Clears the flag and instruction queue
 - Clears DS , SS , ES , IP

- MN / MX*(bar)*
  - If input is high , then MIN Mode
  - If input is low , then MAX Mode

- NMI
  - Non maskable interrupt
  - Highest priority
  - micro processor will execute INT 2 in response

- INTR
  - Maskable Interrupts
  - micro processor will run 2 INTA *(bar)* cycles

- VCC and GND
  - Power supply is through VCC
  - Grounding is though GND

### MIN Mode / MAX Mode Signals

- HOLD -- RQ0/GT0 *(bar)*
  -
  - 
