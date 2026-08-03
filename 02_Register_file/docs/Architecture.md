# Architecture - 1-bit Register

## High Level Architecture

The register stores one bit of information.

It consists of:

- One 2:1 Multiplexer
- One Positive Edge Triggered D Flip-Flop

---

## Block Diagram

```
           +-----------+
           |           |
D -------->|           |
           |   2:1     |-------> D
Q -------->|   MUX     |
           |           |
           +-----------+
                ^
                |
               WE


            +-------------+
CLK -------->|     DFF     |-------> Q
             +-------------+
```

---

## Working

When WE = 1

- The multiplexer selects the external input D.
- On the next rising clock edge, the D Flip-Flop stores D.

When WE = 0

- The multiplexer selects the current output Q.
- On the next rising clock edge, the same value is stored again.
- Therefore, the register retains its previous value.

---

## Inputs

- D
- CLK
- WE

## Output

- Q
