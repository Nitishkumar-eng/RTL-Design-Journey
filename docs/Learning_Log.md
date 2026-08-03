# Learning Log

This document tracks my progress throughout my RTL Design Journey.

---

# Day 1


## Topic

- Register File
- D Flip-Flop

---

## What I Learned

- Registers are high-speed storage elements inside the CPU.
- A Register File is a collection of registers.
- A 32×32 Register File contains 32 registers, each storing 32 bits.
- One D Flip-Flop stores exactly one bit.
- A 32-bit register requires 32 D Flip-Flops.
- A D Flip-Flop updates its output only on the rising edge of the clock.

---

## Concepts I Can Explain

- Difference between combinational and sequential logic.
- Why CPUs need registers.
- Why the clock is important.
- How a D Flip-Flop stores data.

---

## Questions I Had

- How does a Register File know which register to read?
- Why do we need a Write Enable signal?
- How are registers selected internally?

---

## Mentor Notes

- Don't rush into coding.
- Understand the hardware first.
- Think like a hardware engineer, not just a programmer.

---

## Next Goal

Design and understand a 1-bit Register.



---

# Day 2


## Topic

- Write Enable (WE)
- 1-bit Register Architecture

---

## What I Learned

- A D Flip-Flop alone cannot selectively hold data.
- A Write Enable (WE) signal allows a register to either load new data or retain its current value.
- WE is not an input to a standard D Flip-Flop.
- A 2:1 Multiplexer placed before the D Flip-Flop selects between:
  - New Data (D)
  - Current Output (Q)
- A 1-bit Register is implemented using:
  - One D Flip-Flop
  - One 2:1 Multiplexer

---

## My Understanding

A register only updates when WE = 1.
When WE = 0, the multiplexer feeds the current value (Q) back into the D input, so the next clock edge stores the same value again.

---

## Questions I Asked

- Why can't WE be connected directly to D?
- Why shouldn't WE gate the clock?
- How many DFFs and MUXes are required in a 32×32 Register File?

---

## Next Goal

Design a complete 1-bit Register and understand its timing before implementing it in Verilog.


## Day 3

### Topic
- 1-bit Register
- Verilog RTL
- Testbench
- GTKWave

### What I Learned
- Designed a 1-bit register using a D Flip-Flop and Write Enable.
- Wrote synthesizable RTL.
- Created a testbench.
- Simulated using Icarus Verilog.
- Verified functionality using GTKWave.
- Understood why Q is initially unknown (X) without a reset.

### Challenges
- Incorrect Icarus compile command (`-o` usage).
- Fixed module instantiation issues.

### Status
✅ Project Completed
