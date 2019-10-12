# Arrays

An array is a collection of items stored at contiguous memory locations. It's an aggregate data structure that is designed to store a group of objects of the same types. It's the most efficient data structure for storing and accessing a sequence of objects.

## How to declare an array in V:

```go
mut ages := [18, 25, 37]
println(ages) // "[18, 25, 37]"
println(ages[1]) // "25"

mut names := ['Vitor', 'Don', 'Swastik']
println(names) // "['Vitor', 'Don', 'Swastik']"
println(names[0]) // "Vitor"
```

Note: All elements must have the same type. `[12345, 'V Programming Language']` will not compile.

## How to append a value to an array in V:

`<<` is an operator that appends a value to the end of the array. It can also append an entire array.

```go
mut ages := [18]
ages << 47
println(ages) // "[18, 47]"

mut ages := [18]
ages << [47, 49]
println(ages) // "[18, 47, 49]"
```

### Size of an array

`.len` method returns the length of the array.

```go
mut names := ['Thiago']

println(names.len) // "1"
```

### In operator

`in` check if an element is inside an array.

```go
mut names := ['Thiago']

println('Vitor' in names) // "false"
```

## Exercises

1. Write a V program to store elements in an array and print it
2. Write a V program to read n number of values in an array and display it in reverse order.
3. Write a V program to find the sum of all elements of the array.
4. Write a V program to copy the elements of one array into another array.
5. Write a V program to count a total number of duplicate elements in an array.
