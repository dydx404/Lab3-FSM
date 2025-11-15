Task 1 – LFSR Design

In this task, a linear feedback shift register (LFSR) was designed and verified using Verilator and GoogleTest. The objective was to generate a pseudo-random bit sequence by shifting register contents and feeding back selected bits through an XOR operation. The design was first implemented with a 4-bit register, then extended to a 7-bit version.

Simulation confirmed correct operation under clock and reset, with continuous output transitions matching the expected pseudo-random sequence pattern. The register returned to its initial state after the full sequence length, demonstrating correct cycling behavior.

Test Yourself Challenge

The challenge required implementing an LFSR based on the feedback polynomial
1 + X³ + X⁷, corresponding to taps at bits 7 and 3.
Verification tests confirmed that the 7-bit design produced a maximal-length sequence of 127 unique non-zero states. All automated checks in verify.cpp passed, validating both the logic and the polynomial’s correctness.

This completed the self-test portion, confirming the LFSR behaves as a valid pseudo-random generator for subsequent FSM applications.