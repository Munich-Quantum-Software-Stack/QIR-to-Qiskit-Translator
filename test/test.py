import os

from qiskit_qir import to_qir_module
from pathlib import Path
from hpcqc.qir_qiskit.translate import to_qiskit_circuit
from qiskit import QuantumCircuit
from qiskit import qasm2
from mqt import qcec
from hpcqc.qir_qiskit.verifier import transpile_qiskit


def qiskit_to_qir_bitcode(circuit: QuantumCircuit) -> bytes:
    module, _ = to_qir_module(circuit)
    return module


def qasm_to_qiskit(qasm: str) -> QuantumCircuit:
    return transpile_qiskit(circuit=QuantumCircuit.from_qasm_str(qasm))


def test_mqt_bench():
    print("test_mqt_bench")
    for root, dirs, files in os.walk("./resources/MQTBench"):
        for file in (file for file in files if file.endswith(".qasm")):
            file_path = f"{root}/{Path(file).stem}"
            print(file_path + ".qasm")
            expected_qasm = Path(file_path + ".qasm").read_text()
            qiskit_circuit = qasm_to_qiskit(expected_qasm)

            module, _ = to_qir_module(qiskit_circuit, emit_barrier_calls=True)

            str(module.bitcode)

            converted_qiskit_circuit = to_qiskit_circuit(module.bitcode)
            generated_qasm = qasm2.dumps(converted_qiskit_circuit)
            result = qcec.verify(expected_qasm, generated_qasm)
            assert result.considered_equivalent()


def test_qasm_bench():
    for root, dirs, files in os.walk("./resources/QASMBench"):
        for file in (file for file in files if file.endswith(".qasm")):
            file_path = f"{root}/{Path(file).stem}"
            print(file_path + ".qasm")
            expected_qasm = Path(file_path + ".qasm").read_text()
            qiskit_circuit = qasm_to_qiskit(expected_qasm)

            module, _ = to_qir_module(qiskit_circuit, emit_barrier_calls=True)

            str(module.bitcode)

            converted_qiskit_circuit = to_qiskit_circuit(module.bitcode)
            generated_qasm = qasm2.dumps(converted_qiskit_circuit)
            result = qcec.verify(expected_qasm, generated_qasm)
            assert result.considered_equivalent()


# test_mqt_bench()
