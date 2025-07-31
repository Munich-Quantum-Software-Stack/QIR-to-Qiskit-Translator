# MQSS QIR_Qiskit

This project is a software tool to convert QIR to a Qiskit QuantumCircuit object.

## Usage
The QIR_Qiskit allows users to translate `QIR Modules` to the state-of-the-art Qiskit Quantum Circuits. In this way, user can use Qiskit features as well.
For more detail, please see the detailed documentation.

```python
from mqss.qir_qiskit import to_qiskit_circuit
from pathlib import Path

bitcode = Path(bitcode_path).read_bytes()

quantum_circuit = to_qiskit_circuit(bitcode)
```


## Contributing

Feel free to open issues or submit pull requests to improve this project!
