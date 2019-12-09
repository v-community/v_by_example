# Struct

A struct is a composite data type (or record) declaration that defines a physically grouped list of variables under one name in a block of memory, allowing different variables to be accessed via a single pointer or by the struct declared name which returns the same address.

For people coming from [OOP](https://en.wikipedia.org/wiki/Object-oriented_programming) languages, it can be thought as `class` but with more restrictions.

```go
struct User {
    name string
    email string
    country string
}

fn main() {
    user := User {
        name: "V developers"
        email: "developers@vlang.io"
        country: "Canada"
    }

    println(user.country)
}
```

> Note: Structs are allocated on the stack.

You can use a comma to separate each field when creating a new instance of the struct. It's useful when you want to create a new instance on a single line.

```go
user := User { name: "V developers", email: "developers@vlang.io", country: "Canada" }
```

## The `&` prefix

You can allocate a struct on the heap and get a reference to it by using the `&` prefix as follows:

```go
user := &User{"V developers", "developers@vlang.io", "Canada"}
println(user.name)
```

The type of `user` is `&User`. It's a reference to `User`.

## Access modifiers

Struct fields are `private` and `immutable` by default. Their access modifiers can be changed with `pub` and `mut`.

```go
struct User {
    email string
}
```

You can define them as `private mutable`.

```go
struct User {
    email string
mut:
    first_name string
    last_name string
}
```

You can also define them as `public immmutable` (readonly).

```go
struct User {
    email string
mut:
    first_name string
    last_name string
pub:
    sin_number int
}
```

or as `public`, but `mutable` only in the parent module.

```go
struct User {
   email string
mut:
   first_name string
   last_name string
pub:
   sin_number int
pub mut:
   phone int
}
```

or `public` and `mutable` both inside and outside parent module.

```go
struct User {
    email string
mut:
    first_name string
    last_name string
pub:
    sin_number int
pub mut:
    phone int
pub mut mut:
    address_1 string
    address_2 string
    city string
    country string
    zip     string
}
```

## Exercises

1. Create a struct that stores and displays `User` information.
2. Create a `Point` struct that holds `x` and `y` field and guard them with private and public.
