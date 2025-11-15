Task 3 – Clock Tick Divider (clktick.sv)
Objective

To design, simulate, and calibrate a clock divider that produces a single-cycle output pulse (tick) every N + 1 clock cycles.
This module is used later to control the timing of the finite-state-machine (FSM) transitions.

Procedure

Implemented the clktick.sv module with a counter that resets after reaching N and asserts tick = 1 for one clock cycle.

Compiled and tested the design with clktick_tb.cpp and the provided clktick.sh script using Verilator.

Opened the Google metronome at 60 BPM (1 Hz) and ran the simulation in VBuddy.

Adjusted the rotary switch until the LED flash rate matched the metronome.

The displayed vbdValue() represents the calibrated value of N corresponding to a tick period of 1 second.

Recorded the measured N value. (On this system, the LED blink matched at N ≈ 24.)


Matching the LED to a 1 Hz beat effectively measures the simulation’s effective clock rate.

This demonstrates clock division and timing calibration — crucial for controlling FSM pacing in hardware systems.

Result

A 1 Hz tick signal was successfully generated when N ≈ 24.
The clktick.sv module operates as expected and is ready for integration with the FSM in the Challenge task.

Challenge – Integrated System (top.sv)
Objective

To integrate the clktick clock divider with the f1_fsm finite-state machine so that FSM state transitions occur once per second.

Procedure

Created the top-level module top.sv that instantiates both:

clktick for generating 1 Hz enable pulses.

f1_fsm for sequential LED control.

Connected signals as follows:

tick output of clktick → en input of f1_fsm.

Exposed N as a top-level input for VBuddy control (top->N = vbdValue() in top_tb.cpp).

Exposed data_out as an 8-bit top-level output for LED display (vbdBar(top->data_out)).

Compiled and simulated using doit.sh.

Verified correct sequencing on VBuddy and adjusted the rotary knob to achieve one-step-per-second transitions.

Observation

LEDs illuminated sequentially across the bar, one at a time, then turned off and repeated.

Changing the rotary knob altered the division ratio (tempo) in real time.

The system demonstrated smooth synchronization between the clock divider and the FSM.

Result

The integrated design functions correctly:

FSM advances through states at 1 Hz when N ≈ 24.

The animation speed scales predictably with N.

All signals compile and simulate without functional errors.

Conclusion

Task 3 established the principle of clock division and timing calibration.
The Challenge successfully applied this principle to pace an FSM, producing a visible, timed LED sequence.
This exercise demonstrates how modular design and clock-domain control allow predictable behaviour in digital systems.