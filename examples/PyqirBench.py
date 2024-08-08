import os
from pathlib import Path

from pyqir import (
    Context,
    Module,
)
from qir_qiskit.translate import to_qiskit_circuit

if __name__ == "__main__":
    # sys.setrecursionlimit(1500)

    for root, dirs, files in os.walk("./resources/PyqirBench"):
        for file in (file for file in files if file.endswith(".bc")):
            file_path = f"{root}/{Path(file).stem}"

            print(f"Parsing {file_path}.bc")

            # get QIR's bitcode
            if os.path.isfile(file_path + ".bc") is False:
                qir = Path(file_path + ".ll").read_text()
                module = Module.from_ir(Context(), qir)
                Path(file_path + ".bc").write_bytes(module.bitcode)
                bitcode = module.bitcode
            else:
                bitcode = Path(file_path + ".bc").read_bytes()

            # translate the circuit from QIR to qiskit
            qiskit_circuit = to_qiskit_circuit(bitcode)

            print("\nParsed Qiskit:\n")
            print(qiskit_circuit)
