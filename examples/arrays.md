# Arrays

An array is a collection of items stored in contiguous memory locations. It's an aggregate data structure that is designed to store a group of objects of the same type. It's the most efficient data structure for storing and accessing a sequence of objects.

## How to declare an array

**Create an array that holds integer values:**

```go
mut ages := [18, 25, 37]

println(ages)
```

Output

```
[18, 25, 37]
```

**Or create an array that holds string values:**

```go
mut users := ['vbrazo', 'donnisnoni95', 'Delta456']

println(users)
```

Output

```
['vbrazo', 'donnisnoni95', 'Delta456']
```

> Note: All elements must have the same type. The following code will not compile.

```go
mut users := ['vbrazo', 'donnisnoni95', 'Delta456', 0]
```

Output

```
~/main.v:2:43: bad array element type `int` instead of `string`
```

## Create an empty array

If you want to create a new empty array, just declare `[]` followed by the data type.

```go
mut names := []string
mut numbers := []int
```

## Accessing element of the array

```go
mut users := ['vbrazo', 'donnisnoni95', 'Delta456']

println(users[0])
println(users[2])
println(users[1])
```

Output

```go
vbrazo
Delta456
donnisnoni95
```

## Append a value to an array

`<<` is an operator that appends a value to the end of the array.

```go
mut ages := [18]
ages << 47

println(ages)
```

Output

```go
[18, 47]
```

It can also append an entire array.

```go
mut ages := [18]
ages << [47, 49]

println(ages)
```

Output

```
[18, 47, 49]
```

## Length/size of an array

`.len` method returns the length of the array.

```go
mut names := ['Thiago', 'John']

println(names.len)
```

Output

```
2
```

## In operator

`in` check if an element is inside an array.

```go
mut names := ['Thiago', 'Alex', 'Joe']

println('Vitor' in names)
println('Thiago' in names)
```

Output

```
false
true
```

## Slicing an array

It's easy to slice an array in V. You can slice an array with the default 
V slicing feature without having to call the `slice ()` method.
The syntax is like this `my_array[start..end]`

```go
animals := ['lion', 'goose', 'chicken', 'turkey', 'tiger']
poultry := animals[1..4]
println(poultry) // ["goose", "chicken", "turkey"]
```

If you want to slice from the start of the index, just ignore it to put `0` and using  instead `my_array[..end]` or `my_array[start..]`.

```go
x := ['h', 'e', 'l', 'l', 'o']
y := x[..x.len-1]
z := x[1..]
println(y) // ['h', 'e', 'l', 'l']
println(z) // ['e', 'l', 'l', '0']
```

## Exercises

1. Write a V program to store elements in an array and print it.
2. Write a V program to read n number of values in an array and display it in reverse order.
3. Write a V program to find the sum of all elements of the array.
4. Write a V program to copy the elements of one array into another array.
5. Write a V program to count a total number of duplicate elements in an array.
