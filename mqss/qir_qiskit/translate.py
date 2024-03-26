"""Function translating QIR module to a Qiskit QuantumCircuit"""
from qiskit.circuit.quantumcircuit import QuantumCircuit  # type: ignore
import llvmlite.binding as llvm  # type: ignore
from pyqir import (
    Context,
    Module,
)
from hpcqc.qir_qiskit.elements import QirModule  # type: ignore
from hpcqc.qir_qiskit.visitor import BasicQisVisitor


def to_qiskit_circuit(
    qir_bitcode: bytes,
) -> QuantumCircuit:
    """Convert the QIR Module with its entry point names
    to a Qiskit QuantumCircuit
    
    Keyword arguments:
        qir_bitcode -- QIR module in the form of bytes

    Returns:
        Qiskit QuantumCircuit to which QIR module was translated"""

    assert isinstance(qir_bitcode, bytes)

    qir_module = Module.from_bitcode(Context(), qir_bitcode, "qir2qiskit")

    assert isinstance(qir_module, Module)

    qir = llvm.parse_assembly(str(qir_module), llvm.create_context())
    qir.verify()

    pass_manager_builder = llvm.create_pass_manager_builder()
    module_pass_manager = llvm.create_module_pass_manager()

    pass_manager_builder.opt_level = 0
    pass_manager_builder.populate(module_pass_manager)

    # unroll loops
    module_pass_manager.add_loop_unroll_pass()
    module_pass_manager.run(qir)

    unrolled_module = Module.from_ir(Context(), str(qir))

    qiskit_module = QirModule.from_qir_module(unrolled_module)
    qiskit_module.accept(BasicQisVisitor())

    return qiskit_module.circuit
