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

**Note:** Variables can only be defined in a function. There are no global variables and no global state in V.

In order to change the value of a variable it needs to be mutable. This can be done using the `mut` keyword when declaring the variable. To assign a new value to a variable use `=`.

```go
mut age := 20       // we declare the mutable variable age and assign it to the value 20.
println(age)        // 20
age = 21            // we assign a new value to age
println(age)        // 21
```

Leaving out the `mut` keyword here would result in an error, because the value of an immutable variable cannot be changed.

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

here `age := 21` will result in another error while compiling, because the variable `age` is already defined in the scope.

Declare operator: `:=`
Assign operator: `=`

## Rules

The following are the rules which should be kept in mind while naming variables.

-Name should not contain Uppercase letters like `Alphatest`
-Use underscores as separators like `hello_world`
-Name should be descriptive as possible
-Name should not contain `__`
-Name should not contain any space
-If the name is longer than 11 then it must use `_` as separator

These rules are from [`Snake_Case`](https://en.wikipedia.org/wiki/Snake_case). V uses Snake Case because it is often more easy to read, write and understand.

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
