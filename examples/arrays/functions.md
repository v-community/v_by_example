# Array Functions

## `repeat`

Syntax

```v
array.repeat(number int)
```

Makes an array with the given element number of times.

```v
foo := [1, 2].repeat(5)
println(foo)
```

Output

```v
[1, 2, 1, 2, 1, 2, 1, 2, 1, 2]
```

## `delete`

Syntax

```v
array.delete(ix int)
```

Deletes the element present in the array at index `ix`.

```v
mut even_numbers = [2, 4, 6, 8, 10]
even_numbers.delete(3)
println(even_numbers)
```

Output

```v
[2, 4, 6, 10]
```

## `reverse`

Syntax

```v
array.reverse()
```

Reverses the array.

```v
float_num := [1.1, 1.3, 1.25, 1.4]
float_num.reverse()
```

Output

```v
[1.4, 1.25, 1.3, 1.1]
```

## `clone`

Syntax

```v
array.clone()
```

Clones and returns a new array.

```v
foo := [1, 2, 4, 5, 4, 6]
foo1 := foo.clone()
println(foo1)
```

Output

```v
[1, 2, 4, 5, 4, 6]
```
