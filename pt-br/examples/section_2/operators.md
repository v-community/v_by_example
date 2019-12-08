# Operadores

V suporta os seguintes operadores:

## Operadores básicos

- `+` (adição) para int, float e string

- `-` (subtração) para int e float

- `*` (multiplicação) para int e float

- `/` (divisão) para int e float

- `%` (módulos) para int

- `=` (atribuição) para alterar valores

- `: =` para inicializar valores

`` v
println(3+5)
println(2.0+5.0)
println('olá'+'mundo')

println(9-10)
println(7.0-5.0)

println(3 * 5)
println(2,0 * 4)

println(23/3)
println(25.0/5.0)

println(27%5)
println(27%3)
`` ``

Saída

`` v
8
7.0
Olá Mundo

-1
2.0

15
8.0

7
5.0

2
0 0
`` ``

> Nota: Ao contrário de outras linguagens, o V não permite módulo com float.

## Operadores de comparação

- `>` maior que

- `<` menor que

- `==` igual a

- `> =` maior ou igual a

- `<=` menor ou igual a

- `! =` não é igual a

## Operadores booleanos

- `&&` e

- `||` ou

- `!` não

## Operadores bit a bit

- `>>` left bitshift

- `<<` right bitshift

- `&` bitwise and

- `|` bitwise or

- `^` bitwise xor

## Operadores de atribuições

- `+ =` o mesmo que `foo = foo + var`

- `- =` o mesmo que `foo = foo - var`

- `* =` o mesmo que `foo = foo * var`

- `/ =` o mesmo que `foo = foo / var`

- `& =` o mesmo que `foo = foo & var`

- `| =` o mesmo que `foo = foo | var`

- `>> =` o mesmo que `foo = foo >> var`

- `<< =` o mesmo que `foo = foo << var`

## Operadores especiais

- `in` para associação

- 'none' para opcional
