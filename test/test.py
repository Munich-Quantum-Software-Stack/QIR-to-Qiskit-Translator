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

from qiskit import (  # type: ignore
    QuantumCircuit,
    transpile,
    qasm2
)
import os
from pathlib import Path
from qiskit_qir import to_qir_module
from mqt import qcec
import pyqir.qis as qis

from mqss.qir_qiskit.translate import to_qiskit_circuit


def transpile_qiskit(circuit: QuantumCircuit) -> QuantumCircuit:
    basis_gates = [q for q in dir(qis) if not q.startswith("__")]
    basis_gates.append("id")

    transpiled_circuit = transpile(
        circuits=circuit,
        basis_gates=basis_gates,
    )

    return transpiled_circuit


def qasm_to_qiskit(qasm: str) -> QuantumCircuit:
    return transpile_qiskit(circuit=QuantumCircuit.from_qasm_str(qasm))


def test_mqt_bench():
    file_dir = os.path.dirname(os.path.realpath(__file__))
    for root, dirs, files in os.walk(file_dir + "/resources/MQTBench"):
        for file in (file for file in files if file.endswith(".qasm")):
            file_path = f"{root}/{Path(file).stem}"
            expected_qasm = Path(file_path + ".qasm").read_text()
            qiskit_circuit = qasm_to_qiskit(expected_qasm)

            module, _ = to_qir_module(qiskit_circuit, emit_barrier_calls=True)

            converted_qiskit_circuit = to_qiskit_circuit(module.bitcode)
            generated_qasm = qasm2.dumps(converted_qiskit_circuit)
            result = qcec.verify(expected_qasm, generated_qasm)
            assert result.considered_equivalent()


def test_qasm_bench():
    file_dir = os.path.dirname(os.path.realpath(__file__))
    for root, dirs, files in os.walk(file_dir + "/resources/QASMBench"):
        for file in (file for file in files if file.endswith(".qasm")):
            file_path = f"{root}/{Path(file).stem}"
            expected_qasm = Path(file_path + ".qasm").read_text()
            qiskit_circuit = qasm_to_qiskit(expected_qasm)

            module, _ = to_qir_module(qiskit_circuit, emit_barrier_calls=True)

            converted_qiskit_circuit = to_qiskit_circuit(module.bitcode)
            generated_qasm = qasm2.dumps(converted_qiskit_circuit)
            result = qcec.verify(expected_qasm, generated_qasm)
            assert result.considered_equivalent()
