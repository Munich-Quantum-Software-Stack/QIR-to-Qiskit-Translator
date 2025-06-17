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

"""Desribes the internal representation of the QIR elements"""

from qiskit import QuantumCircuit  # type: ignore
import pyqir
from pyqir import (
    Module,
    Function,
    BasicBlock,
    required_num_qubits,
    required_num_results,
)
from abc import (
    ABCMeta,
    abstractmethod,
)
from typing import (
    Union,
    List,
)


class _QuantumCircuitElement(metaclass=ABCMeta):
    """Abstract Class defination"""

    @abstractmethod
    def accept(self, visitor):
        pass


class _Function(_QuantumCircuitElement):
    """MQSS QIR_Qiskit _Function class represents the QIR Function within the QIR_Qiskit"""

    def __init__(self, function: Function):
        self._function: Function = function

    def accept(self, visitor):
        visitor.visit_function(self._function)


class QirBlock:
    """MQSS QIR_Qiskit Qir Module class represents the QIR Modules within the QIR_Qiskit"""

    def __init__(
        self,
        block: BasicBlock,
        condition: Union[int, float, None] = None,
        cofactor: Union[int, None] = None,
    ):
        self._block = block
        self._condition = condition if condition is not None else -1
        self._cofactor = cofactor if cofactor is not None else -1

    @property
    def block(self) -> BasicBlock:
        return self._block

    @property
    def condition(self) -> Union[int, float, None]:
        return self._condition

    @condition.setter
    def condition(
        self,
        condition: Union[int, float, None] = None,
    ) -> None:
        self._condition = condition if condition is not None else -1

    @property
    def cofactor(self) -> Union[int, float, None]:
        return self._cofactor

    @cofactor.setter
    def cofactor(
        self,
        cofactor: Union[int, None] = None,
    ) -> None:
        self._cofactor = cofactor if cofactor is not None else -1


class QirModule:
    """MQSS QIR_Qiskit Qir Module class represents the QIR Modules within the QIR_Qiskit"""

    def __init__(
        self,
        name: str,
        circuit: QuantumCircuit,
        num_qubits: int,
        num_clbits: int,
        elements: List[_QuantumCircuitElement],
    ):
        self._name = name
        self._circuit = circuit
        self._num_qubits = num_qubits
        self._num_clbits = num_clbits
        self._elements = elements

    @property
    def name(self) -> str:
        """Returns the name of the QIR Module

        Returns:
            The name of the QIR Module
        """
        return self._name

    @property
    def circuit(self) -> QuantumCircuit:
        """Return the QuantumCircuit for the QIR Module

        Returns:
            The QuantumCircuit for the QIR Module
        """
        return self._circuit

    @property
    def num_qubits(self) -> int:
        """Return the amount of qubits used in the module.

        Returns:
            The amount of qubits used in the module.
        """
        return self._num_qubits

    @property
    def num_clbits(self) -> int:
        """Return the amount of classical bits used in the module.

        Returns:
            The amount of qubits used in the module.
        """
        return self._num_clbits

    @property
    def elements(self) -> List[_QuantumCircuitElement]:
        """Return the list of the elements of the module.

        Returns:
            The list of the elements of the module.
        """
        return self._elements

    @classmethod
    def from_qir_module(
        cls,
        qir_module: Module,
    ) -> "QirModule":
        """Create a new QirModule from a pyqir.Module object.

        Args:
            qir_module (pyqir.Module) : The imported QIR Modules to be converted to
                                            Qiskit Quantum Circuit.

        Returns:
            Internal representation of the QIR Module.
        """

        entry_point = next(filter(pyqir.is_entry_point, qir_module.functions))

        num_qubits = required_num_qubits(entry_point)
        num_clbits = required_num_results(entry_point)

        assert isinstance(num_qubits, int)
        assert isinstance(num_clbits, int)

        elements: List[_QuantumCircuitElement] = []

        for function in filter(pyqir.is_entry_point, qir_module.functions):
            elements.append(_Function(function))

        qiskit_circuit = QuantumCircuit(num_qubits, num_clbits)

        return cls(
            name=qir_module.source_filename,
            circuit=qiskit_circuit,
            num_qubits=num_qubits,
            num_clbits=num_clbits,
            elements=elements,
        )

    def accept(self, visitor) -> None:
        """Iterates over the module to insert Qiskit Instruction to the circuit"""

        # visit module
        visitor.visit_qir_module(self)

        # visit functions
        for element in self._elements:
            element.accept(visitor)
