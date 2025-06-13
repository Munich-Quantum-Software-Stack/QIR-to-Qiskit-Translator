# Getting Started

## Installation

To install the MQSS QIR_Qiskit tool, use the following command:

```shell
pip install mqss-qir_qiskit
```

## Overview

The QIR_Qiskit allows users to translate `QIR Modules` to the state-of-the-art Qiskit Quantum Circuits. In this way, user can use Qiskit feature as well. The main components are:

- [MQSSQiskitQIRElememts](../api/mqss_qir_py_elements.md): Desribes the internal representation of the QIR elements
- [MQSSQiskitQIRRegex](../api/mqss_qir_py_regex.md): The set of auxiliary functions to parse the QIR instructions
- [MQSSQiskitQIRTranslate](../api/mqss_qir_py_translate.md): The entry point to translate QIR Module to Qiskit Quantum Circuit
- [MQSSQiskitQIRVisitor](../api/mqss_qir_py_visitor.md) : The class that helps to iterate over the QIR module

## Usage

### Import Required Modules

Import the necessary component from `MQSS QIR_Qiskit` package and auxiliary component from `pathlib`.

```python
from mqss.qir_qiskit import to_qiskit_circuit

from pathlib import Path
```

### Import the Bitcode

Import the bitcode as bytes from the file

```python
bitcode = Path(bitcode_path).read_bytes()
```

### Translate the Bitcode

Translate the Bitcode to the Qiskit Quantum Circuit

```python
quantum_circuit = to_qiskit_circuit(bitcode)
```

### Use Human-Readable QIR

To translate Human-Readable QIR to the Qiskit Quantum Circuit, first we need to create `Module` to extract bitcode, then we can translate to Qiskit Quantum Circuit.

```python
from pyqir import (
    Context,
    Module,
)

qir = Path(human_readable_qir_path).read_text()
module = Module.from_ir(Context(), qir)
bitcode = module.bitcode
quantum_circuit = to_qiskit_circuit(bitcode)
```
