"""Functions extracting information from QIR operations using regex"""
from typing import (
    Union,
    Tuple,
)
from pyqir import (
    Instruction,
    Opcode,
    Value,
)
import re
import binascii
import struct


def get_variable_name(instruction: Value) -> str:
    """Get name of a variable

    Keyword arguments:
        instruction -- QIR instruction from which name of the variable will be extracted

    Returns:
        The name of a variable as string
    """
    codestring = str(instruction)

    try:
        pattern_left = r'(\%.+?)='
        op_left = re.search(pattern_left, codestring)
        assert op_left is not None
    except AttributeError as error:
        assert False, f"{error}: wrong string format"
    else:
        left = op_left.group(1).strip()
        return left

    assert False, f"Error: wrong instruction format: {instruction}"


def get_instruction_type(instruction: Instruction) -> str:
    """Get name of a variable

    Keyword arguments:
        instruction -- QIR instruction from which name of the variable will be extracted

    Returns:
        The name of a variable as string
    """
    codestring = str(instruction).strip()

    if instruction.opcode == Opcode.UNREACHABLE:
        return 'unreachable'

    if instruction.opcode == Opcode.RET:
        return 'ret'

    if instruction.opcode == Opcode.BR:
        return 'br'

    if instruction.opcode == Opcode.PHI:
        return 'phi'

    if instruction.opcode == Opcode.ICMP:
        return 'icmp'

    if instruction.opcode == Opcode.ADD:
        return 'add'

    if instruction.opcode == Opcode.CALL:
        if codestring.find('@__quantum__rt__') >= 0:
            return 'rt'

        if codestring.find('@__quantum__qis__') >= 0:
            return 'qis'

    assert False, f"Error: wrong instruction format: {instruction}"


def get_br_cofactor(instruction: Instruction) -> Union[str, bool, None]:
    """Get cofactor of branch instruction

    Keyword arguments:
        instruction -- QIR branch instruction from which cofactor will be extracted

    Returns:
        Cofactor as string, as bool or None 
    """
    codestring = str(instruction)

    patterns = [r'br i1 (.+?),', r'br i1 (.+?)$']

    for pattern in patterns:
        op = re.search(pattern, codestring)

        if op is not None:
            cofactor = op.group(1).replace(' ', '')

            if cofactor == "false":
                return False

            if cofactor == "true":
                return True

            return cofactor

    return None


def get_br_labels(instruction: Instruction) -> Tuple[str, str | None]:
    """Get labels from branch instruction

    Keyword arguments:
        instruction -- QIR branch instruction from which labels will be extracted

    Returns:
        Tuple of labels if found, otherwise None
    """
    codestring = str(instruction)

    try:
        pattern = re.compile(r'label \%(.*),|label \%(.*)$')
        labels = ["".join(x) for x in re.findall(pattern, codestring)]
        assert len(labels) == 1 or len(labels) == 2
    except AttributeError as error:
        print(f"{error}: wrong string format")
    else:
        return labels[0], labels[1] if len(labels) == 2 else None

    assert False, f"Error: wrong instruction format: {instruction}"


def get_rt_operation(instruction: Instruction) -> str:
    """Get runtime operation

    Keyword arguments:
        instruction -- QIR runtime instruction which name will be extracted

    Returns:
        Runtime operation name as string
    """
    codestring = str(instruction)

    try:
        pattern = r'__quantum__rt__(.+?)\('
        op = re.search(pattern, codestring)
        assert op is not None
    except AttributeError as error:
        print(f"{error}: wrong string format")
    else:
        return op.group(1)

    assert False, f"Error: wrong instruction format: {instruction}"


def get_qis_operation(instruction: Instruction) -> str:
    """Get QIS operation from instruction

    Keyword arguments:
        instruction -- QIR QIS instruction which name will be extracted

    Returns:
        QIS operation as string
    """
    codestring = str(instruction)

    try:
        if codestring.find('body') >= 0:
            pattern = r'__quantum__qis__(.+?)__body\('
            op = re.search(pattern, codestring)
        elif codestring.find('adj') >= 0:
            pattern = r'__quantum__qis__(.+?)\('
            op = re.search(pattern, codestring)
        assert op is not None
    except AttributeError as error:
        print(f"{error}: wrong string format")
    else:
        return op.group(1)

    assert False, f"Error: wrong instruction format: {instruction}"


def get_operand_arg(operand: Value) -> Union[str, float]:
    """Get argument of the operand

    Keyword arguments:
        operand -- QIR operand which argument will be extracted

    Returns:
        Operand argument as string or float
    """
    opstring = str(operand).strip()

    if opstring == '%Qubit* null':
        return 'null'

    if opstring == '%Result* null':
        return 'null'

    if opstring.find('double') >= 0:
        try:
            arg = re.search('double (.+)$', opstring)
            assert arg is not None
        except AttributeError as error:
            print(f"{error}: wrong string format")
        else:
            theta = arg.group(1).strip()

            if theta.startswith('0x') is True:
                hextheta = binascii.unhexlify(theta.lstrip('0x'))

                return struct.unpack('>d', hextheta)[0]

            return float(theta)

    if opstring.find('Qubit') >= 0:
        if opstring.find('inttoptr') >= 0:
            try:
                pattern = r'\%Qubit\* inttoptr \(i64 (.+?) to \%Qubit\*\)'
                arg = re.search(pattern, opstring)
                raised = f"Error: wrong opstring format: {opstring}"
                assert arg is not None, raised
            except AttributeError as error:
                print(f"{error}: wrong string format")
            else:
                return arg.group(1).strip()
        elif opstring.find(r'\%Qubit\* \%') >= 0:
            try:
                pattern = r'\%Qubit\* (\%.+?)$'
                arg = re.search(pattern, opstring)
                raised = f"Error: wrong opstring format: {opstring}"
                assert arg is not None, raised
            except AttributeError as error:
                print(f"{error}: wrong string format")
            else:
                return arg.group(1).strip()
        else:
            try:
                pattern = r'\%Qubit\* (.+?)$'
                arg = re.search(pattern, opstring)
                raised = f"Error: wrong opstring format: {opstring}"
                str(operand).strip()
                assert arg is not None, raised
            except AttributeError as error:
                print(f"{error}: wrong string format")
            else:
                return arg.group(1).strip()

    if opstring.find('Result') >= 0:
        if opstring.find('inttoptr') >= 0:
            try:
                pattern = r'\%Result\* inttoptr \(i64 (.+?) to \%Result\*\)'
                arg = re.search(pattern, opstring)
                raised = f"Error: wrong opstring format: {opstring}"
                assert arg is not None, raised
            except AttributeError as error:
                print(f"{error}: wrong string format")
            else:
                return arg.group(1).strip()
        elif opstring.find(r'\%Result\* \%') >= 0:
            try:
                pattern = r'\%Result\* (\%.+?)$'
                arg = re.search(pattern, opstring)
                raised = f"Error: wrong opstring format: {opstring}"
                assert arg is not None, raised
            except AttributeError as error:
                print(f"{error}: wrong string format")
            else:
                return arg.group(1).strip()
        else:
            try:
                pattern = r'\%Result\* (.+?)$'
                arg = re.search(pattern, opstring)
                raised = f"Error: wrong opstring format: {opstring}"
                assert arg is not None, raised
            except AttributeError as error:
                print(f"{error}: wrong string format")
            else:
                return arg.group(1).strip()

    assert False, f"Error: wrong operand format: {operand}"
