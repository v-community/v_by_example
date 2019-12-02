# Methods

V does not have classes. But one can define methods for types.
A method is a function that has a special receiver argument, only a receiver of the specified type can execute this function.
The receiver has its own argument list between `fn` and the method name.

```v
struct User {
    name string
    email string
mut:
    age int
}

fn (u User) can_register() bool {
    return u.age > 15
}

fn (u mut User) has_birthday() {
    u.age += 1
}

fn main() {
    mut bob := User {
        name: 'Bob'
        email: 'bob@bob.com'
        age: 15
    }
    alice := User {
        name: 'Alice'
        email: 'alice@alice-mail.com'
        age: 17
    }
    println(bob.can_register())                                             // false
    println('Bob needs to be 16 to register, but he only is ${bob.age}.')   // Bob needs to be 16 to register, but he only is 15.
    println(alice.can_register())                                           // true
    bob.has_birthday()
    println(bob.age)                                                        // 16
}
```

This code above realizes two methods for receivers `u` of type `User`.
Note that the method `has_birthday()` has a `mut` receiver, this is needed here since we want to change its data.
The convention of V is not to use receiver names like `self`, `this` or similar things but a short, preferably one letter long, name.

## Exercises

1. Create a method for the type `Person` that determines whether a person is underage or not.
2. Create a method that determines whether an `Animal` has fur or not.
