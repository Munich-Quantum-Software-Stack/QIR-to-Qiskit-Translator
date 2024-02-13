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
    """Converts the QIR Module with its entry point names
    to a Qiskit QuantumCircuit"""

    assert isinstance(qir_bitcode, bytes)

    qir_module = Module.from_bitcode(Context(), qir_bitcode, "qir2qiskit")

    assert isinstance(qir_module, Module)

    qir = llvm.parse_assembly(str(qir_module), llvm.create_context())
    qir.verify()

    pmb = llvm.create_pass_manager_builder()
    mpm = llvm.create_module_pass_manager()

    # print("\nAvailable LLVM passes: [")
    # for passes in dir(mpm):
    #     if passes.startswith('add') is True:
    #         print(f"    {passes},")
    # print(']\n')

    pmb.opt_level = 0
    pmb.populate(mpm)

    # unroll loops
    mpm.add_loop_unroll_pass()
    mpm.run(qir)

    unrolled_module = Module.from_ir(Context(), str(qir))

    qiskit_module = QirModule.from_qir_module(unrolled_module)
    qiskit_module.accept(BasicQisVisitor())

    return qiskit_module.circuit
