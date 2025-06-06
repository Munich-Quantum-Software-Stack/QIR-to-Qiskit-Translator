"""
Copyright 2024 Munich Quantum Software Stack Project

Licensed under the Apache License, Version 2.0 with LLVM Exceptions (the
"License"); you may not use this file except in compliance with the License.
You may obtain a copy of the License at

https://github.com/Munich-Quantum-Software-Stack/QIR2Qiskit/blob/develop/LICENSE

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations under
the License.

SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
"""

import os

from qiskit_qir import to_qir_module
from pathlib import Path
from mqss.qirpy.translate import to_qiskit_circuit
from qiskit import QuantumCircuit
from qiskit import qasm2
from mqt import qcec
from mqss.qirpy.verifier import transpile_qiskit


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


test_mqt_bench()
