# Array Functions

## `repeat`

Syntax

```go
array.repeat(number int)
```

Makes an array with the given element number of times.

```go
foo := [1, 2].repeat(5)
println(foo)
```

Output

```
[1, 2, 1, 2, 1, 2, 1, 2, 1, 2]
```

## `delete`

Syntax

```go
array.delete(ix int)
```

Deletes the element present in the array at index `ix`.

```go
mut even_numbers = [2, 4, 6, 8, 10]
even_numbers.delete(3)
println(even_numbers)
```

Output

```
[2, 4, 6, 10]
```

## `reverse`

Syntax

```go
array.reverse()
```

Reverses the array.

```go
float_num := [1.1, 1.3, 1.25, 1.4]
float_num.reverse()
```

Output

```
[1.4, 1.25, 1.3, 1.1]
```

## `clone`

Syntax

```go
array.clone()
```

Clones and returns a new array.

```go
foo := [1, 2, 4, 5, 4, 6]
foo1 := foo.clone()
println(foo1)
```

Output

```
[1, 2, 4, 5, 4, 6]
```
