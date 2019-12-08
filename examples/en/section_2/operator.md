# Operators

V supports the following operators:

## Basic Operators

- `+` (addition) for int, float and string

- `-` (subtraction) for int and float

- `*` (multiplication) for int and float

- `/` (division) for int and float

- `%` (modulos) for int

- `=` (assignment) for changing values

- `:=` for initialising values

```v
println(3 + 5)
println(2.0 + 5.0)
println('hello' + 'world')

println(9 - 10)
println(7.0 - 5.0)

println(3 * 5)
println(2.0 * 4)

println(23 / 3)
println(25.0 / 5.0)

println(27 % 5)
println(27 % 3)
```

Output

```v
8
7.0
hello world

-1
2.0

15
8.0

7
5.0

2
0
```

> Note: Unlike other languages, V doesn't allow modulus with float.

## Comparison Operators

- `>` greater than

- `<` lesser than

- `==` equal to

- `>=` greater than or equal to

- `<=` lesser than or equal to

- `!=` not equal to

## Boolean Operators

- `&&` and

- `||` or

- `!` not

## Bitwise Operators

- `>>` left bitshift

- `<<` right bitshift

- `&` bitwise and

- `|` bitwise or

- `^` bitwise xor

## Assignments Operators

- `+=` same as `foo = foo + var`

- `-=` same as `foo = foo - var`

- `*=` same as `foo = foo * var`

- `/=` same as `foo = foo / var`

- `&=` same as `foo = foo & var`

- `|=` same as `foo = foo | var`

- `>>=` same as `foo = foo >> var`

- `<<=` same as `foo = foo << var`

## Special Operators

- `in` for membership

- `none` for optional
