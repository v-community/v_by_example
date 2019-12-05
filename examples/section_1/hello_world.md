# Formatted Print

Printing is handled by various I/O stream functions. One should know where to use them accordingly.

- `print`: for printing the text to the output stream without a newline.

- `println`: same as `print` but newline appended automatically.

- `eprint`: same as `print` but the output goes to error stream (stderr).

- `eprintln`: same as `println` but the output goes to error stream (stderr).

- `panic`: outputs and exits from the program.

```v
print('Hello World')
print('Hello V')
```

This will print `Hello WorldHello V`

If you want to print the next line on a new line you would have to do `\n`.

```v
print('Hello World \n')
print('Hello V ')
```

If you don't want to use `\n` then you can use `println` instead.

## Comments

V supports single line comments `//` and multi-line comments `/* */`. 
They should be used for documenting the code for letting the other users know how the code works. 
It can also be used for temporarily commenting the code which has to be used later on.

```v
// This is a single line comment

/* This is a
*  multi-line comment
* /* This could be nested as well*/
*/
```

## Exercises

Try uncommenting the code in `hello.v` and see what happens.
