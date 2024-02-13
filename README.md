This project is effectively just the inverse of pyqir

The parser qir2qiskit converts a QIR subset of LLVM bitcode into a Qiskit QuantumCircuit object as a library

```bash
pip install qiskit qiskit-qir llvmlite pyqir
git clone https://gitlab-int.srv.lrz.de/lrz-qct-qis/quantum_intermediate_representation/qir2qiskit.git
cd qir2qiskit
git checkout kickoff
```

```python
from qiskit                     import QuantumCircuit
from qiskit_qir                 import to_qir_module
from hpcqc.qir_qiskit.translate import to_qiskit_circuit
from hpcqc.qir_qiskit.verifier  import transpile_qiskit

old_circuit = QuantumCircuit(1, 1)

old_circuit.x(0);
old_circuit.measure(0, 0);

print(old_circuit)

transpiled_circuit = transpile_qiskit(circuit=old_circuit)
qir_module, _      = to_qir_module(transpiled_circuit, emit_barrier_calls = True)

print(qir_module)

new_circuit        = to_qiskit_circuit(qir_module.bitcode)

print(new_circuit)
```
