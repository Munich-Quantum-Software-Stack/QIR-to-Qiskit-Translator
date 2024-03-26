"""Function to insert an operation to QuantumCircuit"""
from qiskit.circuit.quantumcircuit import QuantumCircuit  # type: ignore
from typing import Union


def insert_operation(
    operation: str,
    circuit: QuantumCircuit,
    arg1: Union[int, float, None],
    arg2: Union[int, None],
    arg3: Union[int, None],
    classical_reg: Union[int, float, None],
    value: Union[int, float, None],
) -> QuantumCircuit:
    """Insert a new operation into QuantumCircuit

    Keyword arguments:
        operation -- the name of the operation that should be inserted (e.g. "x", "reset", "swap")
        circuit -- QuantumCircuit into which the operation should be inserted
        arg1 -- first argument of the operation
        arg2 -- second argument of the operation
        arg3 -- third argument of the operation
        classical_reg -- classical register which content is compared with value and in case of equity, the operation is applied; if operation is uncoditional should be set to "-1"
        value -- value which if found in the chosen classical register enables applying of the operation

    Returns:
        Circuit with newly inserted operation as QuantumCircuit
    """

    for arg in locals():
        raised = f"Error: wrong argument: {arg}"
        assert arg is not None, raised

    match operation:
        case 'reset':
            circuit.reset(arg1)
        case 'barrier':
            circuit.barrier()
        case 'id':
            # NOTE Bug already reported
            # circuit.id(arg1)
            pass
        case 'x':
            if classical_reg == -1:
                circuit.x(
                    arg1,
                )
            else:
                circuit.x(
                    arg1,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'y':
            if classical_reg == -1:
                circuit.y(
                    arg1,
                )
            else:
                circuit.y(
                    arg1,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'z':
            if classical_reg == -1:
                circuit.z(
                    arg1,
                )
            else:
                circuit.z(
                    arg1,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'h':
            if classical_reg == -1:
                circuit.h(
                    arg1,
                )
            else:
                circuit.h(
                    arg1,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 't':
            if classical_reg == -1:
                circuit.t(
                    arg1,
                )
            else:
                circuit.t(
                    arg1,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 's':
            if classical_reg == -1:
                circuit.s(
                    arg1,
                )
            else:
                circuit.s(
                    arg1,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 's__adj':
            if classical_reg == -1:
                circuit.sdg(
                    arg1,
                )
            else:
                circuit.sdg(
                    arg1,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 't__adj':
            if classical_reg == -1:
                circuit.tdg(
                    arg1,
                )
            else:
                circuit.tdg(
                    arg1,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'rx':
            if classical_reg == -1:
                circuit.rx(
                    arg1,
                    arg2,
                )
            else:
                circuit.rx(
                    arg1,
                    arg2,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'ry':
            if classical_reg == -1:
                circuit.ry(
                    arg1,
                    arg2,
                )
            else:
                circuit.ry(
                    arg1,
                    arg2,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'rz':
            if classical_reg == -1:
                circuit.rz(
                    arg1,
                    arg2,
                )
            else:
                circuit.rz(
                    arg1,
                    arg2,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'cz':
            if classical_reg == -1:
                circuit.cz(
                    arg1,
                    arg2,
                )
            else:
                circuit.cz(
                    arg1,
                    arg2,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'swap':
            if classical_reg == -1:
                circuit.swap(
                    arg1,
                    arg2,
                )
            else:
                circuit.swap(
                    arg1,
                    arg2,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'cnot':
            if classical_reg == -1:
                circuit.cx(
                    arg1,
                    arg2,
                )
            else:
                circuit.cx(
                    arg1,
                    arg2,
                ).c_if(
                    classical_reg,
                    value,
                )
        case 'ccx':
            if classical_reg == -1:
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
                    classical_reg,
                    value,
                )
        case 'mz' | 'm':
            if classical_reg == -1:
                circuit.measure(
                    arg1,
                    arg2,
                )
            else:
                circuit.measure(
                    arg1,
                    arg2,
                ).c_if(
                    classical_reg,
                    value,
                )
        case _:
            assert False, f"Gate not supported: {operation}"

    return circuit
