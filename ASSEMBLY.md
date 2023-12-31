# GameMaker Assembly Specification

## Note
This information was found by trial-and-error. Some things may be incorrect - please let me know if you find anything!

This will be covering the format of the file that UTMT produces - `.asm` files.

Lets start at the top!

### Local Variables
Local variables are listed at the top of the file. Each definition starts with `.localvar`. Then, an integer follows. This is not used in our runner, but I think it is a memory offset of some kind.
After that integer is the variable name.