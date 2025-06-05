from qiskit import (  # type: ignore
    QuantumCircuit,
    transpile,
)
import pyqir.qis as qis


def transpile_qiskit(circuit: QuantumCircuit) -> QuantumCircuit:
    basis_gates = [q for q in dir(qis) if not q.startswith("__")]
    basis_gates.append("id")

    transpiled_circuit = transpile(
        circuits=circuit,
        basis_gates=basis_gates,
    )

    return transpiled_circuit
