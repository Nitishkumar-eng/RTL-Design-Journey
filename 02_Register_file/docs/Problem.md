# 1-bit Register

## Objective

Design a 1-bit synchronous register with Write Enable.

## Functional Requirements

- Store one bit of data.
- Update only on the positive edge of the clock.
- Update only when Write Enable = 1.
- Retain previous value when Write Enable = 0.

## Inputs

- D
- CLK
- WE

## Outputs

- Q

## Internal Components

- One D Flip-Flop
- One 2:1 Multiplexer
