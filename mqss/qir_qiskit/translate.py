# ------------------------------------------------------------------------------
# Copyright 2024 Munich Quantum Software Stack Project
#
# Licensed under the Apache License, Version 2.0 with LLVM Exceptions (the
# "License"); you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://github.com/Munich-Quantum-Software-Stack/QIR2Qiskit/blob/develop/LICENSE
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
# ------------------------------------------------------------------------------

""" The entry point to translate QIR Module to Qiskit Quantum Circuit """

from qiskit.circuit.quantumcircuit import QuantumCircuit  # type: ignore
import llvmlite.binding as llvm  # type: ignore
from pyqir import (
    Context,
    Module,
)
from .elements import QirModule  # type: ignore
from .visitor import BasicQisVisitor


def to_qiskit_circuit(
    qir_bitcode: bytes,
) -> QuantumCircuit:
    """Converts the QIR Module with its entry point names to a Qiskit QuantumCircuit.

    Args:
        qir_bitcode (byte) : The QIR module as bytes.

    Returns:
        Equivalent Qiskit Quantum Circuit.
    """

    assert isinstance(qir_bitcode, bytes)

    qir_module = Module.from_bitcode(Context(), qir_bitcode, "qir2qiskit")

    assert isinstance(qir_module, Module)

    qir = llvm.parse_assembly(str(qir_module), llvm.create_context())
    qir.verify()

    pmb = llvm.create_pass_manager_builder()
    mpm = llvm.create_module_pass_manager()

    pmb.opt_level = 0
    pmb.populate(mpm)

    # unroll loops
    mpm.add_loop_unroll_pass()
    mpm.run(qir)

    unrolled_module = Module.from_ir(Context(), str(qir))

    qiskit_module = QirModule.from_qir_module(unrolled_module)
    qiskit_module.accept(BasicQisVisitor())

    return qiskit_module.circuit
