from qiskit.circuit.quantumcircuit import QuantumCircuit  # type: ignore
from typing import Union


def insert_operation(
    operation: str,
    circuit: QuantumCircuit,
    arg1: Union[int, float, None],
    arg2: Union[int, None],
    arg3: Union[int, None],
    condition: Union[int, float, None],
    cofactor: Union[int, float, None],
) -> QuantumCircuit:
    for arg in locals():
        raised = f"Error: wrong argument: {arg}"
        assert arg is not None, raised

    match operation:
        case "reset":
            circuit.reset(arg1)
        case "barrier":
            circuit.barrier()
        case "id":
            # NOTE Bug already reported
            # circuit.id(arg1)
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
