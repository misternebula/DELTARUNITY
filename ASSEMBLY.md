# GameMaker Assembly Specification

### Note
This information was found by trial-and-error. Some things may be incorrect - please let me know if you find anything!

This will be covering the format of the file that UTMT produces - `.asm` files.

Lets start at the top!

## Local Variables
Local variables are listed at the top of the file. Each definition starts with `.localvar`. Then, an integer follows. This is not used in our runner, but I think it is a memory offset of some kind. After that integer is the variable name.

## Code Structure
The code is physically split into blocks with empty lines, but it is easier to ignore those and imagine the code as one long list.

Each instruction is on its own line, and instructions are executed from top to bottom. Throughout the list of instructions are _labels_, points in the code where execution flow can be jumped to. These labels are in the form `:[x]`, where `x` is either a 0-based integer, or the keyword `end`. Every script will always start with `:[0]`, and `:[end]` will always be the last line in the file.

### Instruction Structure
Instructions are in the following form :
```
OPCODE.(TYPE).(TYPE) OPERAND
```

Opcodes can be one of the following :
- PUSH, PUSHI, PUSHLOC, PUSHGLB, PUSHBLTN
- POP, POPZ
- CONV
- MUL
- DIV
- REM
- MOD
- ADD
- SUB
- AND
- OR
- XOR
- NEG
- NOT
- SHL
- SHR
- CMP
- DUP
- RET
- EXIT
- B, BT, BF
- PUSHENV
- POPENV
- CALL
- CALLV
- BREAK
- CHKINDEX

## Virtual Machine Description

The virtual machine that executes these instructions operates using two stacks, the Data Stack and the Environment Stack. (Stack meaning the normal LIFO data structure.)

The Data Stack is used as storage for other opcodes to access. For example, say you wanted to add two numbers together and store them in a variable named `RESULT`.

```asm
pushi.e 4              ; Data Stack : (top) 4
pushi.e 6              ; Data Stack : (top) 6, 4
add.i.i                ; Data Stack : (top) 10
pop.v.i self.RESULT    ; Data Stack is now empty.
```

The Environment Stack only contains Instance IDs. The top-most value on this stack is what `self` refers to. This stack is unused in simpler scripts, but is used whenever `with()` statements are used, or variables of one instance are accessed in another instance.

## Opcode Descriptions

### ADD
```
Usage : ADD.TYPE.TYPE
```

Pops the top two items off the data stack, adds them together, and pushes the result onto the stack.

This opcode is also used for string concatenation. If either type is `s`, or either type is of `v` and represents a string, the two items will be concatenated.

### SUB
```
Usage : SUB.TYPE.TYPE
```

Pops the top two items off the data stack, subtracts them, and pushes the result onto the stack. The item at the top of the stack is subtracted from the item below it.







