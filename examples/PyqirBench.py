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


if __name__ == '__main__':

    # sys.setrecursionlimit(1500)

    for root, dirs, files in os.walk("./resources/PyqirBench"):
        for file in (file for file in files if file.endswith('.bc')):
            file_path = f"{root}/{Path(file).stem}"

            print(f"Parsing {file_path}.bc")

            # get QIR's bitcode
            if os.path.isfile(file_path + '.bc') is False:
                qir = Path(file_path + '.ll').read_text()
                module = Module.from_ir(Context(), qir)
                Path(file_path + '.bc').write_bytes(module.bitcode)
                bitcode = module.bitcode
            else:
                bitcode = Path(file_path + '.bc').read_bytes()

            # translate the circuit from QIR to qiskit
            qiskit_circuit = to_qiskit_circuit(bitcode)

            print("\nParsed Qiskit:\n")
            print(qiskit_circuit)
