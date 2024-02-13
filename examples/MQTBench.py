import os
import sys
from pathlib import Path
from qiskit import QuantumCircuit
from hpcqc.qir_qiskit.translate import to_qiskit_circuit
from hpcqc.qir_qiskit.verifier import transpile_qiskit
from qiskit_qir.elements import QiskitModule
from qiskit_qir.visitor import BasicQisVisitor
from pyqir import (
    Context,
    Module,
)


def qasm_to_qiskit(file_path: str) -> QuantumCircuit:
    qasm = Path(file_path + '.qasm').read_text()
    return transpile_qiskit(circuit=QuantumCircuit.from_qasm_str(qasm))


def qiskit_to_qir_bitcode(file_path: str, circuit: QuantumCircuit) -> bytes:
    module = QiskitModule.from_quantum_circuit(circuit=circuit)
    visitor = BasicQisVisitor()
    module.accept(visitor)

    Path(file_path + '.ll').write_text(visitor.ir())

    qir = Path(file_path + '.ll').read_text()

    # print("\nQIR:\n")
    # print(qir)

    module = Module.from_ir(Context(), qir)

    return module.bitcode


if __name__ == '__main__':

    sys.setrecursionlimit(1000)

    for root, dirs, files in os.walk("./resources/MQTBench"):
        for file in (file for file in files if file.endswith('.qasm')):
            file_path = f"{root}/{Path(file).stem}"

            # get QIR's bitcode
            if os.path.isfile(file_path + '.bc') is False:
                print(f"Parsing {file_path}.qasm")

                circuit = qasm_to_qiskit(file_path)
                bitcode = qiskit_to_qir_bitcode(file_path, circuit)
                Path(file_path + '.bc').write_bytes(bitcode)
            else:
                bitcode = Path(file_path + '.bc').read_bytes()

            # translate the circuit from QIR to qiskit
            qiskit_circuit = to_qiskit_circuit(bitcode)

            # print("\nParsed Qiskit:\n")
            # print(qiskit_circuit)
