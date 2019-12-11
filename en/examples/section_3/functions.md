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

println(sum(77, 33)) // 110
```

> Note: The type comes after the argument's name.

```go
fn full_name(first_name, last_name string) string {
    return first_name + ' ' + last_name
}

println(full_name("Vitor", "Oliveira")) // Vitor Oliveira
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

```console
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

name, age := student("Tom", 15)
println(name1)
println(age1)
```

Output

```console
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

println(run(10, square)) // 100
```

## Naming Rules

The following are the rules which should be kept in mind while naming functions.

- Name should not contain Uppercase letters like `AlphaTest`
- Use underscores as separators like `hello_world`
- Name should not start with `_`
- Name should be descriptive as possible
- Name should not contain `__`
- Name should not contain any space

These rules are from [`Snake_Case`](https://en.wikipedia.org/wiki/Snake_case). V uses Snake Case and prefers it because it is more easy to read, write and understand.

### Valid Names

```go
fn i_am_valid()
fn thisworkstoo()
fn print_values_through_struct()
```

### Invalid Names

```go
fn IamNotValid()
fn _print()
fn print__logs()
fn new Make Lexer()
```

## Exercises

1. Write a V program to find the square of any number using the function.
2. Write a V program to check a given number is even or odd using the function.
3. Write a V program to convert decimal number to binary number using the function.
4. Write a V program to check whether a number is a prime number or not using the function.
5. Write a V program to get the largest element of an array using the function.
