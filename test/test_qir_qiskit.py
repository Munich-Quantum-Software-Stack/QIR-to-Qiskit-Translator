from qiskit import QuantumCircuit
from qiskit_qir import to_qir_module
from typing import List
from hpcqc.qir_qiskit.translate import to_qiskit_circuit
from hpcqc.qir_qiskit.transpile import transpile_qiskit
from math import pi


def test_qiskit_qir_qiskit():
    # create a circuit
    old_qiskit_circuit = QuantumCircuit(3, 3)
    for i in range(0, 3):
        old_qiskit_circuit.reset(i)
      # old_qiskit_circuit.id(i) # NOTE Bug already reported
    old_qiskit_circuit.x(0)
    old_qiskit_circuit.y(1)
    old_qiskit_circuit.z(2)
    old_qiskit_circuit.h(0)
    old_qiskit_circuit.t(1)
    old_qiskit_circuit.s(2)
    old_qiskit_circuit.rx(pi/2, 0)
    old_qiskit_circuit.ry(pi/4, 1)
    old_qiskit_circuit.rz(pi/8, 2)
    old_qiskit_circuit.ccx(0, 1, 2)
    old_qiskit_circuit.cz(0, 1)
    old_qiskit_circuit.sdg(2)
    old_qiskit_circuit.swap(0, 1)
    old_qiskit_circuit.tdg(2)
    old_qiskit_circuit.cx(0, 1)
    old_qiskit_circuit.barrier()
    old_qiskit_circuit.measure([0, 1, 2], [0, 1, 2])

    # transpile the circuit to the supported QIS
    transpiled_circuit = transpile_qiskit(circuit=old_qiskit_circuit)

    # translate the circuit from qiskit to QIR
    qir_module, _ = to_qir_module(transpiled_circuit, emit_barrier_calls = True)

    # translate the circuit from QIR to qiskit
    new_qiskit_circuit = to_qiskit_circuit(qir_module.bitcode)
