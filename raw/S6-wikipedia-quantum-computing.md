---
id: S6
title: Quantum computing (Wikipedia)
url: https://en.wikipedia.org/wiki/Quantum_computing
fetched: 2026-11-17
---

## What it is
- A quantum computer represents and processes information using quantum states, exploiting superposition, interference and entanglement; for some calculations it could in principle be exponentially faster. Current hardware is largely experimental, suited to specialized tasks.

## Quantum vs classical
- Classical bit: 0 or 1. Qubit: superposition; measuring yields one of two states with probabilities set by amplitudes.
- Amplitudes are complex numbers and can be negative, enabling destructive interference, central to how quantum algorithms work.
- Each added qubit doubles the state-space dimension; n qubits need 2^n classical values to describe, so classical simulation gets hard fast.
- "Classical" refers to the computational model, not whether hardware physics is quantum.

## Interference and gates
- Quantum algorithms arrange operations so interference amplifies the probability of correct results and cancels incorrect ones.
- Gates are unitary operations (matrices on state vectors), e.g. NOT and CNOT. Measurements can be deferred to the end of a circuit.

## Decoherence, noise, error correction
- A qubit not isolated from its environment decoheres, introducing errors. Operations must be much faster than decoherence. Some systems need about 20 millikelvin.
- Threshold theorem: if the error rate is low enough, error correction can suppress errors, but needs far more physical than logical qubits. Estimate: at least ~3 million physical qubits to factor a 2,048-bit integer with Shor on a fully error-corrected trapped-ion machine.

## Common misconceptions
- Quantum computers do NOT simply try all answers at once. "Quantum parallelism" is a heuristic; measurement returns only one result, so an algorithm must use interference to make the right answer likely.
- They cannot solve undecidable problems (e.g. halting problem).
- Quantum advantage is not general speedup; speedups are known only for specific problems.

## Key algorithms (high level)
- Shor (1994): factoring and discrete log in polynomial time; threatens RSA/Diffie-Hellman.
- Grover (1996): quadratic speedup for unstructured search.

## Status (as of 2026 per article)
- Not yet practical for real-world applications; demonstrations of advantage on specific tasks are scientific milestones. Fault-tolerant quantum computing remains out of reach. NISQ machines may have specialized uses; gate noise limits reliability.
