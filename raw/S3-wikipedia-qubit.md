---
id: S3
title: Qubit (Wikipedia)
url: https://en.wikipedia.org/wiki/Qubit
fetched: 2026-11-17
---

## Definition
- A qubit is the basic unit of quantum information, the quantum version of the classical binary bit. Physically realized with any two-state quantum-mechanical system, e.g. electron spin (up/down) or photon polarization.

## Comparison with classical bits
- Classical bit: always 0 or 1. n bits hold only one of 2^n states at a time.
- Qubit: superposition with non-zero probability amplitude in both states; two complex numbers describe it.
- Measuring a classical bit does not disturb it; measuring a qubit destroys its coherence and irrevocably disturbs the superposition.
- A qubit can fully encode one bit, up to two bits with superdense coding.

## Superposition
- |psi> = alpha|0> + beta|1>, alpha and beta complex probability amplitudes. Measurement gives |0> with probability |alpha|^2, |1> with |beta|^2. Normalization: |alpha|^2+|beta|^2 = 1.
- The relative phase between alpha and beta is responsible for quantum interference (as in the double-slit experiment).

## Bloch sphere
- Pure qubit states are points on the surface of a sphere. Classical bit states are limited to the North Pole (|0>) and South Pole (|1>); the rest of the surface is inaccessible to a classical bit.
- Mixed states (noise, decoherence) lie inside the sphere.

## Measurement
- Irreversible; yields information about a single qubit and causes loss of coherence. If result is |1>, alpha becomes 0 and beta 1.
- Measuring an entangled qubit may collapse the state of the other entangled qubits.

## Physical implementations
- Photon (polarization), electron (spin), trapped ion / neutral atom, superconducting circuits (Josephson junction), quantum dot.
- All affected by noise. T1 (lifetime) and T2 (dephasing time) characterize noise sensitivity; longer time alone does not make a qubit better since gate times and fidelities matter.
