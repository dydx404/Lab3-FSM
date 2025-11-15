Task 2 – F1 FSM (Finite State Machine)
Objective

The goal of this task is to design, implement, and test a simple Finite State Machine (FSM) that controls a sequence of LEDs in a pattern similar to Formula 1 race lights. The LEDs should light up one by one, then all turn off together before repeating the sequence continuously.

Design Overview

The FSM consists of a series of defined states that represent each stage of the LED lighting pattern.

Each state corresponds to a unique combination of LED outputs.

A clock signal controls state transitions.

A reset signal returns the FSM to the initial state (all LEDs off).

The FSM automatically cycles through the lighting sequence when enabled.

The FSM logic was implemented in SystemVerilog using a Moore machine, meaning the LED outputs depend only on the current state.

Simulation and Verification

The design was compiled and simulated using Verilator.
The output waveform confirmed that:

LEDs light up one by one in sequential states.

Once all LEDs are lit, they all turn off simultaneously.

The pattern repeats indefinitely after reset.

No logic errors were detected in the waveform trace, confirming correct FSM transitions and timing behaviour.

Hardware Testing

After successful simulation, the design was tested with the Vbuddy hardware via /dev/ttyUSB0.
Upon running the program:

The LEDs on the Vbuddy lit up progressively from left to right.

When all were on, they turned off together.

The full sequence repeated continuously, matching the expected F1-style start light effect.

This verified correct hardware interfacing and FSM timing.

Observations

The behaviour matches the specification exactly: LEDs turn on sequentially and turn off simultaneously.

The FSM transitions smoothly through all states without glitches or skipping.

Minor Verilator warnings (e.g. missing newline at end of file) did not affect functionality.

Conclusion

The FSM was successfully implemented and verified both in simulation and on hardware.
It demonstrates a clear understanding of state-based sequential logic, proper use of clocked always blocks, and correct synchronization between simulation and Vbuddy hardware.

The final system achieves the expected LED pattern:
“Light up one by one → all off together → repeat.”