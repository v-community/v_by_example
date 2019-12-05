# Functions

A function is a block of organized, reusable code that is used to perform a single, related action. 
Functions provide better modularity for your application and a high degree of code reusing.

Ideally, you should consider using the [single responsibility principle](https://en.wikipedia.org/wiki/Single_responsibility_principle) (SOLID) which states that every module or function should have responsibility 
for a single part of the functionality provided by the software to keep your code maintainable.

Like C and Go, functions cannot be overloaded.

```go
fn sum(x, y int) int {
    return x + y
}

println(sum(77, 33))
```

> Note: The type comes after the argument's name.

```go
fn full_name(first_name, last_name string) string {
    return first_name + ' ' + last_name
}

println(full_name("Vitor", "Oliveira"))
```

## Variadic Functions

Functions can also be variadic i.e. accept an infinite number of arguments. 
They are not arrays and cannot be returned.

```go
fn foo(test ...string) {
    for txt in test {
        println(txt)
    }
}

foo("V", "is", "the", "best", "lang" , "ever")
```

Output

```
V
is
the
best
lang
ever
```

## Multi-Return Functions

Similar to Go, functions in V can also return multiple and with a different type.

```go
fn student(name string, age int) (string, int) {
    return name, age
}

name1, age1 := student("Tom", 15)
println(name1)
println(age1)
```

Output

```
Tom, 15
```

## High Order Functions

Functions in V can also take in another function as a parameter which is usually 
needed for something like sort, map, filter, etc.

```go
fn square(num int) int {
    return num * num
}

fn run(value int, op fn(int) int) int {
    return op(value)
}

println(run(10, square))
```

Output

```
100
```

## Exercises

1. Write a V program to find the square of any number using the function.
2. Write a V program to check a given number is even or odd using the function.
3. Write a V program to convert decimal number to binary number using the function.
4. Write a V program to check whether a number is a prime number or not using the function.
5. Write a V program to get the largest element of an array using the function.
