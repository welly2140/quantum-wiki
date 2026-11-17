---
id: S2
title: Quantum information (IBM Quantum Learning, Basics of quantum information)
url: https://quantum.cloud.ibm.com/learning/en/courses/basics-of-quantum-information/single-systems/quantum-information
fetched: 2026-11-17
---

## Quantum states
- A quantum state is represented by a column vector, similar to a probabilistic state. Indices label the system's classical states.
- Entries are complex numbers; the sum of absolute values squared equals 1 (unit vectors w.r.t. the Euclidean norm).

## Qubits
- A qubit is a system whose classical state set is {0, 1}; a bit that can be in a quantum state. |0> and |1> correspond to classical states 0 and 1.

## Superposition
- States such as |+> = (1/sqrt2)|0> + (1/sqrt2)|1> are linear combinations of standard basis states, often called "superpositions of 0 and 1". Superposition and linear combination are essentially synonymous.

## Measurement
- Standard basis measurement: the observer does not see a quantum state vector but a classical state.
- Each classical state appears with probability equal to the absolute value squared of its entry (Born rule).
- Measuring |+> or |-> gives 0 and 1 with equal probability, but applying a Hadamard operation first distinguishes them perfectly.

## Unitary operations
- Operations on quantum states are linear mappings represented by unitary matrices: U U† = I and U† U = I.
- Unitary matrices are exactly the linear mappings that always transform quantum state vectors into quantum state vectors.
- Pauli: X is a bit flip / NOT (X|0>=|1>, X|1>=|0>); Z is a phase flip (Z|0>=|0>, Z|1>=-|1>).
- Hadamard: H = (1/sqrt2)[[1,1],[1,-1]]; maps |0> to |+>, |1> to |->, and |+> back to |0>, |-> back to |1>.
