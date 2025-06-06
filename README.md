This project is effectively just the inverse of pyqir.

The parser qir2qiskit converts a QIR subset of LLVM bitcode into a Qiskit QuantumCircuit object as a library.

Dependencies:
```bash
pip install qiskit qiskit-qir llvmlite pyqir
```

Example:
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


# MQSS QIRPy

This project is a software tool to convert QIR to a Qiskit QuantumCircuit object.

## Installation

To install the package, simply run

```bash
pip install mqss-qirpy
```

## Usage
The QirPy allows users to translate `QIR Modules` to the state-of-the-art Qiskit Quantum Circuits. In this way, user can use Qiskit features as well.
For more detail, please see the detailed [documentation](https://munich-quantum-software-stack.github.io/MQSS-Interfaces/qir-qiskit/index.html).

```python
from mqss.qirpy import to_qiskit_circuit
from pathlib import Path

bitcode = Path(bitcode_path).read_bytes()

quantum_circuit = to_qiskit_circuit(bitcode)
```


## Contributing

Feel free to open issues or submit pull requests to improve this project!
