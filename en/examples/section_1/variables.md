---
version: 1.0.0
example_title: Variables
---

# Variables

In V variables can be declared and initialized with the `:=` operator. Variables can only be declared this way in V, this means all variables have an initial value. The type of a variable is inferred from the value on the right hand side. By default variables in V are immutable.

```go
age := 23               // int
name := 'Alice'         // string
is_adult := age > 21    // bool

println(age_str)        // 23
println(name)           // Alice
println(is_adult)       // true
```

> Note: Variables can only be defined in a function. There are no global variables and no global state in V.

To change the value of a variable, it needs to be mutable. This can be done using the `mut` keyword when declaring the variable. To assign a new value to a variable use `=`.

```go
mut age := 20       // declare the mutable variable age and assign it to the value 20.
println(age)        // 20
age = 21            // assign a new value to age
println(age)        // 21
```

Leaving out the `mut` keyword here would result in an error because the value of an immutable variable cannot be changed.

```go
fn main() {
    age = 20
    println(age)
}
```

The code above would result in an error during compilation because the variable `age` is not declared,

```go
fn main() {
    mut age := 20       // we declare the mutable variable age and assign it to the value 20.
    println(age)        // 20
    age := 21           // ERROR
}
```

here `age := 21` will result in another error while compiling because the variable `age` is already defined in the scope. It's very simple to remember, just declare value with `:=` and assign value with `=`.

Like Go, You can also use `_` for ignoring values when it is not needed. Usually used in multi return functions.

```go
_ := "I don't need this value"
println(_) // ERROR: Cannot use `_` as value
```

## Naming Rules

The following are the rules which should be kept in mind while naming variables.

- Name should not contain Uppercase letters like `AlphaTest`
- Use underscores as separators like `hello_world`
- Name should be descriptive as possible
- Name should not contain `__`
- Name should not contain any space
- If the name is longer than 11 then it must use `_` as separator

These rules are from [`Snake_Case`](https://en.wikipedia.org/wiki/Snake_case). V uses Snake Case and prefers it because it is more easy to read, write and understand.

### Valid Names

```go
boby
john_dads
myfamily_number
```

### Invalid Names

```go
IamNotValid
new Make
```

# Const 

In V variables can be declared a constant and that means non changing by adding the `const` keyword before the variable name.

```go
const my_name = "AxiomApollo"  // note we use `=` instead of `:=`
println(my_name)
const language = english
println(language)
```
>Note: const can only be defined at the module level (outside of functions)

You can declare multiple constants in one const expression

```go
const (
    pi = 3.14159
    is_reading = true
)
```

## Naming Rules

The following are the rules which should be kept in mind while naming consts.

- Name should not contain Uppercase letters like `AlphaTest`
- Use underscores as separators like `hello_world`
- Name should be descriptive as possible
- Name should not contain `__`
- Name should not contain any space
- If the name is longer than 11 then it must use `_` as separator

### Valid Names

```go
const (
    animals = ["cow","dog","lion"]
    red = 255
    long_const_name = "Use this."
)
```

### Invalid Names

```go
const (
    WRONG = false
    longconstname = "avoid this."
)
```
# Const 

In V variables can be declared a constant and that means non changing by adding the `const` keyword before the variable name.

```go
const my_name = "AxiomApollo"  // note we use `=` instead of `:=`
println(my_name)
const language = english
println(language)
```
>Note: const can only be defined at the module level (outside of functions)

You can declare multiple constants in one const expression

```go
const (
    pi = 3.14159
    is_reading = true
)
```

## Naming Rules

The following are the rules which should be kept in mind while naming consts.

- Name should not contain Uppercase letters like `AlphaTest`
- Use underscores as separators like `hello_world`
- Name should not contain `__`
- Name should not contain any space

### Valid Names

```go
const (
    animals = ["cow","dog","lion"]
    red = 255
    long_const_name = "Use this."
)
```

### Invalid Names

```go
const (
    WRONG = false
    longconstname = "avoid this."
)
```
