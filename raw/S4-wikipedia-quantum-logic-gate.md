---
id: S4
title: Quantum logic gate (Wikipedia)
url: https://en.wikipedia.org/wiki/Quantum_logic_gate
fetched: 2026-11-17
---

## Definition
- A quantum logic gate is a basic quantum circuit operating on a small number of qubits; the building block of quantum circuits, like classical logic gates for digital circuits. Gates are the unitary transformations that occur when a quantum system is not being measured.

## Unitarity and reversibility
- Gates are unitary operators (unitary matrices in the computational basis). U†U = UU† = I, so U† = U^-1. Unlike many classical gates, quantum gates are reversible; any composition is reversible.
- Measurement is not a quantum gate because it is irreversible.

## Hadamard (H)
- Single qubit. |0> -> (|0>+|1>)/sqrt2, |1> -> (|0>-|1>)/sqrt2. Creates an equal superposition from a computational basis state. H = (1/sqrt2)[[1,1],[1,-1]]. Involutory (own inverse).

## Pauli X, Y, Z
- Single-qubit rotations by pi about x, y, z axes of the Bloch sphere.
- X: quantum NOT / bit-flip, |0>->|1>, |1>->|0>. Z: |0> unchanged, |1> -> -|1> (phase-flip). Y: |0> -> i|1>, |1> -> -i|0>.

## CNOT
- Two qubits: control and target. NOT on the target only when control is |1>. |a,b> -> |a, a XOR b>. Matrix [[1,0,0,0],[0,1,0,0],[0,0,0,1],[0,0,1,0]]. Hermitian, unitary, involutory.

## Circuit representation
- Gates are symbols on horizontal wires; each wire is a qubit. Single lines = qubits, double lines = classical bits. Measurement symbol outputs classical bits.
- Serial gates A then B combine as C = B·A: the matrix order is the reverse of the diagram order.
