# Development Guide

## Project Overview

This project provides a tool to convert QIR to a Qiskit QuantumCircuit object. The main components of the project are:

-  [`elements.py`]( ../api/mqss_qir_py_elements.md): Contains descriptions for the internal representation of the QIR elements.
-  [`regex.py`]( ../api/mqss_qir_py_regex.md): Contains a set of auxiliary functions to parse the QIR instructions.
-  [`translate.py`]( ../api/mqss_qir_py_translate.md): Contains the entry point to translate QIR Module to Qiskit Quantum Circuit
-  [`visitor.py`]( ../api/mqss_qir_py_visitor.md): Contains the visitor that helps to iterate over the QIR module

## Prerequisites

Before you start developing, ensure you have the following installed:

- Python 3.10 to 3.13
- [`uv`](https://docs.astral.sh/uv/) package manager for python

## Setting Up the Development Environment

**Clone the repository:**

```sh
git clone https://github.com/Munich-Quantum-Software-Stack/QIR2Qiskit
cd QIR2Qiskit
```

**Create a virtual environment and install the dependencies:**

```sh
uv sync
```

## Running Tests

To run the tests, use `pytest`:

```sh
uv run pytest test/test.py
```

## Building Documentation

To build the documentation, follow these steps:

**Install MkDocs and the Material theme:**

```sh
uv sync
```

**Build the documentation:**

```sh
uv run mkdocs build
```

**Local deployment**

Run the following and browse the documentation locally at:
[http://localhost:8000](http://localhost:8000)

```sh
uv run mkdocs serve
```
