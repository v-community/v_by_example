---
version: 1.0.0
example_title: Operators
---

# Operators

V bietet die folgenden Operatoren:

## Grundlegende Operatoren

- `+`:

  - Arithmetik: Addition von `int`, `float`
  - `string`-Konkatenation.

- `-` Subtraktion von `int` und `float`.

- `*` Multiplikation von `int` und `float`.

- `/` Division von `int` und `float`.

- `%` Modulo-operator: Ganzzahlige Teilung mit Rest `int`.

- `=` Zuweisung eines Wertes für eine Variable.

- `:=` Deklaration und Initialisierung einer Variable.

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

> Bemerkung: Im Gegensatz zu anderen (Programmier-) Sprachen kann der `Modulo`-operator (`%`) in V nicht mit `floats` angewandt werden.

## Vergleichsoperatoren

- `>` größer als

- `<` kleiner als

- `==` gleich

- `>=` größer oder gleich

- `<=` kleiner oder gleich

- `!=` ungleich

## Boolsche Operatoren

- `&&` logisches und

- `||` logisches oder

- `!` logisches nicht

## Bitwise Operators

- `<<` bitshift links

- `>>` bitshift rechts

- `&` bitweises Und

- `|` bitweises Oder

- `^` bitweises XOR (exklusives Oder)

## Zuweisungsoperatoren

- `+=` ist äquivalent zu `foo = foo + var`

- `-=` ist äquivalent zu `foo = foo - var`

- `*=` ist äquivalent zu `foo = foo * var`

- `/=` ist äquivalent zu `foo = foo / var`

- `&=` ist äquivalent zu `foo = foo & var`

- `|=` ist äquivalent zu `foo = foo | var`

- `>>=` ist äquivalent zu `foo = foo >> var`

- `<<=` ist äquivalent zu `foo = foo << var`

## Spezielle Operatoren

- `in`: für eine Prüfung ob ein Element Teil einer Sammlung ist.

- `none`: zur Prüfung, ob ein Wert gesetzt wurde.
