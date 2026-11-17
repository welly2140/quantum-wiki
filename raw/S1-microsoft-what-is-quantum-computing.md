---
id: S1
title: What Is Quantum Computing? (Azure Quantum, Microsoft Learn)
url: https://learn.microsoft.com/en-us/azure/quantum/overview-understanding-quantum-computing
fetched: 2026-11-17
---

# What Is Quantum Computing?

## History
- Quantum systems (atoms, molecules) are difficult or impossible to simulate on a classical computer. In the 1980s, Richard Feynman and Yuri Manin suggested hardware based on quantum phenomena might be more efficient for simulating quantum systems.
- One main reason: matter at the quantum level is described as a combination of multiple configurations (states) at the same time.
- Quantum states grow exponentially: 40 locations -> 2^40 states. A classical computer needs 2^40 numbers (over 130 GB) to describe the quantum system, but a quantum computer needs only 40 qubits. 41 locations -> 2^41 states, more than 260 GB. At a few hundred electrons, the memory required exceeds the number of particles in the universe.
- 1985, David Deutsch showed a quantum computer could efficiently simulate the behavior of any physical system.
- 1994, Peter Shor discovered a quantum algorithm for prime factoring of large integers, exponentially faster than the best known classical algorithm; could potentially break RSA and Elliptic Curve Cryptography.
- Other algorithms: searching an unordered database, solving systems of linear equations, machine learning, simulating chemistry/physics/materials.

## What is a qubit?
- Qubits are the fundamental object of information in quantum computing, as bits are in classical computing.
- Classical bits are binary, in only one of two states, 0 or 1. Qubits can be in a superposition of both 0 and 1 at the same time. There are infinite possible superpositions of 0 and 1, each a valid qubit state.
- 8 regular bits can encode up to 256 values but represent only one at a time. 8 qubits can be in a superposition of all 256 possible states.

## Requirements to build a quantum computer
- Systems consist of qubits, interactions between qubits, and operations on qubits. Programs can use quantum entanglement and quantum interference to solve certain problems faster than classical computers.
- Popular qubit technologies: trapped-ion, superconducting, topological. Some must be kept near absolute zero to maximize coherence and reduce interference; others use a vacuum chamber. Signals are sent via microwaves, lasers, or voltages.
- Five criteria (DiVincenzo criteria): (1) Scalable – many qubits; (2) Initializable – set qubits to a specific state (usually 0); (3) Resilient – keep qubits in superposition for a long time; (4) Universal – a universal set of operations such that any other operation can be decomposed into them; (5) Reliable – measure qubits accurately.
- Building devices meeting these five criteria is one of the most demanding engineering challenges.

## Quantum phenomena
The two most important are superposition and entanglement.

### Superposition
- Analogy: you can't face left and right at the same time, but a quantum particle can have a certain probability of facing left AND a certain probability of facing right (superposition, also known as coherence).
- Only quantum systems like ions, electrons, or superconducting circuits can exist in such states. Electron spin: spin up and spin down; the state is a superposition of both.

### Entanglement
- A quantum correlation between two or more quantum systems. When two qubits are entangled, the quantum state of individual qubits can't be described independently; you can only know the state of the global system.
- Entangled systems maintain this correlation even over large distances. Measuring the state of one qubit provides information about the other.
