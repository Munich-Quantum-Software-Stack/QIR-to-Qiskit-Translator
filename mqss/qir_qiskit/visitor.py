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

""" The class that helps to iterate over the QIR module """

from abc import ABCMeta, abstractmethod
from typing import (  # noqa: F401
    Union,
    List,
    Any,
    get_args,
)
from pyqir import (
    Function,
    Constant,
    Call,
    Value,
    FloatConstant,
    BasicBlock,
)
from .elements import (
    QirModule,
    QirBlock,
)
from .regex import (
    get_var_name,
    get_instruction_type,
    get_br_cof,
    get_br_labels,
    get_rt_operation,
    get_qis_operation,
    get_operand_arg,
)
from qiskit import QuantumCircuit


def insert_operation(
    operation: str,
    circuit: QuantumCircuit,
    arg1: Union[int, float, None],
    arg2: Union[int, None],
    arg3: Union[int, None],
    condition: Union[int, float, None],
    cofactor: Union[int, float, None],
) -> QuantumCircuit:
    """Insert an operation to the created QuantumCircuit

    Args:
        operation (str): Name of the operation.
        circuit (QuantumCircuit): The circuit that operation will be inserted.
        arg1 (Union[int, float, None]): The first argument of the QIR Instruction.
        arg2 (Union[int, None]): The second argument of the QIR Instruction.
        arg3 (Union[int, None]): The third argument of the QIR Instruction.
        condition (Union[int, float, None]): Sets when the Quantum Instruction has classical condition.
        cofactor (Union[int, float, None]): The cofactor of the classical condition.
    """
    for arg in locals():
        raised = f"Error: wrong argument: {arg}"
        assert arg is not None, raised

    match operation:
        case "reset":
            circuit.reset(arg1)
        case "barrier":
            circuit.barrier()
        case "id":
            pass
        case "x":
            if condition == -1:
                circuit.x(
                    arg1,
                )
            else:
                circuit.x(
                    arg1,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "y":
            if condition == -1:
                circuit.y(
                    arg1,
                )
            else:
                circuit.y(
                    arg1,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "z":
            if condition == -1:
                circuit.z(
                    arg1,
                )
            else:
                circuit.z(
                    arg1,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "h":
            if condition == -1:
                circuit.h(
                    arg1,
                )
            else:
                circuit.h(
                    arg1,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "t":
            if condition == -1:
                circuit.t(
                    arg1,
                )
            else:
                circuit.t(
                    arg1,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "s":
            if condition == -1:
                circuit.s(
                    arg1,
                )
            else:
                circuit.s(
                    arg1,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "s__adj":
            if condition == -1:
                circuit.sdg(
                    arg1,
                )
            else:
                circuit.sdg(
                    arg1,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "t__adj":
            if condition == -1:
                circuit.tdg(
                    arg1,
                )
            else:
                circuit.tdg(
                    arg1,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "rx":
            if condition == -1:
                circuit.rx(
                    arg1,
                    arg2,
                )
            else:
                circuit.rx(
                    arg1,
                    arg2,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "ry":
            if condition == -1:
                circuit.ry(
                    arg1,
                    arg2,
                )
            else:
                circuit.ry(
                    arg1,
                    arg2,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "rz":
            if condition == -1:
                circuit.rz(
                    arg1,
                    arg2,
                )
            else:
                circuit.rz(
                    arg1,
                    arg2,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "cz":
            if condition == -1:
                circuit.cz(
                    arg1,
                    arg2,
                )
            else:
                circuit.cz(
                    arg1,
                    arg2,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "swap":
            if condition == -1:
                circuit.swap(
                    arg1,
                    arg2,
                )
            else:
                circuit.swap(
                    arg1,
                    arg2,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "cx" | "cnot":
            if condition == -1:
                circuit.cx(
                    arg1,
                    arg2,
                )
            else:
                circuit.cx(
                    arg1,
                    arg2,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "ccx":
            if condition == -1:
                circuit.ccx(
                    arg1,
                    arg2,
                    arg3,
                )
            else:
                circuit.ccx(
                    arg1,
                    arg2,
                    arg3,
                ).c_if(
                    condition,
                    cofactor,
                )
        case "mz" | "m":
            if condition == -1:
                circuit.measure(
                    arg1,
                    arg2,
                )
            else:
                circuit.measure(
                    arg1,
                    arg2,
                ).c_if(
                    condition,
                    cofactor,
                )
        case _:
            assert False, f"Gate not supported: {operation}"

    return circuit


class QuantumCircuitElementVisitor(metaclass=ABCMeta):
    @abstractmethod
    def visit_function(self, function):
        raise NotImplementedError


class BasicQisVisitor(QuantumCircuitElementVisitor):
    def __init__(self):
        self._circuit = None
        self._num_qubits = 0
        self._cvars = {}
        self._cregi = {}
        self._qregi = {}

    def get_creg_id(
        self,
        cregk: str,
    ) -> int:
        if cregk in self._cregi:
            return self._cregi[cregk]

        cregi = max(self._cregi.values()) + 1 if self._cregi else 0

        self._cregi[cregk] = cregi

        return cregi

    def get_qreg_id(
        self,
        qregk: str,
    ) -> int:
        if qregk == "null":
            return 0
        else:
            return int(qregk)

    def visit_qir_module(
        self,
        module: QirModule,
    ):
        self._circuit = module.circuit
        self._num_qubits = module.num_qubits

    def visit_function(
        self,
        function: Function,
    ):
        qir_blocks = {}

        for i, block in enumerate(function.basic_blocks):
            if block.name == "":
                qir_blocks[function.name + "_" + str(i)] = QirBlock(block)
            else:
                qir_blocks[block.name] = QirBlock(block)

        if not qir_blocks:
            print(f"Warning: no blocks found in function '{function.name}'")
            return

        if "entry" in qir_blocks:
            block_name = "entry"
        else:
            try:
                block_name = list(qir_blocks.keys())[0]
            except Exception as error:
                assert False, f"No blocks found: {error}\n"

        self.visit_function_block(block_name, qir_blocks)

    def visit_function_block(
        self,
        block_name: Union[str, None],
        qir_blocks: dict[str, QirBlock],
    ) -> None:
        if block_name is None:
            return

        try:
            current_block = qir_blocks[block_name]
        except Exception as error:
            assert False, f"Corrupt block: {error}\n"

        assert isinstance(current_block, QirBlock)
        assert isinstance(current_block._block, BasicBlock)

        for instruction in current_block._block.instructions:
            instruction_type = get_instruction_type(instruction)

            match instruction_type:
                case "unreachable" | "phi" | "icmp" | "add":
                    assert False, "Unreachable line was reached\n"
                case "ret":
                    pass
                case "br":
                    br1, br2 = get_br_labels(instruction)

                    cof = get_br_cof(instruction)

                    if isinstance(cof, str):
                        if cof in self._cregi:
                            condition = self._cregi[cof]
                        elif cof in self._cvars:
                            condition = self._cvars[cof]
                        else:
                            raised = f"Error: wrong cofactor format: {cof}"
                            assert False, raised

                        try:
                            qir_blocks[br1].condition = condition
                            qir_blocks[br1].cofactor = 1

                            if br2 is not None:
                                qir_blocks[br2].condition = condition
                                qir_blocks[br2].cofactor = 0
                        except Exception as error:
                            raised = "Error encountered during branching"
                            assert False, f"{raised}: {error}"

                    if cof is not False:
                        self.visit_function_block(br1, qir_blocks)

                    if cof is not True:
                        self.visit_function_block(br2, qir_blocks)

                case "rt":
                    operation = get_rt_operation(instruction)

                    match operation:
                        case "initialize":
                            pass
                        case "array_record_output":
                            pass
                        case "result_record_output":
                            pass
                        case "tuple_record_output":
                            pass
                        case "qubit_allocate":
                            if len(self._qregi) == 0:
                                msb = -1
                            else:
                                msb = max(self._qregi.values())

                            var = get_var_name(instruction)
                            self._qregi[var] = msb + 1
                        case _:
                            raised = f"Operation '{operation}' not supported\n"
                            assert False, raised
                case "qis":
                    operation = get_qis_operation(instruction)
                    operands = instruction.operands
                    ops: List[Value] = []
                    arg1 = None  # type: Union[int, float, Any]
                    arg2 = arg3 = None

                    for constant in operands:
                        if not isinstance(constant, Function):
                            ops.append(constant)

                    if operation == "m":
                        operand1 = ops[0]

                        assert isinstance(operand1, Call) is True

                        var1m = get_var_name(operand1)
                        arg1 = self.get_qreg_id(var1m)

                        var1m = get_var_name(instruction)
                        arg2 = self.get_qreg_id(var1m)

                        assert isinstance(arg1, int)
                        assert isinstance(arg2, int)
                    elif len(ops) == 1:
                        operand1 = ops[0]

                        constant_call = Union[Constant, Call]
                        assert isinstance(operand1, get_args(constant_call))

                        if isinstance(operand1, Constant) is True:
                            var1 = get_operand_arg(operand1)
                        elif isinstance(operand1, Call) is True:
                            var1 = get_var_name(operand1)
                        else:
                            raised = f"Error: wrong operand format: {operand1}"
                            assert False, raised

                        assert isinstance(var1, str)

                        arg1 = self.get_qreg_id(var1)
                    elif len(ops) == 2:
                        operand1 = ops[0]
                        operand2 = ops[1]

                        if type(operand1) not in [FloatConstant, Constant]:
                            raised = f"Error: wrong operand format: {operand1}"
                            assert False, raised

                        if isinstance(operand1, Constant) is True:
                            var2 = get_operand_arg(operand1)
                            if isinstance(var2, float) is True:
                                arg1 = var2
                            else:
                                assert isinstance(var2, str)
                                arg1 = self.get_qreg_id(var2)
                        elif isinstance(operand1, Call) is True:
                            var2 = get_var_name(operand1)

                            assert isinstance(var2, str)

                            arg1 = self.get_qreg_id(var2)
                        else:
                            raised = f"Error: wrong operand format: {operand1}"
                            assert False, raised

                        if isinstance(operand2, Constant) is True:
                            var2 = get_operand_arg(operand2)
                        elif isinstance(operand2, Call) is True:
                            var2 = get_var_name(operand2)
                        else:
                            raised = f"Error: wrong operand format: {operand1}"
                            assert False, raised

                        assert isinstance(var2, str)

                        if operation == "mz":
                            arg2 = self.get_creg_id(var2)
                        else:
                            arg2 = self.get_qreg_id(var2)

                        assert type(arg1) in [int, float]
                        assert isinstance(arg2, int)
                    elif len(ops) == 3:
                        operand1 = ops[0]
                        operand2 = ops[1]
                        operand3 = ops[2]

                        if type(operand1) not in [Constant, Call]:
                            raised = f"Error: wrong operand format: {operand1}"
                            assert False, raised
                        if type(operand2) not in [Constant, Call]:
                            raised = f"Error: wrong operand format: {operand2}"
                            assert False, raised
                        if type(operand3) not in [Constant, Call]:
                            raised = f"Error: wrong operand format: {operand3}"
                            assert False, raised

                        if isinstance(operand1, Constant) is True:
                            var3 = get_operand_arg(operand1)
                        else:
                            var3 = get_var_name(operand1)

                        assert isinstance(var3, str)

                        arg1 = self.get_qreg_id(var3)

                        if isinstance(operand2, Constant) is True:
                            var3 = get_operand_arg(operand2)
                        else:
                            var3 = get_var_name(operand2)

                        assert isinstance(var3, str)

                        arg2 = self.get_qreg_id(var3)

                        if isinstance(operand3, Constant) is True:
                            var3 = get_operand_arg(operand3)
                        else:
                            var3 = get_var_name(operand3)

                        assert isinstance(var3, str)

                        arg3 = self.get_qreg_id(var3)

                        assert isinstance(arg1, int)
                        assert isinstance(arg2, int)
                        assert isinstance(arg3, int)

                    raised = f"Amount of operands not supported: {len(ops)}"
                    assert len(ops) <= 3, raised

                    if operation == "read_result":
                        raised = "Error: Amount of operands not supported"
                        assert len(ops) == 1, f"{raised}: {len(ops)}"

                        var1 = get_var_name(instruction)

                        raised = f"Error: wrong instruction: {instruction}"
                        assert isinstance(var1, str), raised

                        var2 = get_operand_arg(ops[0])

                        raised = f"Error: wrong operation: {ops[0]}"
                        assert isinstance(var2, str), raised

                        self._cregi[var1] = self.get_creg_id(var2)
                    else:
                        self._circuit = insert_operation(
                            operation,
                            self._circuit,
                            arg1,
                            arg2,
                            arg3,
                            current_block.condition,
                            current_block.cofactor,
                        )
