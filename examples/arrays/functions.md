# Array Functions

## `repeat`

Syntax

```go
Type[element].repeat(number int)
```

Makes an array with the given element number of times.

```go
foo := int[1].repeat(7)
println(foo)
```

Output

```go
[1, 1, 1, 1, 1, 1, 1]
```

## insert

Syntax

```go
array.insert(num int, data T)
```

Inserts the data at a given position and shifts the elements in the array.

```go
names := ['Samuel', 'John', 'Peter']
names.insert(2,'Tom')
println(names)
```

Output

```go
['Samuel', 'John', 'Tom', 'Peter']
```

## `delete`

Syntax

```go
array.delete(element T)
```

Deletes the element present in the array.

```go
even_numbers = [2, 4, 6, 8, 10]
even_numbers.delete(8)
println(even_number)
```

Output

```go
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

```go
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

```go
[1, 2, 4, 5, 4, 6]
```
